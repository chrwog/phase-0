// JavaScript Olympics

// I paired [with:Bret Burnett] on this challenge.

// This challenge took me [2] hours.

// Warm Up
// Bulk Up
  // Pseudocode:
    //Input: An array of athletes
    //Output: String saying an athlete won an event.
    //Create a function: include name, event, and win properties      
      //The win property prints out the outpur
function win(athlete, event){
  return athlete + " won the " + event;
}

console.log(win("Hussain Bolt", "100 Yard Dash"))

// Jumble your words
// Pseudocode:
// Input: A string
// Output: string reversed as a string
// Steps:
// Create a function that accepts a string
// split the string
// store the values inside an array variable
// take the array and reverse it
// store the reverse array in the original array variable
// join the values of the array and place it back into the string variable
// return the string variable

function reverseString (string){
  var ary = string.split("");
   ary = ary.reverse();
  ary = ary.join('');
  return ary
}

console.log(reverseString("This is a String"));






// 2,4,6,8

//Pseudocode:
  //Input: An array of numbers 
  //Output: An Array of ONLY even numbers
    //Create a function that determines if the number is even or not
    //That function must filter the array so only the even numbers remain.
      //Create an if statement stating if the number is divisible by 2 with no remainder it's even
      //Else that number is odd
      //Function must filter argument array

function test(number){
  if (number % 2 == 0)
   return true
    else
   return false
}

var ary = [1,2,3,4,5,6];
console.log(ary.filter(test))

// "We built this city"
//Pseudocode:
  //Input: Name, Age, Sport, Quote
  //Output: String
    // Create a constructor function that will make driver code workcode work
      //Create a function called athlete that accepts the inputs
      //Add properties that correspond to the inputs

function Athlete(name, age, sport, quote){
  this.name=name;
  this.age=age;
  this.sport=sport;
  this.quote=quote;
}

// driver code

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// The creation of functions and the general syntax of JavaScript

// What are constructor functions?
// Constructor functions are objects that contain properties. These constructor functions can be called on variables.

// How are constructors different from Ruby classes (in your research)?
// They're different in that Ruby classes have different methods depending on if it's a new instance or not.
// Javascript don't have classes so there's no special syntax for defining how to create an instance.
// You can potentially have any function be a constructor.
