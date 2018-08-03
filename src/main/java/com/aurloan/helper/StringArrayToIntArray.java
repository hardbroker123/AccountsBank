package com.aurloan.helper;

public class StringArrayToIntArray {

	public static int[] ToIntArray(String[] s){
		int[] n=new int[s.length];
		for(int i=0;i<s.length;i++){
			n[i]=Integer.parseInt(s[i]);
		}
		return n;
	}
}
