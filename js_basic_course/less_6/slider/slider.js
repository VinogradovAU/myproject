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
                sli_start.on_off_pic(k - 1, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена не первая в массиве или classList картинка
                break;
            } else {
                sli_start.on_off_pic(mass.length - 1, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена первая в массиве или classList картинка
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
                sli_start.on_off_pic(k + 1, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена не последняя в массиве или classList картинка
                break;
            } else {
                sli_start.on_off_pic(0, k); // метод принимает номер картинки которую надо включить и номер картинки, которую надо выключить, при условии, что была включена последняя в массиве или classList картинка
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
    on_off_pic(num_on, num_off) {
        sli_i[num_off].classList.add("hidden-sli");
        sli_i[num_on].classList.remove("hidden-sli");

        mass[num_on] = 1;
        mass[num_off] = 0;
    },

    //метод переключает картинки меняя прозрачность картинок 
    on_off_opacity(num_on, num_off) {
        sli_i[num_off].children[0].style.opacity = 1; //прозрачность 1 - картинку не видно
        sli_i[num_on].children[0].stylr.opacity = 0; //прозрачность 0 - картинка видна

    }


    init() {
        //включаем 1-ю картинку
        sli_i[0].classList.remove("hidden-sli");
        mass[0] = 1; //
    }

}

window.addEventListener('load', sli_start.init());
