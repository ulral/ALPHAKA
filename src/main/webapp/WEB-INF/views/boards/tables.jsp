<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/DataTables/datatables.css">
    <script type="text/javascript" charset="utf8" src="${pageContext.request.contextPath}/resources/DataTables/datatables.js"></script>

     <script>
         $(document).ready( function () {
             $('#dataTable').DataTable({
             } );
         } );
     </script>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Board</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">테이블 게시판</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" >
                                    <thead>
                                        <tr>
                                            <th>제목</th>
                                            <th>글쓴이</th>
                                            <th>조회수</th>
                                            <th>날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="boardVO">
                                            <tr>
                                                <td>${boardVO.boardTitle}</td>
                                                <td>${boardVO.boardWriter}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${boardVO.boardView eq null}">
                                                            0
                                                        </c:when>
                                                        <c:otherwise>
                                                            ${boardVO.boardView}
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"  value="${boardVO.boardRegdate}"/></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="my-3"></div>
                            <a href="${pageContext.request.contextPath}/board/tables/registPage" class="btn btn-primary float-right">
                                <span class="text">게시물 등록</span>
                            </a>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->