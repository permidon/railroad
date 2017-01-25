$(document).ready(function() {
    $('.search_form').submit(function () {
        var first_station;
        var last_station;

        first_station = $(this).find('#departure_station_id');
        last_station = $(this).find('#arrival_station_id');

            console.log(last_station);

        if (first_station.val() == last_station.val()) {
            alert('Stations should have different names');
            return false;
        }
    });
});