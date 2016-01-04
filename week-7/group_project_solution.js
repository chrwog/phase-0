
//Any integers can be in the array
var number_array = [2,6,4,5,5,1]

// Refactor

//sum refactor
function operation_1(){
  var total = 0;
  for (var i = 0; i < number_array.length; i++){total += number_array[i]}
  console.log(total)
}

//average refactor
function operation_2(){
  var total = 0;
  for (var i = 0; i < number_array.length; i++){
    total += number_array[i];
    var average = total/(i+1);
  }
  console.log(average)
}

//median refactor
function operation_3(){
  var middle = Math.floor(number_array.length/2);
  number_array.sort( function(a,b) {return a - b;} );
  
  if(number_array.length % 2 == 0)
    //even
    console.log((number_array[middle-1] + number_array[middle]) / 2);
  else
    //odd
    console.log(number_array[middle]);
}

//testing to make sure the function works
operation_1()
operation_2()
operation_3()
console.log(number_array)

/* User Stories
operation_1
As a user, I want to take a group of numbers and add them all together to get the total.

operation_2
As a user, I want to get the average of a group of numbers.

operation_3
As a user, I want to get the median of a group of numbers. 
If the group of numbers is even, I want to get the average of the two closest numbers in the middle.
*/