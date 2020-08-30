"use strict";


let sli = document.querySelector('.sli-center');
let sp = document.querySelector('#sp');
let sli_item = document.querySelectorAll('.sli-item');

let bt_l = document.querySelector('.bt-left');
let bt_r = document.querySelector('.bt-right');


//обработка нажатия на левую кнопку
bt_l.onclick = function () {
    sp.textContent = 'Click LEFT';
    for (let k = 0; k < mass.length; k++) {
        if (mass[k] == 1) {
            if (k != 0) {
                sli_start.on_off_opacity(k - 1, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена не первая в массиве или classList картинка
                break;
            } else {
                sli_start.on_off_opacity(mass.length - 1, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена первая в массиве или classList картинка
                break;
            }
        }
    }
}

//обработка нажатия на правую кнопку
bt_r.onclick = function () {
    sp.textContent = 'Click RIGHT';
    console.log(mass);
    //ищем номер включенной картинки
    for (let k = 0; k < mass.length; k++) {
        if (mass[k] == 1) {
            if (k != mass.length - 1) {
                sli_start.on_off_opacity(k + 1, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена не последняя в массиве или classList картинка
                break;
            } else {
                sli_start.on_off_opacity(0, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена последняя в массиве или classList картинка
                break;
            }
        }
    }
}

//берем слайдер и считаем сколько в нем картинок
let sli_i = document.querySelectorAll('.sli-item');
let count = sli_item.length;
sp.textContent = 'Всего картинок слайдере: ' + count;

let mass = []; //массив для хранения состояния картинок (отображаетмся или нет) 1 - отображается, 0 - нет. (удаление класса hidden-sli)
for (let i = 0; i < count; i++) {
    mass[i] = 0;
}

//после загрузки страницы вызывается init для включения отображения
//одной картинки (запуск слайдера)
let sli_start = {

    //Метод переключает картинки удалением/добавлением класса hidden-sli
    //    on_off_pic(num_on, num_off) {
    //        sli_i[num_off].classList.add("hidden-sli");
    //        sli_i[num_on].classList.remove("hidden-sli");
    //
    //        mass[num_on] = 1;
    //        mass[num_off] = 0;
    //    },

    sleep(milliseconds) {
        const date = Date.now();
        let currentDate = null;
        do {
            currentDate = Date.now();
        } while (currentDate - date < milliseconds);
    },

    //метод переключает картинки меняя прозрачность картинок 
    on_off_opacity(num_on, num_off) {

        while (true) {

            sli_i[num_off].children[0].style.opacity = sli_i[num_off].children[0].style.opacity - 0.2; //прозрачность 0 - картинку не видно
            sli_i[num_on].children[0].style.opacity = parseFloat(sli_i[num_on].children[0].style.opacity) + parseFloat(0.2); //прозрачность 1 - картинка видна
            sli_start.sleep(50);

            if (sli_i[num_off].children[0].style.opacity == 0) {
                break;
            }
        }


        mass[num_on] = 1;
        mass[num_off] = 0;
    },




    init() {
        //включаем 1-ю картинку
        //удалил класс hidden-sli у всех картинок
        for (let i = 0; i < sli_i.length; i++) {
            sli_i[i].classList.remove("hidden-sli");
            sli_i[i].children[0].style.opacity = 0; //все картинки прозрачные , их не видно
        }
        sli_i[0].children[0].style.opacity = 1; //Включил отображение 1 картинки 

        mass[0] = 1; //записал в массив, что 1 картинка видна
    }

}

window.addEventListener('load', sli_start.init());
