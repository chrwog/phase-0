// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// input: number
// output: string with commas
// steps:
// - convert the number to string
// - convert the string to array with each character as value
// - iterate over the array from last index to first
// - if index is divisible by 3, add comma
// - return the updated array as a string



// Initial Solution
function separateComma(number) {
  var numString = number.toString();
  var numArray = numString.split("");
  var i = numArray.length - 1;
  numArray.reverse();
  // console.log(numArray);
  for (i; i > 0; i--){
    if (i % 3 === 0 && i !== 0){
      numArray.splice(i, 0, ",");
      // console.log(i);
    }
    
  }
  var newArray = numArray.reverse();
  // newArray.join('');
  console.log(newArray.join(''));
}



// Refactored Solution
function separateComma(number) {
  var numArray = number.toString().split("");
  var i = numArray.length - 1;
  numArray.reverse();
  
  for (i; i > 0; i--){
    if (i % 3 === 0 && i !== 0){
      numArray.splice(i, 0, ",");
    }
  }

  numArray = numArray.reverse();
  console.log(numArray.join(''));
}


// Your Own Tests (OPTIONAL)
separateComma(1234);
separateComma(12345);
separateComma(123456);
separateComma(1234567);




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We took a similar approach to the problem in ruby. Since many of the operators are the same, this made sense to us.

// What did you learn about iterating over arrays in JavaScript?
// You can use counters in JavaScript to iterate over arrays, there's no do method that will work.

// What was different about solving this problem in JavaScript?
// The syntax is a bit different compared to ruby. We had to use a counter to iterate over the array.

// What built-in methods did you find to incorporate in your refactored solution?
// I didn't find any methods, but I was able to eliminate unnecessary variables and solve an undefined issue we were having.