<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdn.quilljs.com/1.3.6/quill.core.css" rel="stylesheet">
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">

<script>
  $(document).ready(function(){
    var form = $("form[role='form']");

    $("#delete").on("click",function(){
      form.attr("action", "${pageContext.request.contextPath}/board/tables/deletePages");
      form.submit();
    });

    $("#modify").on("click",function(){
      form.attr("action", "${pageContext.request.contextPath}/board/tables/modifyPage");
      form.submit();
    })
  });
</script>
<form role="form" method="post">
  <input type="hidden" id="boardId" name="boardId" value="${boardVO.boardId}"/>
</form>
  <div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800">
        <a class="text-gray-800" href="${pageContext.request.contextPath}/board/tables">게시판</a>
    </h1>
    <div class="card shadow mb-4">
      <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">${boardVO.boardTitle}</h6>
      </div>
      <div class="card-body">
        <div id="editor" class="ql-editor">
          ${boardVO.boardContent}
        </div>
      </div>
    </div>

    <div class="mb-5">
      <button id="remove" class="btn btn-primary float-right" data-toggle="modal" data-target="#deleteModal">
        <span class="text">삭제하기</span>
      </button>
      <button id="modify" class="btn btn-primary float-right mr-2">
        <span class="text">수정하기</span>
      </button>
    </div>
    <div class="pt-5"/>
  </div>
<!-- /.container-fluid -->

<!-- TODO 모달로 분리해야함 -->
<!-- delete Modal-->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">게시물 알림</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">현재 게시물을 정말로 삭제하시겠습니까?</div>
      <div class="modal-footer">
        <button class="btn btn-primary" type="button" id="delete">삭제</button>
        <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
