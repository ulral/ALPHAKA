package kr.kro.kkalphaka.login.service;

public interface UserService {

    /*
     * 로그인을 시도합니다.
     */
    UserVO login(LoginDTO dto) throws Exception;

    /*
     * 회원가입을 시도합니다.
     */
    void register(UserVO user) throws Exception;
}
