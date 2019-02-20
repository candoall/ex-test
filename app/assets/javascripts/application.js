// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on('ready', function() {
  initMap = function(coordinates) {
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 5,
      center: {
        lat: coordinates[0].lat,
        lng: coordinates[0].lng
      },
      mapTypeId: 'terrain'
    });

    polygon = new google.maps.Polygon({
      paths: coordinates,
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.35
    });
    polygon.setMap(map);
  };

  if($('#map').length > 0){
    data = JSON.parse($('#map').attr('data'));
    initMap(data);
  }
});

