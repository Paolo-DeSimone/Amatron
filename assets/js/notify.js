var notifyPanel = '<div id="notify-panel" name="notify-content" class="shadow"></div>';
var modalPanel = '<div id="modal-panel" name="modal-panel"></div>';

function notify(msg) {
    $("#modal-panel").fadeIn("fast");
    $("#notify-panel").text(msg);
    $("#notify-panel").animate({
        top: 0
    }, {
            duration: 750
            //easing: "easeInOutBack"
        })
}

function notifyError(msg) {
    notifyEvent();
    $("#notify-panel").addClass("notify-error");
    notify(msg)
}

function notifyEvent() {
    $(notifyPanel).appendTo(document.body);
    $(modalPanel).appendTo(document.body);
    $("#modal-panel").bind("click", function (e) {
        e.preventDefault();
        $("#modal-panel").fadeOut("fast").remove();
        $("#notify-panel").animate({
            top: -150
        }, {
                duration: 750,
                //easing: "easeInOutBack",
                complete: function () {
                    $(this).remove()
                }
            })
    })
}

function notifyNotice(msg) {
    notifyEvent();
    $("#notify-panel").addClass("notify-notice");
    notify(msg)
}

function notifySuccess(msg) {
    notifyEvent();
    $("#notify-panel").addClass("notify-success");
    notify(msg)
}

function notifyWarning(msg) {
    notifyEvent();
    $("#notify-panel").addClass("notify-warning");
    notify(msg)
};