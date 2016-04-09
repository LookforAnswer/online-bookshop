package com.qxy.shop.util;

import java.util.UUID;

public class Util {
	public static String createId(){
		String str = UUID.randomUUID().toString();
		StringBuilder result = new StringBuilder();
		for(int i=0;i<str.length();i++){
			if('-' == str.charAt(i))
				continue;
			result.append(str.charAt(i));
		}
		return result.toString();
	}
}
