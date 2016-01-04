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