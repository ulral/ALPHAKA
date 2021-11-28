<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
    $(document).ready(function(){
        var result = "${msg}";

        if(result == 'SUCCESS'){
            $("createModal").attr("class","modal fade show");
        }
        $("#confirm").on("click",function(){
            location.href="${pageContext.request.contextPath}/board/tables"
        })
        // 수정하기 버튼
        $("#update").on("click", function () {
            var form = $("form[role='form']");
            var hvalue = $('#editor > div.ql-editor').html();
            $("form[role='form']").append("<textarea name='boardContent' style='display:none' escapeXml='false'>"+hvalue+"</textarea>");
            form.attr("action", "${pageContext.request.contextPath}/board/tables/modify");
            form.attr("method","POST");
            form.submit();
        });

        // 저장하기 버튼
        $("#create").on("click",function(){
            var form = $("form[role='form']");
            var hvalue = $('#editor > div.ql-editor').html();
            $("form[role='form']").append("<textarea name='boardContent' style='display:none' escapeXml='false'>"+hvalue+"</textarea>");
            form.attr("action", "${pageContext.request.contextPath}/board/tables/regist");
            form.attr("method","POST");
            form.submit();
        });
    });
</script>
 <div class="container-fluid">

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">
                <a href="${pageContext.request.contextPath}/board/tables">테이블 게시판</a>
            </h6>
        </div>
        <div class="card-body">
            <form role="form" method="post" >
            <c:if test="${result.boardId ne null}">
                <input type="hidden" name="boardId" value="${result.boardId}"  />
            </c:if>
                <input type="hidden" name="boardWriter" value="<c:out value='${login.userId}'/>" />
                <input type="text" class="form-control form-control-plaintext-simple" name= "boardTitle" value="<c:out value='${result.boardTitle}'/>"
                       placeholder=" 제목을 입력해주세요." escapeXml='false'/>
                <div class="my-3"></div>
                <!--
                ##################################################
                              RICH TEXT EDITOR 참조
                     https://quilljs.com/docs/configuration/
                ##################################################
                 -->
                <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.1/highlight.min.js"></script>
                <div id="editor" style="height: 500px;">

                <quill-view [content]="content" [modules]="{syntax: true}" format="html" theme="snow" [sanitize]="true"></quill-view>
                    ${result.boardContent}
                </div>
                <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
                <script>

                    var toolbarOptions = [
                        [{ 'font': [] }],
                        [{ 'size': ['small', false, 'large', 'huge'] }],  // custom dropdown
                        ['bold', 'italic', 'underline', 'strike'],        // toggled buttons
                        [{ 'color': [] }, { 'background': [] }],          // dropdown with defaults from theme
                        [{ 'align': [] }],
                        [{ 'list': 'ordered'}, { 'list': 'bullet' }],
                        [{ 'script': 'sub'}, { 'script': 'super' }],      // superscript/subscript
                        [{ 'indent': '-1'}, { 'indent': '+1' }],          // outdent/indent
                        ['blockquote', 'code-block','image'],
                    ];

                    var quill = new Quill('#editor', {
                        theme: 'snow',
                        syntax: true,
                        modules: {
                            toolbar: toolbarOptions
                        }
                    });
                </script>
            </form>
                <div class="my-2"></div>
        <c:choose>
            <c:when test="${result ne null}">
                <button id="update" class="btn btn-primary float-right">
                    <span class="text">수정하기</span>
                </button>
            </c:when>
            <c:otherwise>
                <button id="create" class="btn btn-primary float-right">
                    <span class="text">등록하기</span>
                </button>
        </c:otherwise>
        </c:choose>
        </div>
    </div>
</div>

<!-- /.container-fluid -->

<!-- TODO 모달로 분리해야함 -->
<!-- create Modal-->
<div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">게시물 알림</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">게시물이 등록되었습니다!</div>
            <div class="modal-footer">
                <button class="btn btn-primary" type="button" id="confirm">확인</button>
                <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>
