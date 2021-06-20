<div>
    <?php if (!$cart) :?>
    Корзина пуста!
    <? endif; ?>
    <?php foreach ($cart as $key):?>
    <div>
        <h3><?=$key['title']?></h3>
        <p>Цена: $<?=$key['price']?></p>
        <p>Количество: <span class="id" id="<?=$key['id']?>"><?=$key['quantity']?></span></p>
    <button onclick="deleteFromCart(<?=$key['id']?>)">Удалить</button>
    </div>
    <?php endforeach;?>
</div>