/**
 * 学生组件
 */
SSM.namespace("STU");
SSM.STU = (function() {
	"use strict";
	var newStudent = { // 如果需要初始值，此处可以给默认值
		'NewStu' : {
			id : "",
			stu_name : "",
			stu_sex : "",
			stu_id : "",
		}
	};

	function initStu() {
		var prop = newStudent.NewStu;
		setStu(prop);
	}

	function getStudents(id, type) {
		var data = {
			"method" : "Stu",
			needDetail : 0,
			jsonrpc : type,
			id : id
		}
		var ajaxReturn = function(data) {
			if (data.result != SSM.constant.OPERA_SUCCESS) {
				jboxErrorMsg(data);
			} else {
				if (id && !isNull(id)) {
					SSM.STU.initStu();
					$("#StuProfileName").attr("readonly", true);
					$("#Stu_server_save").attr("Stuid", id);
					/* common set date */
					if (!isNull(type) && type == false)
						changeJumpMenu({
							menuli : "#network_tab",
							menuCotent : "#tab_configHome"
						}, {
							ParentLi : "#component_tab",
							childLi : "#Stu_tab",
							childCotent : "#tab_Stu"
						}, "1") // 为0显示当前页面，
					clickChage("#Stu_content", "#Stu_table_content", "block",
							"none");
					setStu(data.StuProfiles[0]);
				}
				if (type) {
					var selecList = getStuNames(data.StuProfiles);
					SelectOptionSetInit(id, "StuProfiles", selecList, "default");
				}

				return;
			}
		};
		SSM.ajaxUtil.ajaxCall("config/network/list", "POST", data, true,
				ajaxReturn);
	}

	function setStu(prop) {
		// stu_name
		$("#StuProfileName").val(prop.stu_name);
		$("#StuUpTimePeriod").val(prop.stu_sex);
		$("#stu_id").val(prop.stu_id);
		$("#id").val(prop.id);

	}

	function saveStu(id) {
		var param, commonParam, url, StuDate, data;
		StuDate = $('#StuFileInfo').serializeJson();
		param = {
			stu_name : StuDate.StuProfileName,
			stu_sex : StuDate.StuUpTimePeriod,
			stu_id : StuDate.stu_id,
			id : StuDate.id,
			Stu_server_3 : StuDate.Stu_server_3,
		}

		if (isNull(id)) {
			data = {
				method : "networkStuAdd",
				"module" : "Stu",
				param : param
			}
		} else {
			commonParam = $.extend(true, {}, param, {
				id : id
			});

			data = {
				"module" : "Stu",
				method : "networkStuMod",
				param : commonParam
			}
		}

		var ajaxReturn = function(data) {
			if (data.result != SSM.constant.OPERA_SUCCESS) {
				if (data.result == 102101) {
					var valid = "<span class='errorSpan'></span>";
					validParam.errorShowTip("#StuProfileName", $.i18n
							.prop("timeRangeNameExist"), valid);
					return;
				}
				jboxErrorMsg(data);
			} else {
				var netId = $("#StuNetId").val();
				if (isNull(netId)) {
					jboxSuccessMsg($.i18n.prop("savesucceed"));
					clickChage("#Stu_content", "#Stu_table_content", "none",
							"block");
					SSM.STU.getStu();
				} else {
					if (data.method == "networkStuAddResp") {
						$("#StuProfiles").append(
								"<option selected='selected' value='" + data.id
										+ "'>" + $("#StuProfileName").val()
										+ "</option>");
						$("#StuProfiles").val(data.id);
						setSelectValue("StuProfiles", $("#StuProfileName")
								.val());
						$("#editStuPro").show();
					}
					changeJumpMenu({
						menuli : "#network_tab",
						menuCotent : "#tab_configHome"
					}, {
						ParentLi : "#component_tab",
						childLi : "#Stu_tab",
						childCotent : "#tab_Stu"
					}, "0") // 为0显示当前页面，
				}
				return;
			}
		};
		// SSM.ajaxUtil.ajaxCall("config/radius/getRaiusProfileNames", "POST",
		// data, true, ajaxReturn);
		SSM.ajaxUtil.ajaxCall("config/network/operate", "POST", data, true,
				ajaxReturn);
	}

	function delStu(id, nRows) {
		var submit = function() {
			var data = {
				"module" : "Stu",
				method : "networkStuDel",
				param : {
					ids : id
				}
			}
			var ajaxReturn = function(data) {
				if (data.result != SSM.constant.OPERA_SUCCESS) {
					data.updateCallback = SSM.STU.getStu;
					jboxErrorMsg(data);
				} else {
					jboxSuccessMsg($.i18n.prop('deletesucceed'));

					$(nRows).each(function() {
						_STUTable.fnDeleteRow(this);

					});
					$("#StuCheckAll").attr("checked", false);
					return;
				}
			};
			SSM.ajaxUtil.ajaxCall("config/network/operate", "POST", data, true,
					ajaxReturn);
		}
		jboxConfirmMsg($.i18n.prop('comm_batch_delete_confirm'), submit);
	}

	function getStu(id) {
		buildStuTable("Stu_report_containers", "#configStuTable", id);// or
		// buildStuTable("Stu_report_containerss",
		// "#configRadiusTable",search);
	}

	return {
		initStu : initStu,
		saveStu : saveStu, // 新增和更新可以用一个
		delStu : delStu,
		getStu : getStu,
		getStudents : getStudents
	};
})();

$(function() {
	// TODO SSM.STU //StuTableAdd StuTabEdit StuTabDelete StuTableRefresh
	$("#StuTableAdd").click(function() {
		$("#StuNetId").val("");
		clickChage("#Stu_content", "#Stu_table_content", "block", "none");
		SSM.STU.initStu();
	});

	$("#Stu_server_cancel").click(function(e) {
		e.preventDefault();

	});
	$("#StuTabDelete")
			.click(
					function(e) {
						e.preventDefault();
						var nRow, ids;
						nRows = $(
								"#Stu_report_containers input[name='Stu_sel_list']:checkbox:checked")
								.parent().parent("tr").map(function() {
									return this;
								}).get();
						ids = getRowsIds("#Stu_report_containers",
								'Stu_sel_list');
						if (isNull(ids)) {
							return;
						}
						SSM.STU.delStu(ids, nRows);
					});
	$("#StuTabEdit").click(function(e) {
		e.preventDefault();

	});
	$("#StuTableRefresh").click(function(e) {
		e.preventDefault();
		SSM.STU.getStu("");
	});

	$("#Stu_report_containers tbody tr").live('click', function(e) {
		e.preventDefault();
		Select_Datatable_Row($(this));
	});
	$("#Stu_server_save").click(
			function() {
				// e.preventDefault();
				var id;
				id = $(this).attr("Stuid");
				if (validParam.getValid("StuFileInfo", "StuProfileName")
						&& validParam.StuServerExclusive()) {
					if (isNull(id)) {
						SSM.STU.saveStu();
					} else {
						SSM.STU.saveStu(id);
					}
				}
			});

	/* rooter */
});
