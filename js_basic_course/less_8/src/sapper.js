class start_code {

    init(e) {

        const settings = new Settings();
        const board = new Board();
        const bomb = new Bomb();
        const menu = new Menu();
        const game = new Game();
        const sapper = new start_code();


        //задаем интересующие нас параметры игры: размер игрового поля и уровень сложности ( 1, 2 или 3)
        settings.init({
            boardSize: 9,
            levelGame: 1
        });


        menu.init(settings, board, bomb, game, sapper); //подготавливаем кнопки меню
        bomb.init(settings, board); //сгеренируем и поместим на игровое поле бомбы
        board.randerBoard(settings, bomb); //отрисуем поле
        game.init(settings, board, bomb, menu); //начнет игру
        board.init(game);

    }


}

window.addEventListener('load', function (e) {

    const main = new start_code();

    main.init(e);

})
