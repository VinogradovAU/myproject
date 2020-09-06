class Board {

    constructor() {
        this.mapGame = document.getElementById('game');
    }

    randerBoard(params, bomb) {
        this.patams = params;
        this.bomb = bomb;


        console.log("levelGame: " + params.newParams.levelGame);

        this.boardSize = params.newParams.boardSize;

        this.mapGame.innerHTML = "";

        console.log("boardSize: " + this.boardSize);

        let count = 1;
        for (let i = 1; i <= this.boardSize; i++) {
            this.mapGame.appendChild(document.createElement("tr"));

            for (let k = 1; k <= this.boardSize; k++) {
                let td = document.createElement("td");
                this.mapGame.appendChild(td);
                for (let i = 0; i < this.bomb.mass.length; i++) {
                    if (count == this.bomb.mass[i]) {
                        let im = document.createElement("img");
                        im.setAttribute("src", "/img/bomb.png");
                        im.setAttribute("width", "20px");
                        im.setAttribute("height", "20px");

                        td.appendChild(im);
                        //                        td.classList.add("bomb");
                    }
                }

                count = count + 1;
            }
        }


    }

}
