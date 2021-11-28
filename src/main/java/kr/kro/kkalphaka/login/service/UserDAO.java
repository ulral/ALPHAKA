package kr.kro.kkalphaka.login.service;

public interface UserDAO {

    UserVO login(LoginDTO dto) throws Exception;

    void register(UserVO user) throws Exception;

}
