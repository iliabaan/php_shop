let quantityDisplays = document.querySelectorAll('.quantity');
let buttonsBuy = document.querySelectorAll('.buy');
let buttonsDelete = document.querySelectorAll('.delete');
let buttonNewOrder = document.querySelector('#button__order');
let buttonsChangeStatus = document.querySelectorAll('#change_status');
let order = document.forms.order;
let statuses = document.querySelectorAll('.statuses');


buttonsBuy.forEach((elem) => {
    elem.addEventListener('click', () => {
        let id = elem.getAttribute('data-id');
        (
            async () => {
                const response = await fetch('/api/addtobasket/', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json;charset=utf-8'
                    },
                    body: JSON.stringify({
                        id: id
                    })
                });
                const answer = await response.json();
                document.getElementById('allCount').innerText = answer.all_count;
            }
        )();
    })
});

buttonsDelete.forEach((elem) => {
    elem.addEventListener('click', () => {
        let id = elem.getAttribute('data-id');
        (
            async () => {
                const response = await fetch('/api/deletefrombasket/', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json;charset=utf-8'
                    },
                    body: JSON.stringify({
                        id: id
                    })
                });
                const answer = await response.json();
                document.getElementById('allCount').innerText = answer.all_count;

                quantityDisplays.forEach((elem) => {
                    if (elem.getAttribute('data-id') === id) {
                        if (answer.product_quantity >= 1) {
                            elem.innerText = answer.product_quantity;
                        } else elem.parentElement.parentElement.innerHTML = '';
                    }
                })
            }
        )();
    })
});

buttonsChangeStatus.forEach((elem) => {
    elem.addEventListener('click', () => {
        let id = elem.getAttribute('data-id');
        let status = elem.parentElement.childNodes[1].value;
        (
          async () => {
              const response = await fetch('api/changestatus/', {
                  method: 'POST',
                  headers: {
                      'Content-Type': 'application/json;charset=utf-8'
                  },
                  body: JSON.stringify({
                      id: id,
                      status: status,
                  })
              });
          }
        )();
        let statusChanged = document.querySelectorAll('.status_change');
        statusChanged.forEach((el) => {
            if (el.getAttribute('data-status_id') === id) {
                el.innerHTML = '<img src="media/35.gif" alt="loader" style="height: 20px; width: 20px;">';
                setTimeout(() => el.innerHTML = "Статус изменен!", 1000);
            }
        })
    })
});

if (buttonNewOrder) {
    buttonNewOrder.addEventListener('click', () => {
        (
            async () => {
                const response = await fetch('api/neworder', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json;charset=utf-8'
                    },
                    body: JSON.stringify({
                        tel: order.order_tel.value,
                    })
                });
                const answer = await response.json();
                if (answer.success === true) {
                    console.log('Заказ оформлен!');
                    document.getElementById('allCount').innerText = answer.all_count;
                    document.querySelector('.cart').innerHTML = '<div class="success_order" style="text-align: center;">\n' +
                        '<h2>Заказ успешно оформлен! Узнать статус заказа можно во вкладке <a href="/orders">Заказы.</a></h2>\n' +
                        '</div>';
                }
            }
        )()
    })
}

