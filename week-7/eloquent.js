// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number = 10;
console.log(number)

// Asks user to input their favorite food

prompt("What's Your favorite food?")
alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var triangle = "#"; triangle.length <= 7; triangle += "#")
  console.log(triangle)
  

// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  if (a < b)
   return a;
    else
      return b;
}
console.log(min(0, 10))
console.log(min(0, -10))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Chris",
  age: 30,
  favoriteFoods: ["Ramen", "Pizza", "Ribs"],
  quirk:"I have the same birthday as my brother 11 years older than me"
};

console.log(me)
