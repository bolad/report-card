// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap";
import '@fortawesome/fontawesome-free/css/all';
import "../stylesheets/application";

global.toastr = require("toastr");

require("jquery")
require("@nathanvda/cocoon")


console.log('Hello from application.js')

//select element function
// const selectElement = function (element) {
//   return document.getElementById(element);
// }

// let menuToggler = selectElement('menu-toggle');
// let body = selectElement('body');

// console.log(menuToggler)
// console.log(body)

// menuToggler.addEventListener('turbolinks:click', function () {
//   body.classList.toggle('open');
// });

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")