$(document).ready(function() 
    { 
        $("#listBusinesses").tablesorter(); 
    } 
); 


$(function () {
  $("a[rel=popover]")
    .popover({
      offset: 10, 
      html : true
    })
    .click(function(e) {
      e.preventDefault()
    })
})

$(".alert-message").alert()

$('#topbar').scrollSpy()
