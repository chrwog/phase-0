 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Run to the finish line to collect the medal while avoiding the spikes
// Goals: get to the finish line, avoid the spikes
// Characters: player
// Objects: player (position), finish line, spikes
// Functions: moveForward, jump

// Pseudocode
//Declare a 'player' object with position and health properties
//Add methods to 'player' to make it move forward and jump
//Declare spikes with a random position
//Declare a finish line with a set distance away from the player
//Move the player forward towards the finish line
// Check where the player is in relation to the spikes
// If the player is in the same position as the finish line, complete. If player in the same as the spikes, game over.

// Initial Code
var player = {
meters: 0,
finish: false,

jump: function() {
  this.meters +=10
console.log("Player's distance is " + player.meters);},

move: function(direction) {
  if(direction === 'forward'){
    this.meters +=5;
  }
  

//Show distance
console.log("Player's distance is " + player.meters);

//Check to see if player has ran into the spikes, or got to the finish line
if(player.meters === spikes.meters){
  console.log("You ran into spikes, Game Over Man, Game Over!");
}

else if(player.meters === finishLine.meters){
  player.finish = true;
  console.log("You got to the finish line! You're a winner!");
}

}

};

var finishLine = {
  meters: 25
};

var spikes = {
  meters: 15
};


player.move('forward');
player.move('forward');
player.jump();
player.move('forward');


// Refactored Code

var player = {
  meters: 0,
  
  jump: function() {
    this.meters +=10
    console.log("Player's distance is " + player.meters);
  },

  move: function(direction) {
    if(direction === 'forward'){
      this.meters +=5;
    }
  
    console.log("Player's distance is " + player.meters);
  
    if(player.meters === spikes.meters){
      console.log("You ran into spikes, Game Over Man, Game Over!");
    }
    
    else if(player.meters === finishLine.meters){
      console.log("You got to the finish line! You're a winner!");
    }
  }
};

var finishLine = { meters: 25 };

var spikes = { meters: 15 };

player.move('forward');
player.move('forward');
player.jump();
player.move('forward');

// Reflection

// What was the most difficult part of this challenge?
// Getting the syntax error free. Syntax seems to be a challenge for me with javascript.

// What did you learn about creating objects and functions that interact with one another?
// It's neat when everything works together to make something creative like a game.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I refactored for readability and didn't add any new methods. I feel like my game is pretty simple and didn't require any fancy methods.

// How can you access and manipulate properties of objects?
// variable.propertiesOfObject(argument)