package kr.kro.kkalphaka.Login.service;

import kr.kro.kkalphaka.Login.service.UserVO;
import kr.kro.kkalphaka.Login.service.LoginDTO;

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
