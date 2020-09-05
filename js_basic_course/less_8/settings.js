class Settings {


    init(params) {
        let defaultParams = {
            boardSize: 20, //размер игрового поля
            levelGame: 2 //уровень сложности 1, 2, 3 (количество бомб: 1-10%, 2-25%, 3-40%)
        };
        Object.assign(defaultParams, params);
        this.newParams = defaultParams;
        console.log(this.newParams);

    }
}
