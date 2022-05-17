<%@include file="/common/taglib.jsp"%>
<c:url var="newAPI" value="/api/new"/>
<c:url var="newURL" value="/quan-tri/bai-viet/danh-sach"/>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách bài viết</title>
</head>

<body>
	<div class="main-content">
		<form action="<c:url value='/quan-tri/bai-viet/danh-sach'/>" id="formSubmit" method="get">

			<c:if test="${not empty message}">
				<div class="alert alert-${alert}">${message}</div>
			</c:if>
			<div class="row">
				<div class="col-xs-12">
					<h3 class="header smaller lighter blue">Danh sách bài viết</h3>

					<div class="clearfix">
						<div class="pull-right tableTools-container"></div>
					</div>
					<div class="table-header">Results for "Latest Registered Domains"</div>
					<div>
						<table id="dynamic-table"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center">
										<label class="pos-rel"> 
											<input type="checkbox" class="ace" />
											<span class="lbl"></span>
										</label>
									</th>
									<!--<th class="sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">Domain</th>  -->
									<th class="sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">
										<i class="ace-icon fa fa-file-o bigger-110 hidden-480"></i>Tên bài viết</th>
									<th class="sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">
										<i class="ace-icon fa fa-book bigger-110 hidden-480"></i>Mô tả ngắn</th>
									<th class="sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">
										<i class="ace-icon fa fa-list-ul bigger-110 hidden-480"></i>Thể loại</th>
							<!-- 		<th><i class="ace-icon fa fa-adjust bigger-110 hidden-480"></i>Status</th> -->
									<th class="hidden-sm hidden-xs action-buttons">
										
										<c:url var="createNewURL" value="/quan-tri/bai-viet/chinh-sua"/>
										<a class="green" href='${createNewURL}' title="Thêm bài viết">
										 	<i class="ace-icon fa fa-plus bigger-130"></i>
										</a>	
										<button type="button" class="red" style="border:none !important; background:none !important"  
										id="btnDeleteAll" onclick="warningBeforeDeleteAll()" title="Xóa bài viết"> 
											<i class="ace-icon fa fa-trash-o bigger-130"></i>
										</button>
									</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="item" items="${model.listResult}">
									<tr>
										<td class="center">
											<label class="pos-rel">
												<input type="checkbox" class="ace" id="checkbox_${item.id}"
												value="${item.id}" /> 
													<span class="lbl"></span>
											</label>
										</td>

										<td>${item.title}</td>
										<td>${item.shortDescription}</td>
										<td>${item.categoryCode}</td>

										<!-- <td class="hidden-480">
											<span class="label label-sm label-success">Chưa xóa</span>
										</td> -->
										<td>
											<div class="hidden-sm hidden-xs action-buttons">
													<!-- <a class="blue" href="#"> <i
														class="ace-icon fa fa-search-plus bigger-130"></i>
													</a> -->
													<!-- <a class="blue" href="#"> <i
														class="ace-icon fa fa-pencil bigger-130"></i>
													</a> -->
													
													<c:url var="updateNewURL" value="/quan-tri/bai-viet/chinh-sua">
														<c:param name="id" value="${item.id}"/>															
													</c:url>
													<a class="blue" title="Cập nhật bài viết" href='${updateNewURL}'>
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>
													
													<button type="button" class="red" style="border:none !important; background:none !important"
													  id="btnDelete" onclick="warningBeforeDelete()" title="Xóa bài viết"> 
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</button>
											</div>
	
												<div class="hidden-md hidden-lg">
													<div class="inline pos-rel">
														<button class="btn btn-minier btn-yellow dropdown-toggle"
															data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>
	
														<ul
															class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li><a href="#" class="tooltip-info"
																data-rel="tooltip" title="View"> <span class="blue">
																		<i class="ace-icon fa fa-search-plus bigger-120"></i>
																</span>
															</a></li>
	
															<li><a href="#" class="tooltip-success"
																data-rel="tooltip" title="Edit"> <span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																</span>
															</a></li>
	
															<li><a href="#" class="tooltip-error"
																data-rel="tooltip" title="Delete"> <span class="red">
																		<i class="ace-icon fa fa-trash-o bigger-120"></i>
																</span>
															</a></li>
														</ul>
													</div>
												</div>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>


		</form>
	</div>
	<!-- /.main-content -->
	<script>
	
	
	
	 function warningBeforeDelete() {
			swal({
			  title: "Xác nhận xóa",
			  text: "Bạn có chắc chắn muốn xóa hay không?",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonClass: "btn-success",
			  cancelButtonClass: "btn-danger",
			  confirmButtonText: "Xác nhận",
			  cancelButtonText: "Hủy bỏ",
			}).then(function(isConfirm) {
			  if (isConfirm) {
					var ids = $('tbody input[type=checkbox]:checked').map(function () {
			            return $(this).val();
			        }).get();
					console.log(ids);
					deleteNew(ids);
			  }
			});
	}
	
	function deleteNew(data) {
     $.ajax({
         url: '${newAPI}',
         type: 'DELETE',
         contentType: 'application/json',
         data: JSON.stringify(data),
         success: function (result) {
        	 console.log(result);
             window.location.href = "${newURL}?&message=delete_success";
         },
         error: function (error) {
        	 console.log(result);
         	window.location.href = "${newURL}?&message=error_system";
         }
     });
 	}
	
	function warningBeforeDeleteAll() {
		swal({
		  title: "Xác nhận xóa",
		  text: "Bạn có chắc chắn muốn xóa hay không?",
		  type: "warning",
		  showCancelButton: true,
		  confirmButtonClass: "btn-success",
		  cancelButtonClass: "btn-danger",
		  confirmButtonText: "Xác nhận",
		  cancelButtonText: "Hủy bỏ",
		}).then(function(isConfirm) {
		  if (isConfirm) {
				var ids = $('tbody input[type=checkbox]:checked').map(function () {
		            return $(this).val();
		        }).get();
				deleteAllNew(ids);
		  }
		});
	} 
		function deleteAllNew(data) {
		 $.ajax({
		     url: '${newAPI}',
		     type: 'DELETE',
		     contentType: 'application/json',
		     data: JSON.stringify(data),
		     success: function (result) {
		         window.location.href = "${newURL}?message=delete_success";
		     },
		     error: function (error) {
		     	window.location.href = "${newURL}?&message=error_system";
		     }
		 });
			}
	 
	</script>
</body>

</html>