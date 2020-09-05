window.addEventListener('load', function (event) {

    const settings = new Settings();
    const game = new Game();
    const board = new Board();


    settings.init({
        boardSize: 9,
        levelGame: 1
    });
    board.randerBoard(settings); //отрисуем поле


});
