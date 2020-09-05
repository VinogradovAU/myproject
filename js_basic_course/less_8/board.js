class Board {

    constructor() {
        this.mapGame = document.getElementById('game');
    }

    randerBoard(params) {
        console.log(params.newParams.boardSize);

        this.boardSize = params.newParams.boardSize;

        this.mapGame.innerHTML = "";

        console.log("boardSize: " + this.boardSize);

        for (let i = 1; i <= this.boardSize; i++) {

        }


    }

}
