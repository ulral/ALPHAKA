package kr.kro.kkalphaka.tableVO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class tableVO {

	private String name;
	private int	num;
	
	public tableVO(String name, int num) {
		super();
		this.name = name;
		this.num = num;
	}
}
