/**
 * 学生组件
 */
SSM.namespace("STU");
SSM.STU = (function() {
	"use strict";

	function getStu(id) {
		if (!isNull(id)) {
			window.location.href = "/SpringmvcSpringMybatis/student/getone/"
					+ id;
		}
	}

	function getStudents() {
		$.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : '/SpringmvcSpringMybatis/student/getall',
			processData : false,
			dataType : 'json',
			data : '{}',
			success : function(data) {
				console.log("%o", data);
				// 动态修改DOM
				append2Dom(data);

			},
			error : function() {
				alert("杯具了，保存失败！");
			}
		});

	}

	function append2Dom(list) {
		// 判断list的非空
		if (isNull(list)) {
			return
		} else {
			var items = "";
			// 追加动态生成的组件
			var title ="<tr><th>选择</th><th>准考证号</th><th>姓名</th><th>性别</th></tr>";
			for (var i = 0; i < list.length; i++) {
				var tmp = "<tr><td><input type='checkbox' name='ids' value='"
						+ list[i].id + "' /></td><td>" + list[i].stuId
						+ "</td><td>" + list[i].stuName + "</td><td>"
						+ list[i].stuSex + "</td>" + "</tr>";
				items = items + tmp;
			}
			
			$("#myTable").empty();//删除原来的子元素，防止重复生成
			// 获取需要追加元素的组件
			$("#myTable").append(title+items);
		}
	}

	function saveStu(id) { // 有id为更新，没有id为新增！
		var requesturl = "/SpringmvcSpringMybatis/student/addOrmod";
		var reqdata;
		if (isNull(id)) {
			reqdata = '{"stuName":"' + $("#stuName").val() + '","stuSex":"'
					+ $("#stuSex").val() + '","stuId":"' + $("#stuId").val()
					+ '"}';

		} else {
			reqdata = '{"stuName":"' + $("#stuName").val() + '","stuSex":"'
					+ $("#stuSex").val() + '","stuId":"' + $("#stuId").val()
					+ '","id":"' + $("#id").val() + '"}';
		}

		$.ajax({
					type : 'POST',
					contentType : 'application/json',
					url : requesturl,
					processData : false,
					dataType : 'json',
					data : reqdata,
					success : function(data) {
						console.log("%o", data);
						//alert(data.result);
						//返回到主页面
						window.location.href = "/SpringmvcSpringMybatis/pages/jsp/student/studentMain.jsp"
					},
					error : function() {
						alert("杯具了，保存失败！");
					}
				});

	}

	function delStu(ids) {
		$.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : "/SpringmvcSpringMybatis/student/del",
			processData : false,
			dataType : 'json',
			data : '{"ids":"' + ids + '"}',
			success : function(data) {
				//alert(data.result);
				//返回到主页面
				window.location.href = "/SpringmvcSpringMybatis/pages/jsp/student/studentMain.jsp"
			},
			error : function() {
				alert("杯具了，删除失败！");
			}
		});

	}

	return {
		saveStu : saveStu, // 新增和更新可以用一个
		delStu : delStu,
		getStu : getStu,
		getStudents : getStudents
	};
})();

$(function() {
	//实现页面载入完成后，自动查询所有数据，也就是回到这个主页面要看到数据的变化，类似刷新的功能。
	window.onload=SSM.STU.getStudents();
	// SSM.STU
	// 新增按钮
	$("#stuAddBtn").click(function() {
		window.location.href = "/SpringmvcSpringMybatis/pages/jsp/student/studentMod.jsp";
	});

	// 修改按钮
	$("#stuModBtn").click(function() {
		// 获取选中的checkbox
		var ids = [];
		$("#myTable :input:checked").each(function() {
			ids.push($(this).val());
		});

		if (isNull(ids) || ids.length > 1) {
			alert("请选择一条记录以更新！");
		} else {
			SSM.STU.getStu(ids[0]);
		}
	});

	// 保存按钮
	$("#stuSaveBtn").click(function() {
		// 判断是否存在id,决定是保存还是更新
		var id = $("#id").val();
		if (isNull(id)) {
			SSM.STU.saveStu();
		} else {
			SSM.STU.saveStu(id);
		}
	})

	// 取消按钮
	$("#stuCancelBtn")
			.click(
					function() {
						// 回到主页面
						window.location.href = "/SpringmvcSpringMybatis/pages/jsp/student/studentMain.jsp"
					})

	// 删除按钮
	$("#stuDelBtn").click(function() {
		// 获取选中的checkbox
		var ids = [];
		$("#myTable :input:checked").each(function() {
			ids.push($(this).val());
		});

		if (isNull(ids) || ids.length < 1) {
			showmsg("请至少选择一条记录以删除！");
		} else {
			SSM.STU.delStu(ids);
		}
	});

	// 查询按钮
	$("#stuGetBtn").click(function() {
		SSM.STU.getStudents();
	})

	/* rooter */
});
