class Settings {


    init(params) {
        let levelcalc = [15, 50, 70]; //процентов бомб на пполе в зависимости от уровня сложности

        let defaultParams = {
            boardSize: 20, //размер игрового поля
            levelGame: 2 //уровень сложности 1, 2, 3 (количество бомб: 1-30%, 2-50%, 3-70%)
        };
        Object.assign(defaultParams, params);


        this.newParams = defaultParams; //получили новый список параметров


        let newLevel = this.newParams.levelGame; //тут заданное число уровня сложности
        let newLevelProcent = levelcalc[newLevel - 1]; /* тут берем из массива levelcalc % содерржания бомб для заданного уровня сложности 1-30%, 2-50%, 3-70% */
        this.bombs = Math.floor(newLevelProcent / 100 * this.newParams.boardSize * this.newParams.boardSize); //расчет количества бомб: общее количество ячккк умножаем на %.

        console.log("bombs: " + this.bombs, "levelGame: " + this.newParams.levelGame);

    };
}
