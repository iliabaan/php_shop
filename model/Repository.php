<?php


namespace app\model;

use app\engine\{App, Db};

//TODO add App
use app\interfaces\IModel;


abstract class Repository implements IModel
{
    public static function prepareString($params): string
    {
        $values = '';
        foreach ($params as $key => $value) {
            if (array_key_last($params) == $key) {
                $values .= $key . ' = ' . '\'' . $value . '\'';
            } else {
                $values .= $key . ' = ' . '\'' . $value . '\'' . ' AND ';
            }
        }
        return $values;
    }

    public function getOne($id) {
        $tableName = $this->getTableName();
        $sql = "SELECT * FROM {$tableName} WHERE id = :id";
        return App::call()->db->queryOne($sql, ['id' => $id]);
    }

    public function getOneWhere($id, $type) {
        $tableName = $this->getTableName();
        $sql = "SELECT * FROM {$tableName} WHERE $type = :id";
        return Db::getInstance()->queryOne($sql, ['id' => $id]);
    }

    public function getOneObject($params) {
        $values = static::prepareString($params);
        $tableName = $this->getTableName();
            $sql = "SELECT * FROM {$tableName} WHERE $values";
            return App::call()->db->queryOneObject($sql, $params, $this->getEntityClass());
    }

    public function getAll() {
        $tableName = $this->getTableName();
        $sql = "SELECT * FROM {$tableName}";
        return App::call()->db->queryAll($sql);
    }

    public function getAllById($params = []) {
        $values = static::prepareString($params);
        $tableName = $this->getTableName();
        $sql = "SELECT * FROM {$tableName} WHERE $values";
        return App::call()->db->queryAll($sql, $params);
    }

    public function getCountWhere($params = []) {
        $values = static::prepareString($params);
        $tableName = $this->getTableName();
        $sql = "SELECT count(id) as count FROM {$tableName} WHERE $values";
        return App::call()->db->queryOne($sql, $params)['count'];
    }

    public function insert(Model $entity) {
        $params = [];
        $tableName = $this->getTableName();
        $columns = [];

        foreach ($entity->props as $key => $value) {
            if (!$value) continue;
            $params[":{$key}"] = $entity->$key;
            $columns[] = "`$key`";
        }
        $columns = implode(", ", $columns);
        $values = implode(", ", array_keys($params));
        $sql = "INSERT INTO {$tableName} ($columns) VALUES ($values)";
        App::call()->db->execute($sql, $params);
        $entity->id = App::call()->db->getLastInsertId();
        return $this;
    }

    public function update(Model $entity) {
        $params = [];
        $columns = [];
        $tableName = $this->getTableName();

        foreach ($entity->props as $key => $value) {
            if (!$value) continue;
            $params[":{$key}"] = $entity->$key;
            $columns[] .= "`{$key}` = :{$key}";
            $entity->props[$key] = false;
        }
        $columns = implode(", ", $columns);
        $params['id'] = $entity->id;
        $sql = "UPDATE `{$tableName}` SET {$columns} WHERE `id` = :id";
        //TODO сбросить props в исходное если изменение произойдет
        App::call()->db->execute($sql, $params);
        return $this;
    }

    public function delete() {
        $tableName = $this->getTableName();
        $sql = "DELETE FROM {$tableName} WHERE id = :id";
        Db::getInstance()->execute($sql, ['id' => $this->id]);
        return true;
    }

    public function deleteWhere($params = []) {
        $values = static::prepareString($params);
        $tableName = $this->getTableName();
        $sql = "DELETE FROM {$tableName} WHERE $values LIMIT 1";
        App::call()->db->execute($sql, $params);
    }

    public function save(Model $entity) {
        if (is_null($entity->id)) {
            $this->insert($entity);
        } else {
            $this->update($entity);
        }
    }

    abstract protected function getEntityClass();
    abstract protected function getTableName();
}