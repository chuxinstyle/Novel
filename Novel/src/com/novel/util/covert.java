package com.novel.util;

public class covert {

	
	private static final String[] UNITS = { "", "十", "百", "千", "万", "十", "百", "千", "亿", "十", "百", "千", };
	private static final String[] NUMS = { "零", "一", "二", "三", "四", "五", "六", "七", "八", "九", };
 
	/** 
	 *  数字转换成中文汉字 
	 *  @param value 要转换的数字 
	 *  @return 返回数字转后的汉字字符串 
	 */
	public static String number2Chinese(int value) {
 
		String result = ""; //转译结果 
 
		for (int i = String.valueOf(value).length() - 1; i >= 0; i--) {//String.valueOf(value) 转换成String型得到其长度 并排除个位,因为个位不需要单位
			int r = (int) (value / Math.pow(10, i));//value / Math.pow(10, i) 截位匹配单位 
			result += NUMS[r % 10] + UNITS[i];
		}
 
		result = result.replaceAll("零[十, 百, 千]", "零");//匹配字符串中的 "零[十, 百, 千]" 替换为 "零"
		result = result.replaceAll("零+", "零");//匹配字符串中的1或多个 "零" 替换为 "零"
		result = result.replaceAll("零([万, 亿])", "$1");
		result = result.replaceAll("亿万", "亿"); //亿万位拼接时发生的特殊情况
 
		if (result.startsWith("一十")) { //判断是否以 "一十" 开头 如果是截取第一个字符
			result = result.substring(1);
		}
 
		if (result.endsWith("零")) { //判断是否以 "零" 结尾 如果是截取除 "零" 外的字符
			result = result.substring(0, result.length() - 1);
		}
 
		return result;
	}



	}

