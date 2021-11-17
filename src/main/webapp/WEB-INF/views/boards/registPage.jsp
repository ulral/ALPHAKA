 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <div class="container-fluid">

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><a href="${pageContext.request.contextPath}/board/tables">테이블 게시판</a></h6>
        </div>
        <div class="card-body">
            <form fole="form" method="post" action="${pageContext.request.contextPath}/board/tables/regist">
                <input type="hidden" name="boardId" value="tjkim" />
                <input type="hidden" name="boardWriter" value="tjkim" />
                <input type="text" class="form-control form-control-plaintext-simple" name= "boardTitle" placeholder=" 제목을 입력해주세요." />
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
                    <p></p>
                </div>
                <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.6.0/highlight.min.js"></script>
                <script>
                    $(document).ready(function(){
                        $("form").on("submit", function () {
                            var hvalue = $('#editor').html();
                            $(this).append("<textarea name='boardContent' style='display:none'>"+hvalue+"</textarea>");
                        });
                    });

                    hljs.configure({
                        useBR: false,
                        languages: ['javascript', 'java', 'html', 'xml','sql','typescript', 'python']
                    });

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

            <div class="my-2"></div>
            <button type="submit" class="btn btn-primary float-right">
                <span class="text">등록하기</span>
            </button>
        </div>
    </div>

</div>
<!-- /.container-fluid -->