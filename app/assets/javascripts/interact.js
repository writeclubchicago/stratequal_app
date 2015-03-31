function changeColor(box) {
  // .style["CSS-ATTRIBUTE"] can change the styling of the element
  box.style["background-color"] = "blue";
}

function addText(box) {
  box.innerHTML = "Hello!";
}

function addClass(box) {
  box.className += " light";
}

function readText() {
  var boxWithText = document.getElementById("textbox");
  alert(boxWithText.innerHTML);
}

// Other useful functions:

// Find by tag name:
// var paragraphs = document.getElementsByTagName("p");

// Find by class name:
// var intros = document.getElementsByClassName("intro");

// Change attribute
// document.getElementById("myImage").src = "landscape.jpg";

