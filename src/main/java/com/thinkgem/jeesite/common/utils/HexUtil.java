package com.thinkgem.jeesite.common.utils;
/**
 * 浏览器通过服务端提供的公钥进行加密，然后发到服务器上，通过私钥解密，
但是使用这个解密方法的时候有时可以解密成功，但有时却在解密的时候报 Bad arguments异常，我看见那个帖子的回复说问题出在这句话上
byte[] en_result = new BigInteger(result, 16).toByteArray();   
我查了查，还真是， 秘文传过来一共有256个字符，通过转成字节数组，同样的明文，有时传过来转成的字节数组长度为128，有的时候却又是129，
说是这个转字节数组的方式问题嘛，我就换了一个方式，将其稳定在128位
--------------------- 
作者：懒虫一个V 
来源：CSDN 
原文：https://blog.csdn.net/spy19881201/article/details/9095149 
版权声明：本文为博主原创文章，转载请附上博文链接！

 * 转换byte数组
 * @author zhaojing
 */
public class HexUtil {
	/**
     * 16进制 To byte[]<br>
     * <font color='red'> fix byte[] en_pwd = new BigInteger(pwd, 16).toByteArray();bug</font>
     * @param hexString
     * @return byte[]
     */
	 public static byte[] hexStringToBytes(String hexString) {
		 if (hexString == null || hexString.equals("")) {
			 return null;
		 }
		 hexString = hexString.toUpperCase();
		 int length = hexString.length() / 2;
		 char[] hexChars = hexString.toCharArray();
		 byte[] d = new byte[length];
		 for (int i = 0; i < length; i++) {
			 int pos = i * 2;
			 d[i] = (byte) (charToByte(hexChars[pos]) << 4 | charToByte(hexChars[pos + 1]));
		 }
		 return d;
	}
	 /**
      * Convert char to byte
      * 
      * @param c char
      * @return byte
      */
	private static byte charToByte(char c) {
		return (byte) "0123456789ABCDEF".indexOf(c);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
