/*
First run at a program that generates dog names based on personality
type. also thinking about a japanese tupperware slogan generator
*/
window.onload = initialize;

function intialize() {
  document.getElementById("dogSumbit").onclick = function() {
    document.getElementById("nameDiv").innerHTML = generateName();
    return false;
  }
}

var male_names =  {
  cute: ["Tempura","Miso","Bonzo","Izzy", "Snickers", "Waffy"],
  macho: ["Buster", "Scout", "Puma","Jax","Rhino"],
  martial_arts: ["Dojo","Ninja","Chi","Kendo"],

}

var female_names = {
  cute: ["Cocoa","Lulu","Lily","Butter","Ginger", "Bubble", "Muffin"],
  singers: ["Aretha","Martha","Cher"],
  hawaiian: ["Kona","Kay","Malia","Coconut","Maui"]
}


function generateName() {
  console.log("Is your dog male or female?")
  var
}