package kr.kro.kkalphaka.board.service;

import java.util.List;

public interface BoardDAO {

    void create(BoardVO vo) throws Exception;

    BoardVO read(String boardId) throws Exception;

    void update(BoardVO vo) throws Exception;

    void delete(String boardId) throws Exception;

    List<BoardVO> listAll() throws Exception;

}
