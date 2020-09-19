class Bomb {

    constructor() {
        this.x = null;
        this.y = null;
    }


    /**
     * Метод получает другие игровые объекты, которые нужны ему
     * для работы.
     * @param {Settings} settings объект настроек
     * @param {Board} board объект игрового поля
     */
    init(settings, board) {
        this.settings = settings;
        this.board = board;
        this.mass = this.generateMassRandNums(settings.bombs, settings.newParams.boardSize); //получаем массив сгенерированных случайны числе (номера ячеек с бомбами)
        console.log(this.mass);

    }


    /*
     * Метод генерирует массив случайных уникальных числе в диапазоне : [1, количество ячеек на игровом поле]
     * Каждое число в массиве обозначает ячейку в которой бдует стоять бомба
     * Метод возвращяет массив чисел
     */

    generateMassRandNums(colBombs, boardSize) {
        this.colBombs = colBombs;
        this.boardSize = boardSize;
        this.mass = [];
        let testNum = 0;
        let duble = false; //признак отсутствия дуубля рандомного числа в массиве

        while (true) {

            //генерируем число
            testNum = Math.floor(Math.random() * this.boardSize * this.boardSize);
            duble = false;
            //проходим по массиву и проверяем есть ли уже такое число ( дубль)
            for (let i = 0; i < this.mass.length; i++) {
                if (this.mass[i] == testNum) {
                    duble = true;
                    break;
                }
            }


            //дубль не найден в массиве, значит добавляем сгенерированное число в массив
            if (duble == false) {
                this.mass.push(testNum);
            }

            //если длина массива равна количеству бомб, тогда выходим из вечного цикла. сбор массива завершен
            if (this.mass.length == colBombs) {
                break;
            }


        }


        return this.mass;


    }

}
