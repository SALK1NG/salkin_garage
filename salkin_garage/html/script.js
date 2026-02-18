let selectedVeh = null;

window.addEventListener('message', function(event) {
    if (event.data.type === "open") {
        let lang = event.data.translations;
        $("body").fadeIn();
        
        // Texte aus Config anwenden
        $(".badge-menu").text(lang.menu_badge);
        $("#search").attr("placeholder", lang.search_placeholder);
        $(".close-text").text(lang.close_btn);
        $("#help-text").text(lang.rotate_help);

        if (event.data.isImpound) {
            $(".title-text").text(lang.impound_title);
            $(".parkout-text").text(event.data.price + lang.parkout_impound_btn);
        } else {
            $(".title-text").text(lang.garage_title);
            $(".parkout-text").text(lang.parkout_btn);
        }
        
        setupGarage(event.data.vehicles);
    }
});

function setupGarage(vehicles) {
    $("#vehicle-list").empty();
    if (!vehicles || vehicles.length === 0) return;

    vehicles.forEach(veh => {
        $("#vehicle-list").append(`<div class="vehicle-item" data-plate="${veh.plate}">${veh.name}</div>`);
    });

    $(".vehicle-item").click(function() {
        $(".vehicle-item").removeClass("selected");
        $(this).addClass("selected");
        let plate = $(this).data("plate");
        selectedVeh = vehicles.find(v => v.plate === plate);
        $.post(`https://${GetParentResourceName()}/previewVehicle`, JSON.stringify({ props: selectedVeh.vehicleProps }));
    });
}

$("#parkout-btn").click(function() {
    if (selectedVeh) {
        $.post(`https://${GetParentResourceName()}/parkOut`, JSON.stringify({ vehicle: selectedVeh }));
        $("body").fadeOut();
    }
});

$("#close-btn").click(function() {
    $.post(`https://${GetParentResourceName()}/close`);
    $("body").fadeOut();
});

$(document).keyup(function(e) {
    if (e.keyCode === 27) {
        $.post(`https://${GetParentResourceName()}/close`);
        $("body").fadeOut();
    }
});

$("#search").on("keyup", function() {
    let v = $(this).val().toLowerCase();
    $(".vehicle-item").filter(function() { $(this).toggle($(this).text().toLowerCase().indexOf(v) > -1); });
});