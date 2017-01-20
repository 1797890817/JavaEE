var ctx = '/SpringmvcSpringMybatis';

var LOCAL_STORAGE_KEY_PREFIX = "smi_local_storage";
var storage = window.localStorage;

function getLocalStorage(key) {
    var value = storage.getItem(LOCAL_STORAGE_KEY_PREFIX + key);
    if (value == "" || value == null || value == undefined) {
        return "";
    }
    return value;
}

function setLocalStorage(key, value) {
    storage.setItem(LOCAL_STORAGE_KEY_PREFIX + key, value);
}

function clearLocalStorage(){
	// 保留登录用户名
	var username = getLocalStorage("username");
	storage.clear();
	setLocalStorage("username",username);
}

function removeStorage(key) {
    storage.removeItem(LOCAL_STORAGE_KEY_PREFIX + key);
}

function removesStorage(key) {
    window.sessionStorage.removeItem(LOCAL_STORAGE_KEY_PREFIX + key);
}

var dic = new Object();

dic.getJsonData = function (serviceCode, methodName) {
    return dic.getFormData(serviceCode, methodName);
};

dic.getFormData = function (serviceCode, methodName, formId) {
    var obj = new Object();
    if (formId) {
        var formData = $('#' + formId).serializeArray();
        for (var index = 0; index < formData.length; index++) {
            var p = formData[index];
            if (obj[p["name"]] == undefined) {
                obj[p["name"]] = p["value"];
            }else {
                obj[p["name"]] += ',' + p["value"];
            }
        }
    }

    obj['serviceCode'] = serviceCode;
    obj['method'] = methodName;
    return obj;
};

// ajax 方法封装
dic.getAjaxData = function (type, param, success, error, beforesend, complete) {
    $.ajax({
        type: type,
        url: ctx_url,
        data: param,
        dataType: 'json',
        success: (success == "" || success == undefined) ? (function () {
        }) : success,
        beforeSend: (beforesend == "" || beforesend == undefined) ? (function () {
        }) : success,
        complete: (complete == "" || complete == undefined) ? (function () {
        }) : complete,
        error: (error == "" || error == undefined) ? (function () {
        }) : error
    });
};

// 显示加载提示框
function showLoadingDialog(value){
	if ($("#mask-loading").size()==0){
		var style="border-radius: 5px; color: #FFF; font-size: 16px;width: 60%;background: rgba(98, 98, 98, 0.8) none repeat scroll 0 0 !important;background: #000;position: fixed;left: 20%;top: 45%;z-index: 9999;padding: 10px;box-sizing: border-box;text-align: center;";
        var content;
        if(isNull(value)){
        	content = "正在加载中...";
        }else{
            content = value;
        }
            
        $(document.body).append("<div style='" + style + "' id='mask-loading'><img style='vertical-align:middle;' src='" + ctx + "/pages/images/waiting.gif'/>" + content + "<br></div>");
     }
}

// 提示框
function showToast(text) {
	if ($("#mask-toast").size()==0){
	    var style="border-radius: 8px; color: #FFF; font-size: 16px;width: 50%;background: rgba(98, 98, 98, 0.8) none repeat scroll 0 0 !important;background: #000;position: fixed;left: 30%;top: 45%;z-index: 19999;padding: 10px;box-sizing: border-box;text-align: center;";
    	$(document.body).append("<div style='" + style + "' id='mask-toast'>" + text + "</div>");
	}
	setTimeout(function(){
		$("#mask-toast").remove();
	},3000);
}

// 隐藏加载提示框
function hideLoadingDialog() {
	$("#mask-loading").remove();
}

// 校验是否为空
function isNull(value) {
    if (value == undefined || value == null || value == "") {
        return true;
    } else {
        return false;
    }
}

// 电话号码校验
function isMobile(value) {
    var mobile = /^1\d{10}$|^0\d{2,3}-?\d{7,8}(-?\d{1,4})?$/;
    return mobile.test(value);
}

// 解析序列化时间
function formatTime(val) {
    var re = /-?\d+/;
    var m = re.exec(val);
    var d = new Date(parseInt(m[0]));
    return d.format("yyyy-MM-dd hh:mm");
}

// 格式化时间
Date.prototype.format = function (format){
    var o = {
        "M+": this.getMonth() + 1, // month
        "d+": this.getDate(),    // day
        "h+": this.getHours(),   // hour
        "m+": this.getMinutes(), // minute
        "s+": this.getSeconds(), // second
        "q+": Math.floor((this.getMonth() + 3) / 3),  // quarter
        "S": this.getMilliseconds() // millisecond
    };
    if (/(y+)/.test(format)){
    	format = format.replace(RegExp.$1,(this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o){
    	if (new RegExp("(" + k + ")").test(format)){
    		format = format.replace(RegExp.$1,RegExp.$1.length == 1 ? o[k] :("00" + o[k]).substr(("" + o[k]).length));
    	}
    }
    return format;
};

// 跳转链接地址
function goToPage(url){
	window.location.href = url;
}

// 跳转登录
function goToLogin(){
	window.location.href = ctx+"/pages/login.html";
}

// 退出系统
function loginout(){
	clearLocalStorage();
	window.location.href = ctx+"/pages/login.html";
}
