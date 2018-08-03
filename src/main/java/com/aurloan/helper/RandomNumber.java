package com.aurloan.helper;

import java.text.DecimalFormat;

public class RandomNumber {
//    随机生成0-0.20的随即数
    public static double RandomTwoDecimal(){
        double x=0,y=0.2;
        double d = x + Math.random() * y % (y - x + 1);
        DecimalFormat df = new DecimalFormat("0.00");
        double twoDecimal = Double.parseDouble(df.format(d));
        System.out.println(twoDecimal);
        return twoDecimal;
    }
}
