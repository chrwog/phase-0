// 9.2.2 Translate Ruby to JavaScript
// Ruby 5.7 Die class challenge quick Summary:
// In this challenge you'll want to implement a basic Die class which can be initialized with some number of sides.

// Pseudocode:
// input: integer 
// output: number of sides, random roll number
// Steps:
// create a die object that has a sides property.
// create a function that returns the number of sides
// create a function that rolls the dice and returns a random number between 1 and the number of sides of the dice
// create a check where if the sides is less than 1, raise an error

// Initial code:
// var die = {
// 	sides: 0
// }


// function sides () {
// 	console.log("The die has " + die.sides + " sides.")
// }

// function roll(){
// 	var x = Math.floor((Math.random() * die.sides) + 1)
// 	console.log("You rolled " + x + ".")
// }



// var check = function(num) {
// 	num = die.sides
//   if (num < 1 ) {
//     throw new RangeError('Parameter must be more than or equal to 1');
//   }
// };

//Refactor
var die = {}

function sides () { console.log("The die has " + die.sides + " sides.") }

function roll(){
	var x = Math.floor((Math.random() * die.sides) + 1)
	console.log("You rolled " + x + ".")
}

var check = function(num) {
  if (die.sides < 1 ) {
    throw new RangeError('Parameter must be more than or equal to 1')
  }
}


// Driver Code
die.sides = 10
sides()
check (die.sides)
roll()

// Test less then 1 side error
die.sides = .5
sides()
check (die.sides)

// Reflection
// What concepts did you solidify in working on this challenge?
// It solidified making objects and creating functions in javascript
//  
// What was the most difficult part of this challenge?
// The hardest part was pseudocoding to javascript. Once I got my pseudocode down, it made it easier to translate the code to javascript

// Did you solve the problem in a new way this time?
// Slightly. The check for less than one side is outside of the die object.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// Yes it was different. I created an object with a side property and then created functions outside of that object to manipulate it.
// These functions were similar to the methods I created in the ruby version.
// The check for less than one side was outside of the die object in JavaScript as opposed to being in the die class in ruby.