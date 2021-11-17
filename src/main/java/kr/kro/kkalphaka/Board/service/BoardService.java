package kr.kro.kkalphaka.Board.service;

import java.util.List;

public interface BoardService {

    void regist(BoardVO vo) throws Exception;

    BoardVO read(String boardId) throws Exception;

    void modify(BoardVO vo) throws Exception;

    void remove(String boardId) throws Exception;

    List<BoardVO> listAll() throws Exception;
}
