// setInterval() 方法可按照指定的周期（以毫秒计）来调用函数或计算表达式。

// innerText可获取或设置指定元素标签内的文本值，
// 从该元素标签的起始位置到终止位置的全部文本内容(不包含html标签)。
//
// 获取元素的内容：element.innerText;
// 给元素设置内容：element.innerText = string;

//window.location.href="",根据双引号中的地址打开新网页
window.setInterval(changeLeaveTime,1000);

function changeLeaveTime() {
    let time=parseInt(document.getElementById("leaveTime").innerText);
    time--;
    if(time===0){
        window.location.href="/bank_welcome.html";
    }else{
        document.getElementById("leaveTime").innerText=time;
    }
}