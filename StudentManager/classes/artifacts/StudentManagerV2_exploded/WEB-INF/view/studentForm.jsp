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
            <a href="index.html" class="navbar-brand">
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

        <ul class="nav nav-list">
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-desktop"></i>
                    <span class="menu-text">课程管理</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="${pageContext.request.contextPath}/subject/toSubjectForm/0">
                            <i class="menu-icon fa fa-caret-right"></i>
                            课程信息
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="active open">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> 学生信息管理 </span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/student/form">
                            <i class="menu-icon fa fa-caret-right"></i>
                            学生信息列表
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
                <ul class="submenu">
                    <li class="">
                        <a href="${pageContext.request.contextPath}/student/toAddStudent">
                            <i class="menu-icon fa fa-caret-right"></i>
                            录入学生信息
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text"> 班级管理 </span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="">
                        <a href="${pageContext.request.contextPath}/grade/toGradeForm/0">
                            <i class="menu-icon fa fa-caret-right"></i>
                            班级信息
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
        </ul><!-- /.nav-list end -->
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
                        <a href="#">学生信息管理</a>
                    </li>
                    <li class="active">学生信息列表</li>
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
                        学生信息管理
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            学生列表
                        </small>
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
                                        <th class="detail-col">详细</th>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>所在班级</th>
                                        <td>选修科目数</td>
                                        <th>操作</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${studentVo.list}" var="s">
                                    <tr>
                                        <!-- 详细 -->
                                        <td class="center">
                                            <div class="action-buttons">
                                                <a href="#" class="green bigger-140 show-details-btn"
                                                   title="Show Details">
                                                    <i class="ace-icon fa fa-angle-double-down"></i>
                                                    <span class="sr-only">Details</span>
                                                </a>
                                            </div>
                                        </td>
                                        <td>${s.id}</td>
                                        <!-- 姓名 -->
                                        <td>${s.name}</td>
                                        <!-- 性别 -->
                                        <td>${s.gender}</td>
                                        <td>${s.gradeName}</td>
                                        <td>${s.subjectList.size()}</td>

                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">
                                                <a
                                                        data-toggle="modal" onclick="toast('${s.subjectList.size()}','${s.id}',this)"
                                                        title="录入成绩" class="btn btn-xs btn-success">
                                                    <i class="ace-icon fa fa-check bigger-120"></i>
                                                </a>
                                                <a href="#student-select-course" onclick="setId(${s.id})"
                                                   title="选课" class="btn btn-xs btn-warning"
                                                   data-toggle="modal">
                                                    <i class="ace-icon fa fa-flag bigger-120"></i>
                                                </a>
                                                <a href="#${s.id}_togger"
                                                   title="修改学生" class="btn btn-xs btn-info"
                                                   data-toggle="modal">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </a>
                                                <!--删除学生-->
                                                <a href="#my-modal-delete"
                                                   onclick="setIdAndName('${s.id}','${s.name}')"
                                                   title="删除学生" class="btn btn-xs btn-danger"
                                                   data-toggle="modal">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </a>
                                            </div>

                                            <!--录入成绩-->
                                            <div id="entry-grades" class="modal" tabindex="-1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">
                                                                &times;
                                                            </button>
                                                            <h4 class="blue bigger"> 录入成绩 </h4>
                                                        </div>
                                                        <form action="${pageContext.request.contextPath}/student/selectSubject"
                                                              name="form1" method="post">
                                                            <div class="modal-body" style="margin-left: 60px">
                                                                <input type="text" value="${scoreVo.scoreList}"/>
                                                                <input type="hidden" id="idss" name="id"/>
                                                                <c:forEach items="${scoreVo.scoreList}" var="scores">
                                                                    <c:out value="${scores}"/>
                                                                    <input type="text"
                                                                           value="${scores}">

                                                                </c:forEach>
                                                                <div class="form-group" id="divId">
                                                                </div>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button class="btn btn-sm" data-dismiss="modal">
                                                                    <i class="ace-icon fa fa-times"></i>
                                                                    取消
                                                                </button>

                                                                <button type="submit" class="btn btn-sm btn-primary">
                                                                    <i class="ace-icon fa fa-check"></i>
                                                                    保存
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--学生选课-->
                                            <div id="student-select-course" class="modal" tabindex="-1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">
                                                                &times;
                                                            </button>
                                                            <h4 class="blue bigger">选课课程信息</h4>
                                                        </div>
                                                        <form action="${pageContext.request.contextPath}/student/selectSubject"
                                                              name="form1" method="post">
                                                            <div class="modal-body" style="margin-left: 60px">
                                                                <input type="hidden" id="ids" name="id"/>
                                                                <c:forEach items="${subjectList}" var="subject">
                                                                    <input type="checkbox" name="name"
                                                                           value="${subject.name}">
                                                                    <c:out value="${subject.name}"/>
                                                                </c:forEach>
                                                                <div class="form-group" id="divId">
                                                                </div>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button class="btn btn-sm" data-dismiss="modal">
                                                                    <i class="ace-icon fa fa-times"></i>
                                                                    取消
                                                                </button>

                                                                <button type="submit" class="btn btn-sm btn-primary">
                                                                    <i class="ace-icon fa fa-check"></i>
                                                                    保存
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--修改的弹出框-->
                                            <div id="${s.id}_togger" class="modal fade" tabindex="-1" style="">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-hidden="true">×
                                                            </button>
                                                            <h4 class="blue bigger">修改学生信息</h4>
                                                        </div>

                                                        <div class="modal-body">
                                                            <form class="form-horizontal" role="form" id="${s.id}"
                                                                  action="${pageContext.request.contextPath}/student/save">

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label no-padding-right"
                                                                           for="id"> 学号 </label>

                                                                    <div class="col-sm-9">
                                                                        <input type="text" id="id" name="id"
                                                                               placeholder="id" readonly
                                                                               class="col-xs-10 col-sm-5"
                                                                               value="${s.id}"/>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label no-padding-right"
                                                                           for="name"> 姓名 </label>

                                                                    <div class="col-sm-9">
                                                                        <input type="text" id="name" name="name"
                                                                               placeholder="name" maxlength="25"
                                                                               class="col-xs-10 col-sm-5"
                                                                               value="${s.name}"/>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label no-padding-right">
                                                                        班级 </label>
                                                                    <div class="col-sm-9">
                                                                        <select class="col-xs-10 col-sm-5"
                                                                                name="gradeName"
                                                                                data-placeholder="Choose a grade">
                                                                            <c:forEach items="${gradeList}"
                                                                                       var="grade">
                                                                                <c:if test="${grade.name==s.gradeName}">
                                                                                    <option value="${grade.name}"
                                                                                            selected="true">${grade.name}</option>
                                                                                </c:if>
                                                                                <c:if test="${grade.name!=s.gradeName}">
                                                                                    <option value="${grade.name}">${grade.name}</option>
                                                                                </c:if>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label no-padding-right">性别&nbsp;&nbsp;</label>
                                                                    <c:if test="${s.gender=='男'}">
                                                                        <label class="control-label">
                                                                            <input id="update-sex-male" name="gender"
                                                                                   type="radio" checked
                                                                                   value="男" class="ace"/>
                                                                            <span class="lbl"> 男</span>
                                                                        </label>
                                                                        <label class="control-label">
                                                                            <input name="gender" id="update-sex-female"
                                                                                   type="radio" value="女"
                                                                                   class="ace"/>
                                                                            <span class="lbl"> 女</span>
                                                                        </label>
                                                                    </c:if>
                                                                    <c:if test="${s.gender=='女'}">
                                                                        <label class="control-label">
                                                                            <input id="update-sex-male1" name="gender"
                                                                                   type="radio"
                                                                                   value="男" class="ace"/>
                                                                            <span class="lbl"> 男</span>
                                                                        </label>
                                                                        <label class="control-label">
                                                                            <input name="gender" id="update-sex-female1"
                                                                                   type="radio" value="女" checked
                                                                                   class="ace"/>
                                                                            <span class="lbl"> 女</span>
                                                                        </label>
                                                                    </c:if>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label no-padding-right">
                                                                        出生日期 </label>
                                                                    <div class="col-sm-9">
                                                                        <jsp:useBean id="updatenow"
                                                                                     class="java.util.Date"/>
                                                                        <input type="date"
                                                                               name="birthday"
                                                                               min="1900-01-01"
                                                                               max="<fmt:formatDate value="${updatenow}" type="both" dateStyle="long" pattern="yyyy-MM-dd" />"
                                                                               value="<fmt:formatDate value='${s.birthday}' pattern='yyyy-MM-dd'/>"/>
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
                                                                确定
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="hidden-md hidden-lg">
                                                <div class="inline pos-rel">
                                                    <button class="btn btn-minier btn-primary dropdown-toggle"
                                                            data-toggle="dropdown" data-position="auto">
                                                        <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                    </button>

                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                        <li>
                                                            <a href="#" class="tooltip-info" data-rel="tooltip"
                                                               title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" class="tooltip-success" data-rel="tooltip"
                                                               title="Edit">
                                                                <span class="green">
                                                                    <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                </span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" class="tooltip-error" data-rel="tooltip"
                                                               title="Delete">
                                                                    <span class="red">
                                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                    </span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <!-- 详细信息表 -->
                                    <tr class="detail-row">
                                        <td colspan="8">
                                            <div class="table-detail">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-2">
                                                        <div class="text-center">
                                                                <%--上传的头像地址--%>
                                                            <img height="150" class="thumbnail inline no-margin-bottom"
                                                                 alt="学生照片"
                                                                 src="${pageContext.request.contextPath}/upload/${s.id}.png"/>
                                                            <br/>
                                                            <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                                <div class="inline position-relative">
                                                                    <a class="user-title-label" href="#">
                                                                        <i class="ace-icon fa fa-circle light-green"></i>
                                                                        &nbsp;
                                                                        <span class="white">${s.name}</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-7">
                                                        <div class="space visible-xs"></div>

                                                        <div class="profile-user-info profile-user-info-striped">
                                                            <div class="profile-info-row">
                                                                <div class="profile-info-name"> 姓名</div>

                                                                <div class="profile-info-value">
                                                                    <span>${s.name}</span>
                                                                </div>
                                                            </div>

                                                            <div class="profile-info-row">
                                                                <div class="profile-info-name"> 班级</div>

                                                                <div class="profile-info-value">
                                                                    <span>${s.gradeName}</span>
                                                                </div>
                                                            </div>

                                                            <div class="profile-info-row">
                                                                <div class="profile-info-name"> 学号</div>

                                                                <div class="profile-info-value">
                                                                    <span>${s.id}</span>
                                                                </div>
                                                            </div>

                                                            <div class="profile-info-row">
                                                                <div class="profile-info-name"> 出生日期</div>

                                                                <div class="profile-info-value">
                                                                    <!-- 出生日期 -->
                                                                    <fmt:formatDate value='${s.birthday}'
                                                                                    pattern='yyyy-MM-dd'/>
                                                                </div>
                                                            </div>

                                                            <div class="profile-info-row">
                                                                <div class="profile-info-name"> 所选课程</div>

                                                                <div class="profile-info-value">
                                                                    <c:forEach items="${s.subjectList}" var="subject">
                                                                        <span>${subject}</span>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>

                                                            <div class="profile-info-row">
                                                                <div class="profile-info-name"> 平均分</div>
                                                                <div class="profile-info-value">
                                                                    <span>${s.avgScore}</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <form action="${pageContext.request.contextPath}/student/upload"
                                                          enctype="multipart/form-data" method="post" id="myForm">
                                                        <input type="hidden" name="id" value="${s.id}" />
                                                        <input type="file" id="picPath" name="file" onchange="getFileName(this)+'\n'+GetFileExt(this);" />
                                                        <input type="submit" value="上传图片"  />
                                                    </form>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </c:forEach>

                                    <!--删除按钮弹出框-->
                                    <div id="my-modal-delete" class="modal fade " tabindex="-1" style="">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">×
                                                    </button>
                                                    <h4 class="blue bigger">删除学生</h4>
                                                </div>
                                                <input type="hidden" id="studentId">
                                                <div class="modal-header">
                                                    <input type="text" readonly id="studentName"/>
                                                </div>
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

                                    <!--提示先录入分数弹出框-->
                                    <div id="my-modal-toast" class="modal fade " tabindex="-1" style="">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">×
                                                    </button>
                                                    <h4 class="blue bigger">录入分数</h4>
                                                </div>
                                                <div class="modal-header">
                                                    <c:out value="请先添加选课" />
                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn btn-sm btn-danger pull-right"
                                                            data-dismiss="modal">
                                                        关闭
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </table>
                                </table>
                                <!--分页列表-->
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
                                                <c:forEach begin="${1}" end="${studentVo.totalPage}" var="pageNum">
                                                    <li class="paginate_button active" aria-controls="dynamic-table"
                                                        tabindex="0">
                                                        <a href="${pageContext.request.contextPath}/student/pageSkip/${pageNum-1}">${pageNum}</a>
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
                    <span class="blue bolder">学生信息管理系统</span>
                    Application &copy; 2017-2018
                </span>
            </div>
        </div>
    </div>
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
        setTimeout(function () {
            $($('.tableTools-container')).find('a.dt-button').each(function () {
                var div = $(this).find(' > div').first();
                if (div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
                else $(this).tooltip({container: 'body', title: $(this).text()});
            });
        }, 500);

        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked;//checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });

        $('#simple-table').on('click', 'td input[type=checkbox]', function () {
            var $row = $(this).closest('tr');
            if ($row.is('.detail-row ')) return;
            if (this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });

        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();

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

            $(this).parents(".modal").find(".modal-body form").get(0).submit();
        })

        $('.button_selectSubject').on('click', function () {
            $(this).parents().parents().find(".selectForm form").submit();
        })

        $('#deleteStudent').on('click', function () {
            var id = $('#studentId').val();
            $.get("${pageContext.request.contextPath}/student/delete", {id: id});
            window.location.replace("${pageContext.request.contextPath}/student/form");
        })

        $('.uploadFile').on('click', function () {
            $(this).parents().parents('.uploadForm').get(0).submit();
        })

    })

    //设置删除时提交的学生id和显示姓名
    function setIdAndName(id, name) {
        $('#studentId').val(id);
        $('#studentName').val("确定删除学生:" + name + " ?");
    }
    //设置选中的学生的id，然后进行选课
    function setId(id) {
        $('#ids').val(id);
    }

    //未选课点击录入成绩时提示先选课
    function toast(subjectnum,id,obj) {
        if(subjectnum<=0){
            obj.href="${pageContext.request.contextPath}/student/form/#my-modal-toast";
        }else {
            obj.href="${pageContext.request.contextPath}/student/toScoreForm/"+id;
            obj.click();
        }
    }

    //获取文件名
    function getFileName(o)
    {
        var pos=o.value.lastIndexOf("\\");
        alert(o.value.substring(pos+1));
        return o.value.substring(pos+1);//文件名

    }
    //获取后缀
    function GetFileExt(o)
    {
        var type = o.value.replace(/.+\./,"");
        alert(type);
        if (type != "png") {
            alert("请上传png格式的图片");
            return false;
        }
        return true;
    }

</script>
</body>
</html>
