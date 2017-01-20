<%@ tag language="java" description="page template" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ attribute name="title"%>
<%@ attribute name="websitetitle"%>
<%@ attribute name="footer"%>
<%@ attribute name="keyword"%>
<%@ attribute name="author"%>
<%@ attribute name="desc"%>
<!DOCTYPE html>
<html lang="fa">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>${title}</title>

		<meta name="description" content="${desc}" />
		<meta name="keywords" content="${keyword}" />
		<meta name="author" content="${author}" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<c:url value="/resources/admin/css/bootstrap.min.css"/>" />
		<link rel="stylesheet" href="<c:url value="/resources/admin/fonts/iran.css"/>" />
		<link rel="stylesheet" href="<c:url value="/resources/admin/font-awesome/4.5.0/css/font-awesome.min.css"/>" />


		<!-- page specific plugin styles -->

		<!-- text fonts -->


		<!-- ace styles -->
		<link rel="stylesheet" href="<c:url value="/resources/admin/css/ace.min.css"/>" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<c:url value="/resources/admin/css/ace-part2.min.css"/>" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="<c:url value="/resources/admin/css/ace-skins.min.css"/>" />
		<link rel="stylesheet" href="<c:url value="/resources/admin/css/ace-rtl.min.css"/>" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<c:url value="/resources/admin/css/ace-ie.min.css"/>" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="<c:url value="/resources/admin/js/ace-extra.min.js"/>"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="<c:url value="/resources/admin/js/html5shiv.min.js"/>"></script>
		<script src="<c:url value="/resources/admin/js/respond.min.js"/>"></script>
		<![endif]-->
	</head>

	<body class="no-skin rtl">
        <jsp:include  page="../admin/common/navbar.jsp">
        <jsp:param name="websitetitle" value="${websitetitle}" />
        </jsp:include>

		<div class="main-container ace-save-state" id="main-container">

            <jsp:include page="../admin/common/sidebar.jsp"></jsp:include>
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
					

						<div class="page-header">
							<h1>
								${title}
								<small>
									<i class="ace-icon fa fa-angle-double-left"></i>
									${parent}
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
							<jsp:doBody />
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->


            <jsp:include page="../admin/common/footer.jsp">
            <jsp:param name="footer" value="${footer}" />
            </jsp:include>

		</div><!-- /.main-container -->
            <jsp:include page="../admin/common/script.jsp"></jsp:include>
	</body>
</html>