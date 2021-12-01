<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
                            </div>
                            <form class="user" action="${pageContext.request.contextPath}/registerPost" method="post">
                                <div class="form-group">
                                    <input type="name" class="form-control form-control-user" id="inputName" name="userName"
                                           placeholder="이름">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="inputEmail" name="userEmail"
                                    placeholder="이메일 주소">
                                </div>
                                <div class="form-group">
                                    <input type="id" class="form-control form-control-user" id="inputId" name="userId"
                                           placeholder="아이디">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" id="inputPassword" name="userPassword"
                                           placeholder="비밀번호">
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                    가입하기
                                </button>
                                <hr>
                                <a href="${pageContext.request.contextPath}/blank" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Google로 가입하기
                                </a>
                                <a href="${pageContext.request.contextPath}/blank" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-neos fa-fw"></i> 네이버로 가입하기
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="${pageContext.request.contextPath}/forgotpassword">비밀번호 찾기</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="${pageContext.request.contextPath}/login">이미 계정이 있으시다구요? 로그인하러 가시죠!</a>
                            </div>
                        </div>
                    </div>
                </div>
            