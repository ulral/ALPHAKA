package kr.kro.kkalphaka.Login.service.impl;

import kr.kro.kkalphaka.Login.service.LoginDTO;
import kr.kro.kkalphaka.Login.service.UserDAO;
import kr.kro.kkalphaka.Login.service.UserService;
import kr.kro.kkalphaka.Login.service.UserVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class UserServiceImpl implements UserService {

    @Inject
    private UserDAO dao;

    @Override
    public UserVO login(LoginDTO dto) throws Exception {
        return dao.login(dto);
    }

    @Override
    public void register(UserVO user) throws Exception {
        dao.register(user);
    }
}
