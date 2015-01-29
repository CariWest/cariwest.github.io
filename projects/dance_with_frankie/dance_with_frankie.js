playerIcon = document.getElementById("playerIcon");
shoesIcon = document.getElementById("shoesIcon");
danceFloor = document.getElementById("danceFloor");

player = {
  isReadyToDance: false,
  dancing: false,
  shoes: 0,
  positionTop: 0,
  positionLeft: 0
}

frankie = {
  dancing: false,
  positionTop: 300,
  positionLeft: 300
}

shoes = {
  positionTop: 400,
  positionLeft: 100
}

band = {
  playing: false,
  positionTop: 100,
  positionLeft: 400
}

function move(direction) {
  if (direction.keyCode == 38 && player.positionTop > 0) { // move up
    player.positionTop -= 100;
  } else if (direction.keyCode == 40 && player.positionTop < 400) { // move down
    player.positionTop += 100;
  } else if (direction.keyCode == 37 && player.positionLeft > 0) { // move left
    player.positionLeft -= 100;
  } else if (direction.keyCode == 39 && player.positionLeft < 400) { // move right
    player.positionLeft += 100;
  }

  movePlayerIcon();
  askBandToPlay();
  pickUpShoes();
  canPlayerDance();
  frankieAsksPlayerToDance();
}

document.onkeydown = move;

function movePlayerIcon() {
  playerIcon.style.top = player.positionTop + "px";
  playerIcon.style.left = player.positionLeft + "px";
}

function askBandToPlay() {
  if (band.playing == true) {
    return;
  } else if (player.positionTop == band.positionTop && player.positionLeft == band.positionLeft) {
    band.playing = true;
    playMusic();
    alert("The band is playing \"Shiny Stockings\" - one of Frankie's favorites!");
  }
}

function playMusic(){
  audio.play();
}

function pickUpShoes() {
  if (player.positionTop == shoes.positionTop && player.positionLeft == shoes.positionLeft) {
    player.shoes = 2
    removeIcon(shoesIcon);
    alert("You've got your dancing shoes on!");
  }
}

function frankieAsksPlayerToDance() {
  if (player.positionTop == frankie.positionTop && player.positionLeft == frankie.positionLeft) {

    if (player.dancing == true && frankie.dancing == true) {
      return;
    } else if (player.dancing == false && frankie.dancing == true) {
      return alert("That's sad - Frankie decided to dance by himself! Refresh the page to try again.");
    }

    if (player.isReadyToDance == true) {
      answer = confirm("Frankie Manning turns to you and reaches out his hand. \"Would you like to dance?\"");
      startDancing(answer);
    } else {
      alert("You can't dance with Frankie unless you are wearing dance shoes and the music is playing!");
    }
  }
}

function canPlayerDance() {
  if (player.shoes == 2 && band.playing == true) {
    player.isReadyToDance = true;
  }
}

function startDancing(answer) {
  if (answer == true) {
    player.dancing = true;
    frankie.dancing = true;
    alert("You're dancing with Frankie Manning! Your friends are never going to believe this.");
  } else {
    frankie.dancing = true;
    alert("Frankie Manning starts dancing on his own - your friends would be ashamed.")
  }
}

function removeIcon(icon) {
  danceFloor.removeChild(icon);
}