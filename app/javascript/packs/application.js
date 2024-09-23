// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery"
// import $ from 'jquery'
import "bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// // Make jQuery available globally
// window.jQuery = window.$ = $

// // Initialize Bootstrap components after Turbolinks load
// document.addEventListener("turbolinks:load", function() {
//   // Explicitly initialize dropdown
//   $('[data-toggle="dropdown"]').dropdown()

//   // You can initialize other Bootstrap components here if needed
//   // For example:
//   // $('[data-toggle="tooltip"]').tooltip()
//   // $('[data-toggle="popover"]').popover()
// })

// // If you're having issues with Turbolinks, you can try this alternative:
// $(document).on('turbolinks:load', function() {
//   $('[data-toggle="dropdown"]').dropdown()
// })
