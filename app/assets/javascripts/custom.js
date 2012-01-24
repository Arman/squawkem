$(document).ready(function() 
    { 
        $("#listBusinesses")
        .tablesorter({widthFixed: true, positionFixed: false, widgets: ['zebra']}) 
        .tablesorterPager({container: $("#pager")}); 
    } 
); 

$(function () {
  $("a[rel*=twipsy],input[rel*=twipsy]")
    .twipsy({
      placement: 'below',
      offset: 0,
      trigger : 'hover',
      delayIn : 500
    })
})

$(function () {
  $("a[rel*=popover]")
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
