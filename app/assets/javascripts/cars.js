$(document).ready(function () {

    var form_class;

    $('#car_type').change(function (){
        var type = "";
        $("select option:selected").each(function() {
            type += $( this ).text();
        });
        if (type === "SleepingCar") {
            $('.to_hide').addClass("hidden");
            $('.sleeping_car').removeClass("hidden");
        };
        if (type === "EconomyCar") {
            $('.to_hide').addClass("hidden");
            $('.economy_car').removeClass("hidden");
        };
        if (type === "CoupeCar") {
            $('.to_hide').addClass("hidden");
            $('.coupe_car').removeClass("hidden");
        };
        if (type === "SedentaryCar") {
            $('.to_hide').addClass("hidden");
            $('.sedentary_car').removeClass("hidden");
        };
    });
});