package kr.kro.kkalphaka.Login.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {
    private String userId;
    private String userPassword;
    private String userName;
    private String userEmail;
}
