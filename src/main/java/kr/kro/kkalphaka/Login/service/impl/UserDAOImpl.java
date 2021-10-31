package kr.kro.kkalphaka.Login.service.impl;

import kr.kro.kkalphaka.Login.service.LoginDTO;
import kr.kro.kkalphaka.Login.service.UserDAO;
import kr.kro.kkalphaka.Login.service.UserVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class UserDAOImpl implements UserDAO {

    @Inject
    private SqlSession session;

    private static String namespace = "kr.kro.kkalphaka.mapper.UserMapper";

    @Override
    public UserVO login(LoginDTO dto) throws Exception {
        return session.selectOne(namespace + ".login", dto);
    }

    @Override
    public void register(UserVO user) throws Exception {
        session.insert(namespace + ".register", user);
    }
}
