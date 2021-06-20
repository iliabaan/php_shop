<div>
    <h3><?=$good['title']?></h3>
    <p>Описание: <?=$good['description']?></p>
    <p>Стоимость: $<?=$good['price']?></p>
    <button onclick="addToCart(<?=$good['id']?>)">Купить</button>
    </div>