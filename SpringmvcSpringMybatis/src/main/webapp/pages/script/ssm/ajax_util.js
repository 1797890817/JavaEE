CST.namespace("ajaxUtil");

CST.ajaxUtil = (function() {
	"use strict";
	var debug = false;
	var isShowTokenOverTime = false;
	var setDebugLevel = function(enableDebug) {
		debug = enableDebug;
	};
	function processToken(data, callback) {
		if (data.result == "0" && (data.jsonrpc == "tokenInvalid" || data.reason == "token非法")) {
			// var user = user_login;
			if (!isShowTokenOverTime){
				isShowTokenOverTime = true;
				var callback = function() {
					logoutCheck("unknown");
					isShowTokenOverTime = false;
				}
				
				var checkConfirmDlg = function() {
					if ($("#defaultConfirmDlg").attr("class").indexOf("in") == -1){
						callback();
					}else{
						setTimeout(checkConfirmDlg, 100);
						
					}
				}
				jboxConfirmMsg($.i18n.prop("sys_timeout_system_exit"), callback, null,null,null,true);
				setTimeout(checkConfirmDlg, 2000);
			}
		} else {
			callback(data);
		}
	}
	function ajaxLoading(url, type, data, async, callback, tip) {
		var reqMethod = data.method;
		var myDate = new Date();
		var reqTime = myDate.toLocaleTimeString();
		var millS = myDate.getMilliseconds();
		$.ajax({
			type : type,
			url : url,
			dataType : 'json',
			data : data,
			// TODO: beforeSend: showLoadingImgFn,
			async : async,
			beforeSend : function() {
				$("#dialogBg").show();
			},
			complete : function() {
				$("#dialogBg").hide();
			}
		}).done(function(data) {
			//var respMethod = data.method;
			myDate = new Date();
			var respTime = myDate.toLocaleTimeString();
			// millS + " ,resp:" + respMethod + ",respTime:" + respTime + "," +
			// myDate.getMilliseconds());
			if (debug) {
			}
			processToken(data, callback);
		}).always(function() {
			$("#dialogBg").hide();
			// TODO: remove loading image
		}).fail(function(jqXHR, textStatus, errorThrown) {
			$("#dialogBg").hide();
		}).start(function() {
			$("#dialogBg").show();
		});
	}
	function startWith(s,full) {
		if (s == null || s == "" || full.length == 0 || s.length > full.length)
			return false;
		if (full.substr(0, s.length) == s)
			return true;
		else
			return false;
		return true;
	}
	/* ajaxobj{type:0,tip:"正在加载中",className:"",timeout:10000} */
	function ajaxCall(url, type, data, async, callback, ajaxLoadingObj, checkPermission, showWaitingDlg) {
		if (startWith("/",url)) {
			url = url.substring(1, url.length);
		}

		var ajaxTimeout = 0;
		if (!isNull(ajaxLoadingObj)) {
			ajaxTimeout = ajaxLoadingObj.timeout;
		}
		//var reqMethod = data.method;
		var myDate = new Date();
		var reqTime = myDate.toLocaleTimeString();
		var millS = myDate.getMilliseconds();
		if (showWaitingDlg){
			$("#skyLoading").show();
		}
		$.ajaxSetup({cache:false});
		$.ajax({
			type : type,
			url : url,
			dataType : 'json',
			data : data,
			// TODO: beforeSend: showLoadingImgFn,
			async : async,
			// timeout: ajaxTimeout,

			// timeout : ajaxObj.timeout,
			beforeSend : function() {
				if (!isNull(ajaxLoadingObj)) {
					$("#dialogBg li").text(ajaxLoadingObj.tip);
					$("#dialogBg").show();
				}
			},
			complete : function() {
				if (!isNull(ajaxLoadingObj)) {
					$("#dialogBg").hide();
				}
			}
		}).done(function(data) {
			if (showWaitingDlg){
				$("#skyLoading").hide();
			}
			$("#dialogBg").hide();
			//var respMethod = data.method;
			myDate = new Date();
			var respTime = myDate.toLocaleTimeString();
			// $("#dialogBg").hide();
			// millS + " ,resp:" + respMethod + ",respTime:" + respTime + "," +
			// myDate.getMilliseconds());
			if (debug) {
			}
			processToken(data, callback);
			return false;
		}).always(function() {
			// TODO: remove loading image
		}).fail(function(jqXHR, textStatus, errorThrown) {
		});
	}

	function ajaxCallByType(url, type, data, dataType, async, callback, ajaxobj) {
		var reqMethod = data.method;
		var myDate = new Date();
		var reqTime = myDate.toLocaleTimeString();
		var millS = myDate.getMilliseconds();
		$.ajax({
			type : type,
			url : url,
			dataType : dataType,
			data : data,
			// TODO: beforeSend: showLoadingImgFn,
			async : async,
			beforeSend : function() {
				$("#dialogBg").show();
			},
			complete : function() {
				$("#dialogBg").hide();
			}
		}).done(function(data) {
			//var respMethod = data.method;
			myDate = new Date();
			var respTime = myDate.toLocaleTimeString();
			// millS + ",resp:" + respMethod + ",respTime:" + respTime + "," +
			// myDate.getMilliseconds() );
			if (debug) {
			}
			processToken(data, callback);
		}).always(function() {
			// TODO: remove loading image
		}).fail(function(jqXHR, textStatus, errorThrown) {

			// console.debug(textStatus, errorThrown);
		});
	}

	/* get */
	function getAjaxLoadingObj(type, tip) {
		var ajaxTip = $.i18n.prop("sys_ajaxtip_loading");
		if (!isNull(tip)) {
			ajaxTip = tip;
		}
		var ajaxLoadingObj = new Object();
		if (type == 0) {
			ajaxLoadingObj = CST.constant.ajaxLoadingObj
		} else if (type == 1) {
			ajaxLoadingObj = {
				type : 1,
				tip : ajaxTip,
				timeout : 10000
			}
		} else if (type == 2) {
			ajaxLoadingObj = {
				type : 2,
				tip : ajaxTip,
				timeout : 10000
			}
		}
		return ajaxLoadingObj;
	}

	return {
		setDebugLevel : setDebugLevel,
		ajaxCall : function(url, type, data, async, callback, ajaxobj,checkPermission,showWaitingDlg) {
			isNull(data)? "" : data.param = JSON.stringify(data.param);
			return ajaxCall(url, type, data, async, callback, ajaxobj,checkPermission,showWaitingDlg);
		},
		ajaxCallByType : function(url, type, data, dataType, async, callback, ajaxobj) {
			return ajaxCallByType(url, type, data, dataType, async, callback, ajaxobj);
		},
		getAjaxLoadingObj : getAjaxLoadingObj
	};
})();
