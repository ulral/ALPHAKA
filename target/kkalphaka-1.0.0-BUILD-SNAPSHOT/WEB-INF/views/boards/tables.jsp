<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/DataTables/datatables.css">
    <script type="text/javascript" charset="utf8" src="${pageContext.request.contextPath}/resources/DataTables/datatables.js"></script>
    <style>
        div.container {
            width: 80%;
        }
        .table td {
            padding: 0.35rem;
        }
        .table th {
            padding: 0.35rem;
        }
        .pagination {
            float: left;
        }
    </style>

     <script>
         $.extend( true, $.fn.dataTable.defaults, {

             "ordering": false,
             "info": false
         } );

         $(document).ready( function () {
             $('#dataTable').DataTable({
                 "order": [[ 3, "desc" ]],
                 "pageLength": 25,
                 "language": {
                     "emptyTable": "데이터가 없습니다.",
                     "lengthMenu": "페이지당 _MENU_ 개씩 보기",
                     "info": "현재 _START_ - _END_ / _TOTAL_건",
                     "infoEmpty": "데이터 없음",
                     "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
                     "search": "검색 : ",
                     "searchPlaceholder": "검색할 내용...",
                     "zeroRecords": "일치하는 데이터가 없습니다.",
                     "loadingRecords": "로딩중...",
                     "processing": "잠시만 기다려 주세요.",
                     "paginate": {
                         "next": "다음",
                         "previous": "이전",
                     }
                 }
             } );
         } );
     </script>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">게시판</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
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
                                                <td>
                                                    <a href="${pageContext.request.contextPath}/board/tables/viewPages?boardId=${boardVO.boardId}">${boardVO.boardTitle}</a>
                                                </td>
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
                            <a href="${pageContext.request.contextPath}/board/tables/registPages" class="btn btn-primary float-right">
                                <span class="text">게시물 등록</span>
                            </a>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->