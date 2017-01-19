$(document).ready(function () {

    var form_class;

    $('#car_type').change(function (){
        var type = "";
        $("select option:selected").each(function() {
            type += $( this ).text();
        });
        if (type === "SleepingCar") {
            $('.economy, .sedentary, .coupe').addClass("hidden");
            $('.sleeping').removeClass("hidden");
        };
        if (type === "EconomyCar") {
            $('.sleeping, .sedentary, .coupe').addClass("hidden");
            $('.economy').removeClass("hidden");
        };
        if (type === "CoupeCar") {
            $('.economy, .sedentary, .sleeping').addClass("hidden");
            $('.coupe').removeClass("hidden");
        };
        if (type === "SedentaryCar") {
            $('.economy, .sleeping, .coupe').addClass("hidden");
            $('.sedentary').removeClass("hidden");
        };
    });
});