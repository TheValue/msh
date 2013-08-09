package util;

import java.io.UnsupportedEncodingException;

public class HanConv {
	//8859_1 방식을 euc-kr방식으로 변환하는 메소드 정의
	public static String toKor(String str){
		if(str==null ||str.equals("") || str.equals(null)){
			return str;
		}
		try {
			return new String(str.getBytes("8859_1"), "euc-kr");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return str;
		}
	}
	//euc-kr 방식을 8859_1방식으로 변환하는 메소드 정의
	public static String toEng(String str){
		if(str==null ||str.equals("") || str.equals(null)){
			return str;
		}
		
		try {
			return new String(str.getBytes("euc-kr"), "8859_1");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return str;
		}
	}
}
