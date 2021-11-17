package kr.kro.kkalphaka.Board.service.impl;

import kr.kro.kkalphaka.Board.service.BoardDAO;
import kr.kro.kkalphaka.Board.service.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Inject
    private SqlSession session;

    private static String namespace = "kr.kro.kkalphaka.mapper.BoardMapper";

    @Override
    public void create(BoardVO vo) throws Exception{
        session.insert(namespace+".create", vo);
    }

    @Override
    public BoardVO read(String boardId) throws Exception{
        return session.selectOne(namespace+".read", boardId);
    }

    @Override
    public void update(BoardVO vo) throws Exception{
        session.update(namespace+".update", vo);
    }

    @Override
    public void delete(String boardId) throws Exception{
        session.delete(namespace+".delete", boardId);
    }

    @Override
    public List<BoardVO> listAll() throws Exception{
        return session.selectList(namespace+".listAll");
    }
}
