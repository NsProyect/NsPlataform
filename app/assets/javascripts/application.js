// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
<<<<<<< HEAD
//= require lazybox
=======
>>>>>>> 8e063ec32ec67c74c9b06d5853689bd6ee1ce107
//= require_tree .

$(document).on('ready page:load', function () {
     $.lazybox.settings={ cancelClass: "pure-button", submitClass: 'pure-button pure-button-primary' }
     $.rails.allowAction = $.lazybox.confirm;
});
