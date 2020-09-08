class Game {

    //инициализация игры
    init(settings, board, bomb, menu) {

        this.settings = settings;
        this.board = board;
        this.bomb = bomb;
        this.menu = menu;

        board.mapGame.addEventListener('click', event => this.cellClickHandler(event)); //устанавливаем обработчик для игрового поля для всех ячеек 

        menu.playBt.addEventListener('click', event => this.playBtClickHandler(event)); //устанавливаем обработчик для кнопки PLAY
        console.log("game.init start");

    };

    playBtClickHandler(event) { //обработчик нажания кнопки play
        this.setStatusPlaing; /*начинаем игру*/
        //скрываем поле

    };

    /*
    * Метод проверяет находится ли бомба в ячейке
    принимает координаты row и col
    возвращает true/false
    */
    isBommInCell(row, col) {
        if (this.board.matrix[row - 1][col - 1] == "bomb") {
            return true;
        } else {
            return false;
        }

    }

    cellClickHandler(event) {

        if (this.isClickByCell(event)) { //если кликнули по ячейки

            this.row = +event.target.attributes[0].value;
            this.col = +event.target.attributes[1].value;

            //если в ячейке бомба
            if (this.isBommInCell(this.row, this.col)) {
                //Стоп игра
                this.setStatusStopped;

                //поменять кнопку PLAYING на RESTART
                this.menu.playBt.style.backgroundColor = "red";
                this.menu.playBt.innerText = "RESTART";
                //.............
                //Отрисовать все поле
                this.board.rednerBoardAfterBooom(); //отрисуем поле из матрицы

                //Отрисовать взорванную бомбу в ячейке row, col
                this.board.renderBoomBoom(this.row, this.col); 
                //............

            } else {
                console.log("Open Cell");
                //открыть ячейку, отрисовать то, то есть в матрице
                let tdElement = this.board.getCellEl(this.row, this.col); //получаем объект нужной нам ячейки в html коде
                tdElement.innerText = this.board.matrix[this.row - 1][this.col - 1]; //записываем в эту ячейку собержимое такой же ячейки в матрице
                tdElement.style.backgroundColor = "white";
            }

        }

        console.log(event.target.attributes[0].value, event.target.attributes[1].value);


    };

    isClickByCell(event) {
        return event.target.tagName === 'TD';
    };

    setStatusStopped() {
        this.status = 'stopped';
    };

    setStatusPlaing() {
        this.status = 'plaing';
    }


}
