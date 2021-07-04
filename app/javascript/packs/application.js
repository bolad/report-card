// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap";
//import 'cocoon-js'
import '@fortawesome/fontawesome-free/css/all';
import "../stylesheets/application";

global.toastr = require("toastr");

require("jquery")
require("@nathanvda/cocoon")
//require("packs/custom")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")