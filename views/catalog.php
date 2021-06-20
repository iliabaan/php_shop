<h2>Каталог</h2>
<?php foreach ($catalog as $item):?>
    <h3><a href="/?c=products&a=card&id=<?=$item['id']?>"><?=$item['title']?></a></h3>
    <p><?=$item['description']?></p>
    <p><?=$item['price']?></p>
    <button onclick="addToCart(<?=$item['id']?>)">Купить</button>
    <hr>
<?php endforeach;?>

<a href="/?c=product&a=catalog&page=<?=$page?>">Далее</a>
