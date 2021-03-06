<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>学生信息管理系统</title>

    <meta name="description" content="Static &amp; Dynamic Tables"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.com.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet"
          id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css"
          class="ace-main-stylesheet"/>
    <![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>

    <![endif]-->
</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    学生管理系统
                </small>
            </a>
        </div>
    </div><!-- /.navbar-container -->
</div>

<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <div id="sidebar" class="sidebar responsive ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>

        <%--侧边栏开始--%>
        <ul class="nav nav-list">
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text">课程管理</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/subject/toSubjectForm">
                            <i class="menu-icon fa fa-caret-right"></i>
                            课程信息列表
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <!-- 学生信息管理栏-->
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> 学生信息管理 </span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>
                <ul class="submenu">
                    <%--class="active"控制三角标--%>
                    <li class="">
                        <a href="${pageContext.request.contextPath}/student/form">
                            <i class="menu-icon fa fa-caret-right"></i>
                            学生信息列表
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
                <ul class="submenu">
                    <%--class="active"控制三角标--%>
                    <li class="">
                        <a href="${pageContext.request.contextPath}/student/toAddStudent">
                            <i class="menu-icon fa fa-caret-right"></i>
                            录入学生信息
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>


            <li class="active open">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text"> 班级管理 </span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="active">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            班级信息
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
        </ul><!-- /.nav-list end -->
        <%--侧边栏结束--%>
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>

                    <li>
                        <a href="#">班级管理</a>
                    </li>
                    <li class="active">班级信息列表</li>
                </ul><!-- /.breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- /.nav-search -->
            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        <a href="#togger"
                           data-toggle="modal" title="添加班级"
                           class="bg-primary white btn btn-xs btn-success">
                            <i class="ace-icon fa fa-check bigger-120">添加班级</i>
                        </a>
                    </h1>
                </div><!-- /.page-header -->
                <!-- 表单开始 -->
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="simple-table" class="table  table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>班级ID</th>
                                        <th>班级名称</th>
                                        <th>学生人数</th>
                                        <th>平均分</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${pageBean.list}" var="s">
                                    <tr>

                                        <!-- 班级id -->
                                        <td>
                                            <a href="#">${s.id}</a>
                                        </td>
                                        <!-- 班级名称 -->
                                        <td>${s.name}</td>
                                        <td>${s.stdNum}</td>
                                        <td>${s.avgScore}</td>
                                        <td>

                                            <div class="hidden-sm hidden-xs btn-group">
                                                    <%--修改按钮--%>
                                                <a href="#togger" role="button"
                                                   onclick="setGradeName('${s.id}','${s.name}')"
                                                   class="bg-primary white btn btn-xs btn-info"
                                                   data-toggle="modal" title="修改班级信息">
                                                    <i class="ace-icon fa fa-pencil bigger-120 bg-primary white"></i>
                                                </a>

                                                &nbsp;
                                                    <%--删除按钮--%>
                                                <a href="#my-modal-delete" onclick="showmodel('${s.id}','${s.name}')" role="button"
                                                   class="bg-primary white btn btn-xs btn-danger" title="删除班级信息"
                                                   data-toggle="modal">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </a>

                                            </div>
                                        </td>
                                    </tr>
                                    <!-- 详细信息表 -->
                                    </c:forEach>


                                    <%--删除按钮弹出框--%>
                                    <div id="my-modal-delete" class="modal fade " tabindex="-1" style="">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">×
                                                    </button>
                                                    <h4 class="blue bigger"> 删除课程 </h4>
                                                </div>
                                                <%--获取id的值--%>
                                                <input type="hidden" id="studentId">

                                                <center>
                                                     <input type="text" readonly id="delGradeName" />
                                                </center>

                                                <div class="modal-footer">
                                                    <button class="btn btn-sm btn-danger pull-right"
                                                            data-dismiss="modal">
                                                        关闭
                                                    </button>

                                                    <button class="btn btn-sm btn-grey pull-right"
                                                            data-dismiss="modal" id="deleteStudent">
                                                        确认
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </table>

                                <%--添加班级的弹出框--%>
                                <div id="togger" class="modal fade" tabindex="-1" style="">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-hidden="true">×
                                                </button>
                                                <h4>班级信息管理</h4>
                                            </div>

                                            <div class="modal-body">
                                                <%--添加表单--%>
                                                <form class="form-horizontal" role="form"
                                                      action="${pageContext.request.contextPath}/grade/addOrUpdate">

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                        > 班级名称 </label>

                                                        <div class="col-sm-9">
                                                            <input type="hidden" name="id" id="gradeId">
                                                            <input type="text" name="gradeName" id="gradeName"
                                                                   class="col-xs-10 col-sm-5" maxlength="25"
                                                            />
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                            <div class="modal-footer">
                                                <button class="btn btn-sm btn-danger pull-right"
                                                        data-dismiss="modal">
                                                    关闭
                                                </button>
                                                <button class="btn btn-sm btn-grey pull-right button_submit">
                                                    <%--i class="ace-icon fa fa-times"></i>--%>
                                                    确定
                                                    <%-- $(this).parents(".modal").find(".modal-body form").get(0).submit();--%>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <%--分页列表--%>
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="dataTables_info" id="dynamic-table_info" role="status"
                                             aria-live="polite">
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="dataTables_paginate paging_simple_numbers"
                                             id="dynamic-table_paginate">
                                            <ul class="pagination">
                                                <c:forEach begin="${1}" end="${pageBean.totalPage}" var="pageNum">
                                                    <li class="paginate_button active" aria-controls="dynamic-table"
                                                        tabindex="0">
                                                        <a href="${pageContext.request.contextPath}/grade/toGradeForm/${pageNum-1}"> ${pageNum}</a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div><!-- /.span -->
                        </div><!-- /.row -->

                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
                <span class="bigger-120">
                    <span class="blue bolder">学生管理系统</span>
                    Application &copy; 2017-2018
                </span>
            </div>
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.colVis.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.select.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.jqGrid.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/grid.locale-en.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.min.js"></script>

<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        //initiate dataTables plugin


        ////

        setTimeout(function () {
            $($('.tableTools-container')).find('a.dt-button').each(function () {
                var div = $(this).find(' > div').first();
                if (div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
                else $(this).tooltip({container: 'body', title: $(this).text()});
            });
        }, 500);

        //And for the first simple table, which doesn't have TableTools or dataTables
        //select/deselect all rows according to table header checkbox
        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked;//checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });
        //select/deselect a row when the checkbox is checked/unchecked
        $('#simple-table').on('click', 'td input[type=checkbox]', function () {
            var $row = $(this).closest('tr');
            if ($row.is('.detail-row ')) return;
            if (this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });
        /********************************/
        //add tooltip for small view action buttons in dropdown menu
        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        //tooltip placement on right or left
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }

        /***************/
        $('.show-details-btn').on('click', function (e) {
            e.preventDefault();
            $(this).closest('tr').next().toggleClass('open');
            $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
        })


        $('.button_submit').on('click', function () {
            console.log($(this).parents(".modal").find(".modal-body form"));
            $(this).parents(".modal").find(".modal-body form").get(0).submit();
        })

        $('#deleteStudent').on('click', function () {
            var id = $('#studentId').val();
            $.get("${pageContext.request.contextPath}/grade/delete", {id: id});
            location.reload();
            //window.location.replace("${pageContext.request.contextPath}/grade/toGradeForm/0")
        })

        $('.birthday').datepicker({
            dateFormat: "yy-MM-dd"
        });

    })

    function setGradeName(id, name) {
        $('#gradeId').val(id);
        $('#gradeName').val(name);
    }
    function showmodel(id, name) {
        $('#studentId').val(id);
        $('#delGradeName').val("确定删除班级："+name+" ?");
    }
</script>
</body>
</html>
