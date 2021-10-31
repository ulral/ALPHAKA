<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">비밀번호가 생각안난다구요?</h1>
                                        <br class="mb-4">살다보면 그럴수도 있죠!&nbsp;아래에 이메일 주소를 적어서 보내주시면 초기화 비밀번호를 보내드릴께요!</p>
                                    </div>
                                    <form class="user">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="inputEmail" aria-describedby="emailHelp"
                                                placeholder="이메일 주소를 입력해주세요...">
                                        </div>
                                        <a href="login.html" class="btn btn-primary btn-user btn-block">
                                            비밀번호 초기화하기
                                        </a>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="${pageContext.request.contextPath}/register">회원가입하기!</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="${pageContext.request.contextPath}/login">이미 계정이 있으시다구요? 로그인하러 가시죠!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    