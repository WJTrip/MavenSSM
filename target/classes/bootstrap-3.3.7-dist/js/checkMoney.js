$(function() {
    $("#money").blur(function (e) {
        if ($(this).val() > $("#balance").val()) {
            $("#moneyError").text("金额应不大于余额！");
        } else {
            $("#moneyError").text("");
        }
    });
})