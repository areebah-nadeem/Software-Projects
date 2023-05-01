// variables
    let DEFAULT_SPEED = 3000;
    let hop=0;
    let score = 0;
    let bug = {
        speed: DEFAULT_SPEED,
        xcanvas: 0,
        ycanvas: 0
    };
    let bug_Ready = false;
    let background_Ready = false;
    let missed=0;
  


//reset score button
    let resetScore = function () {  score = 0; };

// Create the canvas like in monsters in lecture
       let canvas =document.createElement("canvas");
        let ctx = canvas.getContext("2d");
        canvas.width = 1300;
        canvas.height = 500;
        document.body.appendChild(canvas);

//mouse pointer
canvas.addEventListener('mouseenter', function () {
    document.body.style.cursor = 'pointer';
});
canvas.addEventListener('mouseleave', function () {
    document.body.style.cursor = 'default';
});
document.body.appendChild(canvas);


//Declaring Bug Image 
let bug_Image = new Image();
bug_Image.onload = function () {
  bug_Ready = true;
};
bug_Image.src = "Picture1.png";



// DeclaringBackground image
let background_Image = new Image();
background_Image.onload = function () {
    background_Ready = true;
};
background_Image.src = "leaf123.jpeg";



// Set hop with set internal
function resetL() {resetLocation();}

hop = setInterval(resetL, DEFAULT_SPEED);





// click if caught bug function
canvas.addEventListener("click", caught, false);
  function caught(event) {
      event.preventDefault();
      // Get the location of the mouse click

      let xcanvas = event.pageX - canvas.offsetLeft;
      let ycanvas = event.pageY - canvas.offsetTop;

      //  if clicked on the bug
      if (
        (xcanvas > bug.xcanvas)       &&
        (xcanvas < bug.xcanvas + 60) &&
        (ycanvas > bug.ycanvas)       &&
        (ycanvas < bug.ycanvas + 60) &&
        (xcanvas = bug.xcanvas + 60) &&
        (ycanvas = bug.ycanvas + 60) 
        )
        
        {
        score = score + 1;

        resetL();

          }
         

      // Reduce default speed of bug !< 50
      if (DEFAULT_SPEED - 100 >= 50) {
        clearInterval(hop);
        DEFAULT_SPEED = DEFAULT_SPEED - 200;
        hop = setInterval(resetL, DEFAULT_SPEED);
        
      }
     
}



// Got caught change to random location// same as lecture
let resetLocation = () => {
  bug.xcanvas = 32 + Math.random() * (canvas.width - 64);
  bug.ycanvas = 32 + Math.random() * (canvas.height - 64);
};

// Reset sped
let resetSpeed = () => {
  clearInterval(hop);
  DEFAULT_SPEED = 3000;
  hop = setInterval(resetL, DEFAULT_SPEED);
}
//function setInterval(handler: TimerHandler, timeout?: number | undefined, ...arguments: any[]): number

//play again to reset everything
let playagain = function () {
    resetSpeed();
    resetScore();
    backtomiddle();
}
let backtomiddle = function () {
    bug.xcanvas = 650;
    bug.ycanvas = 250;
}


// Draw everything same as lecture
let render = () => {
  if (background_Ready == true) {
    ctx.drawImage(background_Image, 0, 0);
  }

 if (bug_Ready == true) {
    ctx.drawImage(bug_Image, bug.xcanvas, bug.ycanvas);
    // CanvasDrawImage.drawImage(image: CanvasImageSource, dx: number, dy: number):
  }

  //else{


  //}
  // Score same as lecture
  ctx.fillStyle = "white";
  ctx.font = "24px Helvetica";
  ctx.textAlign = "left";
  ctx.textBaseline = "top";
  ctx.fillText("Current Score : " + score, 32, 32);
 //        ctx.fillText("Goblins caught: " + monstersCaught, 32, 32);


}

// The main game loop (same as lecture)
let main = function () {
  render();

  // Request to do this again ASAP//
  requestAnimationFrame(main);
};

// Cross-browser support for requestAnimationFrame
let w = window;
requestAnimationFrame =
  w.requestAnimationFrame ||
  w.webkitRequestAnimationFrame ||
  w.msRequestAnimationFrame ||
  w.mozRequestAnimationFrame;

// Show time! let's play the game!
resetScore();
main();

