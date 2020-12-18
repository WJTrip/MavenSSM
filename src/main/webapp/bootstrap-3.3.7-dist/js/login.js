let userName_correct = false;
let password_correct = false;

/**
 * 使用jQuery实现基于ajax的用户登录
 */
function jqAjaxCheckLogin() {
    if (!userName_correct || !password_correct) {
        $("#inputID").blur();
        $("#inputPassWord").blur();
        return;
    }
    let data={
        inputID:$("#inputID").val(),
        inputPassWord:$("#inputPassWord").val()
    };

    $.ajax({
        type: "post",
        url: "loginCheck",
        data: data,
        dataType: "json",
        success: function(response) {
            if (response.code === 0) {
                window.location.href = ("bank_main.jsp?ID="+data.inputID+"&passWord="+data.inputPassWord);
            }
            else {
                $("#checkError").text(response.info);
            }
        }
    });
}

$(function() {
    $("#inputID").blur(function(e) {
        if ($(this).val() === "") {
            $("#IDError").text("用户名不能为空！");
        } else {
            $("#IDError").text("");
            userName_correct = true;
        }
    });

    $("#inputPassWord").blur(function(e) {
        if ($(this).val() === "") {
            $("#passWordError").text("密码不能为空！");
        } else {
            $("#passWordError").text("");
            password_correct = true;
        }
    });

});