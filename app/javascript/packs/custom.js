//JS
// const bodyElement = document.querySelector('body');
// const menuToggle = document.querySelector('.hamburger-menu')
// const heroElement = document.querySelector('.hero')
// const navList = document.querySelector('.sidebar-list')

// menuToggle.addEventListener('click', function (){
//   bodyElement.classList.toggle('is-open');
//   heroElement.classList.add('is-open');
// })

// navList.addEventListener('click', function (e) {
//   let clickedElement = e.target;

//   if (clickedElement.classList[0] === "sidebar-link") {
//     bodyElement.classList.remove('is-open');
//   }
// })

// //Add eventListener to the windo object to close nav when we click outside
// window.addEventListener('click', function(e) {
//   let clickedElement = e.target;

//   if (clickedElement.matches('.is-open')) {
//     bodyElement.classList.remove('is-open');
//     heroElement.classList.remove('is-open');
//   }
// })


//Add collapsible heading
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}