// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
//

Mousetrap.bind('a', function() { window.location = '/areas'; });
Mousetrap.bind('e', function() { window.location = '/exams'; });
Mousetrap.bind('q', function() { window.location = '/questions'; });
Mousetrap.bind('p', function() { window.location = '/pictures'; });
Mousetrap.bind('n', function() { window.location = '/narrations'; });
Mousetrap.bind('r', function() { window.location = '/results'; });
Mousetrap.bind('j', function() { window.location = '/exams/1.json'; });
Mousetrap.bind('E', function() { window.location = '/questions/4/edit'; });
Mousetrap.bind('x', function() { window.scrollTo(0, document.body.scrollHeight); });
Mousetrap.bind('1', function() { window.scrollTo(0, 0); });
