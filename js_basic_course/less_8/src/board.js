class Board {

    constructor() {

        this.mapGame = document.getElementById('game'); //объект таблицы - игрового поля

    }

    init(game) {
        this.game = game; //получаем ссылку на объект game
    }


    createMatrixGame(Size) {
        /* mapGame - массив игрового поля, содержит ячейки. 
         * Каждая ячейка может содержать status - бомба, цифра, или быть пустой.
         * Каждая ячейка бует содержать объект OneElMapGame
         */
        let size = Size;
        let matrix = [];
        let row = [];

        for (let i = 0; i < size; i++) {

            for (let k = 0; k < size; k++) {
                row[k] = "";
            }
            matrix[i] = row;
            row = [];
        }
        return matrix;
    }


    randerBoard(params, bomb) {
        this.patams = params;
        this.bomb = bomb;


        console.log("levelGame: " + params.newParams.levelGame);

        this.boardSize = params.newParams.boardSize;



        /* mapGame - массив игрового поля, содержит ячейки. 
         * Каждая ячейка может содержать status - бомба, цифра, или быть пустой.
         * Каждая ячейка бует содержать объект OneElMapGame
         */

        this.matrix = this.createMatrixGame(this.boardSize); //сгенерировали матрицу игрового поля, заполнили 0 (нулями)
        this.matrixObjectTD = this.createMatrixGame(this.boardSize) //сгенерировали матрицу для хранения объектов ячеек td, заполнили 0 (нулями)!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        this.matrixEmptyCell = this.createMatrixGame(this.boardSize) //В этой матрице будем отмечать открытые (показанные) ячейки, чтобы повторно их не открывать

        //загрузить бомбы в матрицу
        this.matrix = this.EnterBombsOnMatrix(this.matrix, this.bomb, this.boardSize); //в объекте this.bomb находится массив с бомбами
        console.log("bombs-matrix: ", this.matrix);

        //загрузить в матрицу числа показывающие сколько бомб вокруг каждой ячейки
        this.matrix = this.EnterNumsOmMatrixCells(this.matrix, this.boardSize);

        this.mapGame.innerHTML = ""; //обнулили игровое поле


        console.log("boardSize: " + this.boardSize);

        //Рисуем игровое поле на HTML
        for (let i = 0; i < this.boardSize; i++) {
            this.mapGame.appendChild(document.createElement("tr"));

            for (let k = 0; k < this.boardSize; k++) {
                let td = document.createElement("td");
                td.dataset.row = i.toString(); //пишем координаты яцеек в тег td 
                td.dataset.col = k.toString();
                this.mapGame.appendChild(td);

                this.matrixObjectTD[i][k] = td; //помещяем элемент td ячейки в матрицу !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

            }

        }
        console.log("mapGame: ", this.mapGame);
        console.log("matrix:", this.matrix);
        console.log("matrixObjectTD:", this.matrixObjectTD);
    }


    /* Метод принимает массив с бомбами и загружает их в матрицу
     *  Метод возвращяет новую матрицу
     */
    EnterBombsOnMatrix(matrix, bomb, size) {
        let count = 1;
        let newMatrix = matrix;
        for (let i = 0; i < size; i++) {
            for (let k = 0; k < size; k++) {
                for (let el = 0; el < bomb.mass.length; el++) {
                    if (count == bomb.mass[el]) {
                        newMatrix[i][k] = "bomb"; //заполняю матрицу бомбами, там где они стоят на игровом поле
                    }
                }
                count = count + 1;
            }
        }
        return newMatrix;
    }

    /*Метод получает на вход матрицу с бомбами
     * на выходе матрица с бомбами и с указанием в каждой свободной 
     * ячейки сколько вокруг нее бомб
     */

    EnterNumsOmMatrixCells(matrix, size) {
        let newMatrix = matrix;
        let countBomb = 0; //счетчик бомб вокруг ячейки
        //перебираем ячейки подряд
        for (let i = 0; i < size; i++) { //строка
            for (let k = 0; k < size; k++) {

                if (newMatrix[i][k] != "bomb") {
                    //тут ячейка без бомбы
                    //будем смотреть соседние ячейки и считать

                    //ячейка 0.0
                    if (i == 0 && k == 0) {
                        if (newMatrix[i + 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                    };

                    //ячейки вдоль горизонтальной верхней линии
                    if (i == 0 && k > 0 && k < (size - 1)) {
                        if (newMatrix[i][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k] == "bomb") {
                            countBomb += 1;
                        };
                    };

                    //ячейка size.size ( правый верхний угол)
                    if (i == 0 && k == (size - 1)) {
                        if (newMatrix[i][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                    };

                    //ячейки вдоль вертикальной линии правая крайняя сверху вниз
                    if (i > 0 && i < (size - 1) && k == (size - 1)) {
                        if (newMatrix[i - 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                    };

                    //ячейка size.size ( правый нижний угол)
                    if (i == (size - 1) && k == (size - 1)) {
                        if (newMatrix[i - 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                    };

                    //ячейки вдоль горизонтальной нижний линии
                    if (i == (size - 1) && k > 0 && k < (size - 1)) {
                        if (newMatrix[i][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k] == "bomb") {
                            countBomb += 1;
                        };
                    };


                    //ячейка size.0 (левый нижний угол)
                    if (i == (size - 1) && k == 0) {
                        if (newMatrix[i - 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                    };


                    //ячейки вдоль вертикальной линии  крайняя левая сверху вниз
                    if (i > 0 && i < (size - 1) && k == 0) {
                        if (newMatrix[i - 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                    };

                    //ячейки внутри поля без крайних линий по бокам и с верху(ячейки вокруг которых 8 клеток)
                    if (i > 0 && i < (size - 1) && k > 0 && k < (size - 1)) {
                        if (newMatrix[i - 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i - 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k + 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k - 1] == "bomb") {
                            countBomb += 1;
                        };
                        if (newMatrix[i + 1][k + 1] == "bomb") {
                            countBomb += 1;
                        };

                    };

                    //--------------------------------------------
                    if (countBomb != 0) { //если вокруг ячейки нет бомб, то она остается пустой
                        newMatrix[i][k] = countBomb //записываем в ячейку сколько бомб вокруг    
                        countBomb = 0; //обнуляем счетчик для работы с новой ячейкой
                    }

                }
            }

        }

        return newMatrix;
    }



    /**
     * Получаем ячейку таблицы.                        БУДУ ИСПОЛЬЗОВАТЬ ДЛЯ РАССТАНОВКИ ЦИФР ПО ЯЧЕЙКАМ - КОЛ-ВО БОМБ
     * @param {number} x координата по оси х.
     * @param {number} y координата по оси y.
     * @returns {HTMLTableCellElement} тег td
     */
    getCellEl(x, y) {

        return this.matrixObjectTD[x][y]; //возвращяет объект ячейки игрового поля с координатами x,y

    }

    //Отрисовываем поле после взрыва. Все данные ячеек берем из матрицы

    rednerBoardAfterBooom() {

        for (let row = 0; row < this.matrix.length; row++) {

            for (let col = 0; col < this.matrix.length; col++) {

                let el = this.getCellEl(row, col); //получили ячейку на HTML

                if (this.matrix[row][col] == "bomb") {
                    //в ячейку нужно добавить картинку бомбы img
                    let im = document.createElement("img"); //создаю дочерний элемент img для вставки картинки
                    im.setAttribute("src", "img/bomb.png");
                    im.setAttribute("width", "28px");
                    im.setAttribute("height", "28px");
                    el.appendChild(im);
                    el.style.backgroundColor = "white";
                    continue;
                };
                if (this.matrix[row][col] == "") {
                    el.style.backgroundColor = "white";
                } else {
                    el.innerText = this.matrix[row][col];
                    el.style.backgroundColor = "white";
                };
            }
        }
    }

    //Отрисовать взорванную бомбу в ячейке row, col
renderBoomBoom(row, col) {
        let el = this.getCellEl(row, col); //получили ячейку на HTML
        el.childNodes[0].attributes.src.nodeValue = "img/boooooom.png";

    }

    /*метод отрисовывает(открывает) ячейки вокруг пустой
     * на вход получает координаты пустой ячейки
     */

    openEmptyCell(ro, co) {
        return true;
    }
    openEmptyCell2(ro, co) {
        let i = ro;
        let k = co;
        let newMatrix = this.matrix;
        let el;
        let size = this.boardSize;

        //клетки вокруг пустой
        //co-1,ro-1
        //co-1,ro
        if (co - 1 != 0 && ro - 1 != 0) {
            if (this.matrixEmptyCell[ro - 2][co - 2] != "1") { //проверяю открыта ли клетка, закрыта - иду в иф
                el = this.getCellEl(ro - 1, co - 1); //получаю клетку
                el.style.backgroundColor = "white"; //открываю в html
                this.game.countWin_minus(); //уменьшаем счетчик открытых клеток и пишем в info на игровом поле
                el.innerText = newMatrix[ro - 2][co - 2]; // в html вывожу значение клетки
                this.matrixEmptyCell[ro - 1][co - 1] = "1"; //пометили ячейку как открытую

                if (newMatrix[ro - 2][co - 2] == "") { //проверяю пустая ли эта открытая клетка, если да, то иду в иф -открывать вокруг нее клетки
                    this.openEmptyCell(ro - 1, co - 1);
                } else {
                    return true
                }
            } else {
                return true
            }



            if (this.matrixEmptyCell[ro - 1][co - 2] != "1") { //проверяю открыта ли клетка, закрыта - иду в иф
                el = this.getCellEl(ro, co - 1); //получаю клетку
                el.style.backgroundColor = "white"; //открываю в html
                this.matrixEmptyCell[ro - 1][co - 2] = "1"; //пометили ячейку как открытую
                this.game.countWin_minus(); //уменьшаем счетчик открытых клеток и пишем в info на игровом поле
                el.innerText = newMatrix[ro - 1][co - 2]; // в html вывожу значение клетки

                if (newMatrix[ro - 1][co - 2] == "") { //проверяю пустая ли эта открытая клетка, если да, то иду в иф -открывать вокруг нее клетки
                    this.openEmptyCell(ro, co - 1);
                } else {
                    return true
                };
            } else {
                return true
            }

        }

        //co-1,ro+1
        //co,ro+1
        if (co - 1 != 0 && ro + 1 != 9) {

            if (this.matrixEmptyCell[ro][co - 2] != "1") { //проверяю открыта ли клетка, закрыта - иду в иф
                el = this.getCellEl(ro + 1, co - 1); //получаю клетку
                el.style.backgroundColor = "white"; //открываю в html
                this.matrixEmptyCell[ro + 1][co - 1] = "1"; //пометили ячейку как открытую
                this.game.countWin_minus(); //уменьшаем счетчик открытых клеток и пишем в info на игровом поле

                el.innerText = newMatrix[ro][co - 2]; // в html вывожу значение клетки

                if (newMatrix[ro][co - 2] == "") { //проверяю пустая ли эта открытая клетка, если да, то иду в иф -открывать вокруг нее клетки
                    this.openEmptyCell(ro + 1, co - 1);
                } else {
                    return true
                }
            } else {
                return true
            }

            if (this.matrixEmptyCell[ro][co - 1] != "1") { //проверяю открыта ли клетка, закрыта - иду в иф
                el = this.getCellEl(ro + 1, co); //получаю клетку
                el.style.backgroundColor = "white"; //открываю в html
                this.matrixEmptyCell[ro + 1][co] = "1"; //пометили ячейку как открытую
                this.game.countWin_minus(); //уменьшаем счетчик открытых клеток и пишем в info на игровом поле

                el.innerText = newMatrix[ro][co - 1]; // в html вывожу значение клетки

                if (newMatrix[ro][co - 1] == "") { //проверяю пустая ли эта открытая клетка, если да, то иду в иф -открывать вокруг нее клетки
                    this.openEmptyCell(ro + 1, co);
                } else {
                    return true
                }
            } else {
                return true
            }
        }


        //co+1,ro+1
        //co+1,ro

        if (co + 1 != 9 && ro + 1 != 9) {

            if (this.matrixEmptyCell[ro][co] != "1") {

                el = this.getCellEl(ro + 1, co + 1);
                el.style.backgroundColor = "white";
                this.matrixEmptyCell[ro + 1][co + 1] = "1"; //пометили ячейку как открытую
                this.game.countWin_minus() //уменьшаем счетчик открытых клеток и пишем в info на игровом поле


                el.innerText = newMatrix[ro][co];

                //                if (newMatrix[ro][co] == "") {
                //                    this.openEmptyCell(ro + 1, co + 1);
                //                } else {
                //                    return true
                //                }

            } else {
                return true
            }

            if (this.matrixEmptyCell[ro - 1][co - 2] != "1") {
                el = this.getCellEl(ro, co - 1);
                el.style.backgroundColor = "white";
                this.matrixEmptyCell[ro][co + 1] = "1"; //пометили ячейку как открытую
                this.game.countWin_minus(); //уменьшаем счетчик открытых клеток и пишем в info на игровом поле


                el.innerText = newMatrix[ro - 1][co];

                //                if (newMatrix[ro - 1][co] == "") {
                //                    this.openEmptyCell(ro, co + 1);
                //                } else {
                //                    return true
                //                }

            } else {
                return true
            }
        }

        //co+1,ro-1
        //co,ro-1
        if (co + 1 != 9 && ro - 1 != 0) {

            if (this.matrixEmptyCell[ro - 2][co] != "1") {

                el = this.getCellEl(ro - 1, co + 1);
                el.style.backgroundColor = "white";
                this.matrixEmptyCell[ro - 1][co + 1] = "1"; //пометили ячейку как открытую
                this.game.countWin_minus(); //уменьшаем счетчик открытых клеток и пишем в info на игровом поле


                el.innerText = newMatrix[ro - 2][co];

                //                if (newMatrix[ro - 2][co] == "") {
                //                    this.openEmptyCell(ro - 1, co + 1);
                //                } else {
                //                    return true
                //                }

            } else {
                return true
            }

            if (this.matrixEmptyCell[ro - 2][co - 1] != "1") {
                el = this.getCellEl(ro - 1, co);
                el.style.backgroundColor = "white";
                this.matrixEmptyCell[ro - 1][co] = "1"; //пометили ячейку как открытую
                this.game.countWin_minus(); //уменьшаем счетчик открытых клеток и пишем в info на игровом поле


                el.innerText = newMatrix[ro - 2][co - 1];

                //                if (newMatrix[ro - 2][co - 1] == "") {
                //                    this.openEmptyCell(ro - 1, co);
                //                } else {
                //                    return true
                //                }

            } else {
                return true
            }
        }

    }

}
