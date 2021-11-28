package kr.kro.kkalphaka.board.service.impl;

import kr.kro.kkalphaka.board.service.BoardDAO;
import kr.kro.kkalphaka.board.service.BoardService;
import kr.kro.kkalphaka.board.service.BoardVO;
import org.springframework.stereotype.Service;
import java.util.UUID;
import javax.inject.Inject;
import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Inject
    private BoardDAO dao;

    @Override
    public void regist(BoardVO vo) throws Exception{
        //게시판 ID로 사용할 UUID 생성 및 셋팅
        vo.setBoardId(UUID.randomUUID().toString());
        dao.create(vo);
    }

    @Override
    public BoardVO read(String boardId) throws Exception{
        return dao.read(boardId);
    }

    @Override
    public void modify(BoardVO vo) throws Exception{
        dao.update(vo);
    }

    @Override
    public void remove(String boardId) throws Exception{
        dao.delete(boardId);
    }

    @Override
    public List<BoardVO> listAll() throws Exception{
        return dao.listAll();
    }
}
