class Menu {

    constructor() {

        //получаем объекты кнопок меню (выбор уровня сложности)
        this.butt1 = document.getElementById("level1");
        this.butt2 = document.getElementById("level2");
        this.butt3 = document.getElementById("level3");
        this.playBt = document.getElementById("play"); //объект кнопки play
    };



    //Метод закрашивает в зеленый цвет нажатую кнопку выбора уровня сложности, другие кноки закрашивает в белый 
    ButtChangeStatusColor(params_gameLevel, butt1, butt2, butt3) {
        switch (params_gameLevel) {
            case 1:
                this.butt1.style.backgroundColor = "green";
                this.butt2.style.backgroundColor = "white";
                this.butt3.style.backgroundColor = "white";

                break;
            case 2:

                this.butt1.style.backgroundColor = "white";
                this.butt2.style.backgroundColor = "green";
                this.butt3.style.backgroundColor = "white";

                break;
            case 3:

                this.butt1.style.backgroundColor = "white";
                this.butt2.style.backgroundColor = "white";
                this.butt3.style.backgroundColor = "green";

                break;
        }

    };




    init(params, board, bomb, game) {

        this.params_gameLevel = params.newParams.levelGame; //params - это прилетает settings (levelGame и boardsize) 
        this.params = params; //сохраняем объект себе
        this.board = board; //сохраняем объект себе
        this.bomb = bomb; //сохраняем объект себе
        this.game = game; //сохраняем объект себе

        this.ButtChangeStatusColor(this.params_gameLevel, this.butt1, this.butt2, this.butt3); //при запуске программы выставляет цвет кнопок в соответствии с параметрами setting

        this.butt1.addEventListener("click", this.ChangeStatusColorButt1.bind(this)); //назначаем обработчк нажатия на кнопки и прикручиваем (bind) объект menu к функции обработчику
        this.butt2.addEventListener("click", this.ChangeStatusColorButt2.bind(this)); //назначаем обработчк нажатия на кнопки и прикручиваем (bind) объект menu к функции
        this.butt3.addEventListener("click", this.ChangeStatusColorButt3.bind(this)); //назначаем обработчк нажатия на кнопки и прикручиваем (bind) объект menu к функции


    };

    //Обработчки нажания на кнопку 1 . Меняем цвет кнопки 1 на зеленый, а кнопки 2, 3 на белый
    //Меняем значение настроек settings номер уровня и пересчитываем количество бомб

    ChangeStatusColorButt1() {
        this.game.setStatusPlaing(); /*начинаем игру*/
        this.ButtChangeStatusColor(1, this.butt1, this.butt2, this.butt3);
        this.params.init({
            boardSize: this.params.newParams.boardSize,
            levelGame: 1
        });
        this.bomb.init(this.params, this.board);
        this.board.randerBoard(this.params, this.bomb);
        this.playBt.style.backgroundColor = "gray";
        this.playBt.innerText = "PALAING";
    };


    //Обработчки нажания на кнопку 2 . Меняем цвет кнопки 1 на зеленый, а кнопки 1, 3 на белый
    //Меняем значение настроек settings номер уровня и пересчитываем количество бомб
    ChangeStatusColorButt2() {
        this.game.setStatusPlaing(); /*начинаем игру*/
        this.ButtChangeStatusColor(2, this.butt1, this.butt2, this.butt3);
        this.params.init({
            boardSize: this.params.newParams.boardSize,
            levelGame: 2
        });
        this.bomb.init(this.params, this.board);
        this.board.randerBoard(this.params, this.bomb);
        this.playBt.style.backgroundColor = "gray";
        this.playBt.innerText = "PALAING";
    };


    //Обработчки нажания на кнопку 3 . Меняем цвет кнопки 1 на зеленый, а кнопки 1, 2 на белый
    //Меняем значение настроек settings номер уровня и пересчитываем количество бомб
    ChangeStatusColorButt3() {
        this.game.setStatusPlaing(); /*начинаем игру*/
        this.ButtChangeStatusColor(3, this.butt1, this.butt2, this.butt3);
        this.params.init({
            boardSize: this.params.newParams.boardSize,
            levelGame: 3
        });
        this.bomb.init(this.params, this.board);
        this.board.randerBoard(this.params, this.bomb);
        this.playBt.style.backgroundColor = "gray";
        this.playBt.innerText = "PALAING";

    };

}
