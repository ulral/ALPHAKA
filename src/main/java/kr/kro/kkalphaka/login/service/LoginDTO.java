package kr.kro.kkalphaka.login.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
    private String userEmail;
    private String userPassword;
    private boolean useCookie;
}
