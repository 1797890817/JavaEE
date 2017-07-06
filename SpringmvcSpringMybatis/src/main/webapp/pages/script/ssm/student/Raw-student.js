/**
 * 学生组件
 */
SSM.namespace("STU");

SSM.STU = (function() {
	"use strict";
	var _STUTable, ntpDateCache;

	var _STUColumn = {
		id : 0,
		profileName : 1,
		syncPeriod : 2,
		ntpServer_1 : 3,
		ntpServer_2 : 4,
		ntpServer_3 : 5
	}

	var newProfile = {
		'NewNtp' : {
			profile_name : "",
			sync_period : "86400",
			ntp_server_1 : "time.nist.gov",
			ntp_server_2 : "time.windows.com",
			ntp_server_3 : ""
		}
	};
	function getSTUTableData(Radius) {
		var array = $.map(Radius,
				function(item, index) {
					return [ [
							item.id,
							"<span class='nameHyperlinks' ntpid='" + item.id
									+ "'>" + item.profile_name + "</span>",
							item.sync_period, item.ntp_server_1,
							item.ntp_server_2, item.ntp_server_3 ] ];
				});
		return array;
	}

	function getNtpNames(Ntp) {
		var array = $.map(Ntp, function(item, index) {
			return [ [ item.id, item.profile_name ] ];
		});
		return array;
	}

	//var origin_userData;
	function datatableParamExt() {
		var orig_length = 0;
		var cur_page = 0;
		var paramExt = {
			"fnPreDrawCallback" : function(oSettings) {
				cur_page = datatablePreDraw(oSettings, orig_length, cur_page);
				orig_length = oSettings._iDisplayLength;
			},

			"fnRowCallback" : function(nRow, aaData, iDisplayIndex,
					iDisplayIndexFull) {
				$('td:eq(1) span', nRow).click(function(e) {
					e.preventDefault();
					/*can set value*/
					var id = $('td:eq(1) span', nRow).attr("ntpid");
					$("#ntpNetId").val("");
					initNtp();
					SSM.STU.setFormDate(id);
				});
			},
			"fnServerData" : function(sSource, aoData, fnCallback) {
				var sort_str = "", sorobj, sortArray = new Array();
				sortArray = [ "id", "profile_name", "sync_period",
						"ntp_server_1", "ntp_server_2", "ntp_server_3" ];
				sorobj = datatableSort(aoData, sortArray);
				sort_str = sorobj.sort_str;
				cur_page = sorobj.cur_page;
				var data = {
					"method" : "ntp",
					"pageSize" : aoData[4]["value"],
					"pageIndex" : cur_page,
					"sort" : sort_str,
					"needDetail" : 1
				}

				var ajaxReturn = function(response) {
					if (response.result != SSM.constant.OPERA_SUCCESS) {
						jboxErrorMsg(response);
					}
					var resp = {
						"iTotalRecords" : response.pageCount,
						"iTotalDisplayRecords" : response.pageCount,
						"aaData" : getSTUTableData(response.ntpProfiles)
					};
					fnCallback(resp);
					/*This here stopPropagation*/
					datatableCheckAll("ntpCheckAll", "ntp_sel_list");
					ntpDateCache = response.ntpProfiles;
					$("#dialogBg").hide();
				}
				SSM.ajaxUtil.ajaxCall(sSource, "POST", data, true, ajaxReturn,
						SSM.constant.ajaxLoadingObj);
			},
			"aoColumns" : [ {
				"sWidth" : "3%"
			}, {
				"sWidth" : "20%"
			}, {
				"sWidth" : "17%"
			}, {
				"sWidth" : "20%"
			}, {
				"sWidth" : "20%"
			}, {
				"sWidth" : "20%"
			} ],
			"aoColumnDefs" : [
					{
						"aTargets" : [ _STUColumn.id ],
						"bSortable" : false,
						sClass : "cell_center",
						"mRender" : function(val, type, full) {
							return "<input type='checkbox' name='ntp_sel_list'  class='chkbox' value='"
									+ val + "'>";
						}
					}, {
						"aTargets" : [ _STUColumn.profileName ],
						"bSortable" : true
					} ]
		};
		return paramExt;
	}
	function buildNtpTable(reportId, tableId, id) {
		var paramExtend, param, options;
		commonDatatable(reportId, tableId, getNtpTableColumn());
		param = getDatableCommonOptions(tableId, 'config/network/list');
		paramExtend = datatableParamExt();
		options = $.extend(true, {}, param, paramExtend);
		_STUTable = $('#' + reportId).dataTable(options);
	}

	function getNtpTableColumn() {
		/**/

		var headList = [ {
			element : "input",
			id : "ntpCheckAll",
			type : "checkbox"
		}, $.i18n.prop("comm_template_name"), $.i18n.prop("ntpPeriod"),
				$.i18n.prop("term_ntpserver", 1),
				$.i18n.prop("term_ntpserver", 2),
				$.i18n.prop("term_ntpserver", 3) ];
		return generatingThead(headList);
	}

	function initNtp() {
		var prop;
		validParam.networkNtpValid();
		$("#ntpProfileName").attr("readonly", false);
		$("#ntpProfileName").focus();
		$("#ntp_server_save").attr("ntpid", "");
		prop = newProfile.NewNtp;
		setNtp(prop);
	}

	function setFormDate(id) {//This here edit form
		var prop;
		if (isNull(ntpDateCache)) {
			SSM.STU.getNtp();
		} else {
			$(ntpDateCache).each(function(item, value) {
				if (this.id == id) {
					prop = this;
				}
			});
		}

		$("#ntpProfileName").attr("readonly", true);
		$("#ntp_server_save").attr("ntpid", id);

		/*common set date*/
		$("#ntp_content").show();
		$("#ntp_table_content").hide();
		setNtp(prop);
		$("#ntpUpTimePeriod").focus();
	}

	function getNtpProfiles(id, type) {
		var data = {
			"method" : "ntp",
			needDetail : 0,
			jsonrpc : type,
			id : id
		}
		var ajaxReturn = function(data) {
			if (data.result != SSM.constant.OPERA_SUCCESS) {
				jboxErrorMsg(data);
			} else {
				if (id && !isNull(id)) {
					SSM.STU.initNtp();
					$("#ntpProfileName").attr("readonly", true);
					$("#ntp_server_save").attr("ntpid", id);
					/*common set date*/
					if (!isNull(type) && type == false)
						changeJumpMenu({
							menuli : "#network_tab",
							menuCotent : "#tab_configHome"
						}, {
							ParentLi : "#component_tab",
							childLi : "#ntp_tab",
							childCotent : "#tab_ntp"
						}, "1") //为0显示当前页面，
					clickChage("#ntp_content", "#ntp_table_content", "block",
							"none");
					setNtp(data.ntpProfiles[0]);
				}
				if (type) {
					var selecList = getNtpNames(data.ntpProfiles);
					SelectOptionSetInit(id, "ntpProfiles", selecList, "default");
				}

				return;
			}
		};
		SSM.ajaxUtil.ajaxCall("config/network/list", "POST", data, true,
				ajaxReturn);
	}

	function setNtp(prop) {
		//profile_name
		$("#ntpProfileName").val(prop.profile_name);
		$("#ntpUpTimePeriod").val(prop.sync_period);
		$("#ntp_server_1").val(prop.ntp_server_1);
		$("#ntp_server_2").val(prop.ntp_server_2);
		$("#ntp_server_3").val(prop.ntp_server_3);

	}

	function save_ntp(id) {
		var param, commonParam, url, ntpDate, data;
		ntpDate = $('#ntpFileInfo').serializeJson();
		param = {
			profile_name : ntpDate.ntpProfileName,
			sync_period : ntpDate.ntpUpTimePeriod,
			ntp_server_1 : ntpDate.ntp_server_1,
			ntp_server_2 : ntpDate.ntp_server_2,
			ntp_server_3 : ntpDate.ntp_server_3,
		}

		if (isNull(id)) {
			data = {
				method : "networkNtpAdd",
				"module" : "ntp",
				param : param
			}
		} else {
			commonParam = $.extend(true, {}, param, {
				id : id
			});

			data = {
				"module" : "ntp",
				method : "networkNtpMod",
				param : commonParam
			}
		}

		var ajaxReturn = function(data) {
			if (data.result != SSM.constant.OPERA_SUCCESS) {
				if (data.result == 102101) {
					var valid = "<span class='errorSpan'></span>";
					validParam.errorShowTip("#ntpProfileName", $.i18n
							.prop("timeRangeNameExist"), valid);
					return;
				}
				jboxErrorMsg(data);
			} else {
				var netId = $("#ntpNetId").val();
				if (isNull(netId)) {
					jboxSuccessMsg($.i18n.prop("savesucceed"));
					clickChage("#ntp_content", "#ntp_table_content", "none",
							"block");
					SSM.STU.getNtp();
				} else {
					if (data.method == "networkNtpAddResp") {
						$("#ntpProfiles").append(
								"<option selected='selected' value='" + data.id
										+ "'>" + $("#ntpProfileName").val()
										+ "</option>");
						$("#ntpProfiles").val(data.id);
						setSelectValue("ntpProfiles", $("#ntpProfileName")
								.val());
						$("#editNtpPro").show();
					}
					changeJumpMenu({
						menuli : "#network_tab",
						menuCotent : "#tab_configHome"
					}, {
						ParentLi : "#component_tab",
						childLi : "#ntp_tab",
						childCotent : "#tab_ntp"
					}, "0") //为0显示当前页面，
				}
				return;
			}
		};
		//SSM.ajaxUtil.ajaxCall("config/radius/getRaiusProfileNames", "POST", data, true, ajaxReturn);
		SSM.ajaxUtil.ajaxCall("config/network/operate", "POST", data, true,
				ajaxReturn);
	}

	function deleteNtp(id, nRows) {
		var submit = function() {
			var data = {
				"module" : "ntp",
				method : "networkNtpDel",
				param : {
					ids : id
				}
			}
			var ajaxReturn = function(data) {
				if (data.result != SSM.constant.OPERA_SUCCESS) {
					data.updateCallback = SSM.STU.getNtp;
					jboxErrorMsg(data);
				} else {
					jboxSuccessMsg($.i18n.prop('deletesucceed'));

					$(nRows).each(function() {
						_STUTable.fnDeleteRow(this);

					});
					$("#ntpCheckAll").attr("checked", false);
					return;
				}
			};
			SSM.ajaxUtil.ajaxCall("config/network/operate", "POST", data, true,
					ajaxReturn);
		}
		jboxConfirmMsg($.i18n.prop('comm_batch_delete_confirm'), submit);
	}

	function getNtp(id) {
		buildNtpTable("ntp_report_containers", "#configntpTable", id);//or buildNtpTable("ntp_report_containerss", "#configRadiusTable",search);
	}

	return {
		initNtp : initNtp,
		save_ntp : save_ntp,
		deleteNtp : deleteNtp,
		getNtp : getNtp,
		setFormDate : setFormDate,
		getNtpProfiles : getNtpProfiles

	};

})();

$(function() {
	//TODO SSM.STU //ntpTableAdd  ntpTabEdit ntpTabDelete ntpTableRefresh
	$("#ntpTableAdd").click(function() {
		$("#ntpNetId").val("");
		clickChage("#ntp_content", "#ntp_table_content", "block", "none");
		SSM.STU.initNtp();

	});

	$("#ntp_server_cancel").click(function(e) {
		e.preventDefault();
		var ntpNetId = $("#ntpNetId").val();
		if (!isNull(ntpNetId)) {
			changeJumpMenu({
				menuli : "#network_tab",
				menuCotent : "#tab_configHome"
			}, {
				ParentLi : "#component_tab",
				childLi : "#ntp_tab",
				childCotent : "#tab_ntp"
			}, "0") //为0显示当前页面，
		}
		clickChage("#ntp_content", "#ntp_table_content", "none", "block");
	});
	$("#ntpTabDelete")
			.click(
					function(e) {
						e.preventDefault();
						var nRow, ids;
						nRows = $(
								"#ntp_report_containers input[name='ntp_sel_list']:checkbox:checked")
								.parent().parent("tr").map(function() {
									return this;
								}).get();
						ids = getRowsIds("#ntp_report_containers",
								'ntp_sel_list');
						if (isNull(ids)) {
							return;
						}
						SSM.STU.deleteNtp(ids, nRows);
					});
	$("#ntpTabEdit").click(function(e) {
		e.preventDefault();
		$("#ntpNetId").val("");
		var id;
		/*can set value*/
		id = selectOnlyOneRow("#ntp_report_containers", "ntp_sel_list");
		if (isNull(id)) {
			return;
		}
		SSM.STU.initNtp();
		SSM.STU.setFormDate(id);
	});
	$("#ntpTableRefresh").click(function(e) {
		e.preventDefault();
		SSM.STU.getNtp("");
	});

	$("#ntp_report_containers tbody tr").live('click', function(e) {
		e.preventDefault();
		Select_Datatable_Row($(this));
	});
	$("#ntp_server_save").click(
			function() {
				//e.preventDefault();
				var id;
				id = $(this).attr("ntpid");
				if (validParam.getValid("ntpFileInfo", "ntpProfileName")
						&& validParam.ntpServerExclusive()) {
					if (isNull(id)) {
						SSM.STU.save_ntp();
					} else {
						SSM.STU.save_ntp(id);
					}
				}
			});

	/*rooter*/
});
