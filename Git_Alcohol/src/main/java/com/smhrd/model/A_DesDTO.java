package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class A_DesDTO {
	
	private int sort; //분류
	private String des_des; //설명
	private String des_img; //이미지경로
}
