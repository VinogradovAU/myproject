        "use strict";

        //Объект для продукта
        class prod {
            constructor(ProdName, Image_src, ProdText, ItemId, Item_Price) {
                this.ProdName = ProdName;
                this.Image_src = Image_src;
                this.ProdText = ProdText;
                this.ItemId = ItemId;
                this.Item_Price = Item_Price;
            }
        }

        //Объект для карзины
        class cart {
            constructor(ProdName, ItemId, Item_Price, cols, col_summ) {
                this.ProdName = ProdName,
                    this.ItemId = ItemId,
                    this.Item_Price = Item_Price,
                    this.cols = cols,
                    this.col_summ = this.Item_Price * this.cols
            }
        }

        //Заполняем товарами
        const products = [
            new prod("Холодильник", "https://brain.com.ua/static/images/prod_img/8/6/U0111486_3big.jpg", "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus, quisquam.", 234, 100),
            new prod("Телефонный аппарат", "https://sc02.alicdn.com/kf/HTB1q1SZXdfvK1RjSspfq6zzXFXa5.jpg", "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum illum natus, laborum.", 235, 250),
            new prod("Телевизор", "https://img-new.cgtrader.com/items/851306/cdae3e80b0/cartoon-tv-3d-model-obj-3ds-fbx-c4d-dxf-dae.jpg", "Lorem ipsum dolor sit amet, consectetur.", 236, 850)

        ]

        const mass_cart = []; //массив для карзины
        const mass_prod = []; //массив для  продуктов

        //Формируем HTML вывод товаров на страницу
        for (let pp of products) {

            let target = `
            <div class="product">
            <div class="productName">${pp.ProdName}</div>
            <div class="desc"><p>${pp.ProdText}<p></div>
            <div class="img_1"><img src="${pp.Image_src}" width="190" height="200" alt="lorem"></div>
            <button id=but_${pp.ItemId}>Подробнее</button>
            <div class="ItemPrice">${pp.Item_Price} р.</div>
            <button id=cart_${pp.ItemId}>В корзину</button>

        </div>`;



            console.log(pp); //для теста
            mass_prod.push(target); //грузим каждый товар в массив для товаров (типа БД)

        };

        //вывод данных корзины. функция читает масиив mass_cart и формирует html вставку
        function cart_activate() {
            if (mass_cart.length > 0) {
                let cart_html = "<table>";
                let all_sum = 0;
                for (let x = 0; x < mass_cart.length; x++) {
                    cart_html = cart_html + `<tr><td> id ${mass_cart[x].ItemId} ${mass_cart[x].ProdName}, цена.р.
                    ${mass_cart[x].Item_Price}, кол-во:
                    ${mass_cart[x].cols}, сумма: 
                    ${mass_cart[x].col_summ}</td></tr>`;
                    all_sum += mass_cart[x].col_summ;
                }
                cart_html = cart_html + `<tr><td>          Всего: ${all_sum} руб.</td></tr></table>`;
                cart_html = cart_html + `<button class="cart_clear">Очистить корзину</button>`;
                bt_cart_content.innerHTML = '';
                bt_cart_content.insertAdjacentHTML("afterbegin", cart_html);
                let bt_cart_clear = document.querySelector(".cart_clear"); // Кнопка очистить корзину
                bt_cart_clear.addEventListener('click', function (e) { //обработчик кнопки очистки корзины
                    mass_cart.length = 0; // очищаем массив 
                    cart_activate(); //перезагружаем корзину
                });

            } else {
                let cart_html = `<p>Корзина пустая</p>`;
                bt_cart.innerText = `Корзина (${0})`;
                bt_cart_content.innerHTML = '';
                bt_cart_content.insertAdjacentHTML("afterbegin", cart_html);
            }



        };

        let cont_1 = document.getElementsByClassName('container'); //контейнер с товарами
        let bt_cart = document.querySelector(".bt_cart"); //кнопка "Корзина"
        let bt_cart_content = document.querySelector(".bt_cart_content"); //внутри корзины


        bt_cart_content.style.display = "none"; //выключил окно корзины


        bt_cart.addEventListener('click', function (event) { //обработка кнопки "корзина" включи/выключи....
            let tar = event.target;
            if (bt_cart_content.style.display == "none") {
                cart_activate(); //вывод данных корзины
                bt_cart_content.style.display = "block";

            } else {
                bt_cart_content.style.display = "none"; //выключил окно корзины
            }
        });


        for (let pp of mass_prod) {

            cont_1[0].insertAdjacentHTML("afterbegin", pp); //вывод товаров на страницу
        };

        //обработка кнопки "в корзину"
        //обработка кнопки "подробнее"
        cont_1[0].addEventListener('click', function (event) {
            let target = event.target;
            if (target.tagName == 'BUTTON' && target.id[0] == "b") {
                bt_cart_content.style.display = "none"; //выключил окно корзины
                console.log(target);
                console.log(target.previousElementSibling);
                if (target.innerText == "Подробнее") {
                    target.previousElementSibling.style.display = 'none';
                    target.innerText = "Отмена";
                    target.previousElementSibling.previousElementSibling.style.display = 'block';
                } else {
                    if (target.innerText == "Отмена") {
                        console.log(target.previousElementSibling);
                        console.log(target.previousElementSibling.style.display);
                        target.previousElementSibling.style.display = 'block';
                        target.innerText = "Подробнее";
                        target.previousElementSibling.previousElementSibling.style.display = 'none';
                    }
                };


            } else {
                if (target.id[0] == "c") { //кнопка "в корзину"
                    bt_cart_content.style.display = "none"; //выключил окно корзины
                    console.log("Добавили в карзину товар с id: " + target.id); //для проверок

                    for (let a = 0; a < products.length; a++) {
                        if (products[a].ItemId == +(target.id).split("_")[1]) { //определяем id товара по кнопки

                            console.log(mass_cart_obj(products[a])); //загрузка товара в корзину
                        }
                    }

                }
            };


            //загрузка товара в корзину
            function mass_cart_obj(obj) {
                /*если в корзине есть добавляемый товар, то увеличиваем его количество на 1
                 * если нет товара то создаем новую запись в корзине
                 */
                if (mass_cart.length > 0) {
                    for (let j = 0; j < mass_cart.length; j++) {

                        if (mass_cart[j].ItemId == obj.ItemId) {
                            mass_cart[j].cols += 1
                            mass_cart[j].col_summ = mass_cart[j].cols * mass_cart[j].Item_Price;
                            return mass_cart;
                        }
                    }

                }
                mass_cart.push(new cart(obj.ProdName,
                    obj.ItemId,
                    obj.Item_Price,
                    1,
                    obj.Item_Price));
                bt_cart.innerText = `Корзина (${mass_cart.length})`; //обновляем текст на кнопке Корзина

                return mass_cart;

            };




        })
