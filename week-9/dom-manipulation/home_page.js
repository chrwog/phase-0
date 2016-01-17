// DOM Manipulation Challenge


// I worked on this challenge [with: Clair Samuels].


// Add your JavaScript calls to this page:

// Release 1:
  document.getElementsByTagName("div")[0].className = "done";



// Release 2:
document.getElementsByTagName("div")[1].style.display = "none";



// Release 3:
document.getElementsByTagName("h1")[0].innerText = "I completed release 2.";



// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 5:
var items = document.querySelectorAll(".release-4");
for (var i = 0; i < items.length; i++) {
	items[i].style.fontSize = "2em";
}


// Release 6:
var tmpl = document.getElementById ('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

// Reflection:

// What did you learn about the DOM?
// I learned the basic syntax of how to select parts of the document, and modify them. This was my first time using DOM and it is very apparent how powerful this can be.

// What are some useful methods to use to manipulate the DOM?
// Selecting elements by id or tag name is very useful for select the specific elements that you want to manipulate. Other useful methods include querySelectorAll which picks all the elements with a specific name.
