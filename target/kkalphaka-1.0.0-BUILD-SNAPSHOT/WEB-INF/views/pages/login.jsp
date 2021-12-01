<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">WELCOME ALPHAKA</h1>
                                    </div>
                                    <form class="user" action="${pageContext.request.contextPath}/loginPost" method="post">
                                        <div class="form-group">
                                            <input type="email" name="userEmail" class="form-control form-control-user"
                                                id="inputEmail" aria-describedby="emailHelp"
                                                placeholder="이메일 주소를 입력해주세요...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="userPassword" class="form-control form-control-user"
                                                id="inputPassword" placeholder="비밀번호">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">로그인 기억</label>
                                            </div>
                                        </div>
                                        <button type="submit"  class="btn btn-primary btn-user btn-block">
                                            로그인
                                        </button>
                                        <hr>
                                        <a href="./blank" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Google로 로그인하기
                                        </a>
                                        <a href="./blank" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-neos fa-fw"></i> 네이버로 로그인하기
                                        </a>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="${pageContext.request.contextPath}/forgotpassword">비밀번호 찾기</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="${pageContext.request.contextPath}/register">가입하기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    