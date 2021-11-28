package kr.kro.kkalphaka.board.service;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {

    private String boardId;
    private String boardTitle;
    private String boardContent;
    private String boardWriter;
    private Date boardRegdate;
    private Date boardmoddate;
    private int boardView;

}
