class Game {

    //инициализация игры
    init(settings, board, bomb, menu) {

        this.settings = settings;
        this.board = board;
        this.bomb = bomb;
        this.menu = menu;
        this.status = "plaing"; //статус игры - играем


        board.mapGame.addEventListener('click', event => this.cellClickHandler(event)); //устанавливаем обработчик для игрового поля для всех ячеек 

        menu.playBt.addEventListener('click', event => this.playBtClickHandler(event)); //устанавливаем обработчик для кнопки PLAY
        //console.log("game.init start");
        this.menu.info_countWin_cell.innerText = this.settings.countWin; //выводим счетчик на игровое поле

    }

    playBtClickHandler(event) { //обработчик нажания кнопки play
        this.setStatusPlaing(); /*начинаем игру*/
        //скрываем поле

    }

    /*
    * Метод проверяет находится ли бомба в ячейке
    принимает координаты row и col
    возвращает true/false
    */
    isBommInCell(row, col) {
        if (this.board.matrix[row][col] == "bomb") {
            console.log(row, col, "= bomb");
            let tdElement = this.board.getCellEl(row, col);
            console.log(tdElement.innerText, "row/col", row, "/", col);

            return true;
        } else {
            return false;
        }

    }

    cellClickHandler(event) {

        if (this.status == 'plaing') {

            if (this.isClickByCell(event)) { //если кликнули по ячейки

                this.row = +event.target.attributes[0].value;
                this.col = +event.target.attributes[1].value;


                //если в ячейке бомба
                if (this.isBommInCell(this.row, this.col)) {
                    //Стоп игра
                    this.setStatusStopped();
                    console.log("status = stopped from isBommInCell");
                    //поменять кнопку PLAYING на RESTART
                    this.menu.playBt.style.backgroundColor = "red";
                    this.menu.playBt.innerText = "<<-----";
                    //.............
                    //Отрисовать все поле
                    this.board.rednerBoardAfterBooom(); //отрисуем поле из матрицы

                    //Отрисовать взорванную бомбу в ячейке row, col
                    this.board.renderBoomBoom(this.row, this.col);
                    //............

                } else {

                    //открыть ячейку, отрисовать то, что есть в матрице
                    let tdElement = this.board.getCellEl(this.row, this.col); //получаем объект нужной нам ячейки в html коде
                    tdElement.innerText = this.board.matrix[this.row][this.col]; //записываем в эту ячейку собержимое такой же ячейки из матриц
                    this.settings.countWin -= 1; //открыта ячейка, уменьшаем счетчик
                    this.board.matrixEmptyCell[this.row][this.col] = "1"; //пометили ячейку как открытую
                    if (tdElement.innerText == "") {
                        console.log("пустая клетка");

                        this.board.openEmptyCell(this.row, this.col); //открыть клетки вокруг пустой
                    }
                    tdElement.style.backgroundColor = "white";
                }

                //проверка на победителя
                if (this.isWin()) {
                    console.log("status = stopped from isWin_Function");
                    this.setStatusStopped(); //игрок победил и игра останавливается
                    //поменять кнопку PLAYING на RESTART
                    this.menu.playBt.style.backgroundColor = "red";
                    this.menu.playBt.innerText = "<<-----";

                }

            }
            this.menu.info_countWin_cell.innerText = this.settings.countWin;
            console.log(event.target.attributes[0].value, event.target.attributes[1].value);
        }




    }

    //проверка что нажата именно ячейка
    isClickByCell(event) {
        return event.target.tagName === 'TD';
    }

    //меняем статус игры
    setStatusStopped() {
        this.status = 'stopped';
        console.log("status = stopped");
    }

    //меняем статус игры
    setStatusPlaing() {
        this.status = 'plaing';
        console.log("status = playing");
    }

    //проверка на победите ( если счетчик открытых ячеек равен 0, то все ячейки открыты и игрок ПОБЕДИЛ)
    isWin() {
        if (this.settings.countWin == 0) {
            this.menu.playBt.style.backgroundColor = "orange";
            this.menu.playBt.innerText = "-WIN!!!-";
            this.menu.uwin.innerText = "ПОБЕДА";
            return true;
        } else {
            return false;
        }
    };

    countWin_minus() { //уменьшаем счетчик открытых клеток и пишем в info на игровом поле
        this.settings.countWin -= 1;
        this.menu.info_countWin_cell.innerText = this.settings.countWin; //выводим счетчик на игровое поле
    }


}
