package edu.pnu;

public class GCDLCM {

	public static void main(String[] args) {
		String num1 = "45";
		String num2 = "15";
		int GCD = 0;
		int LCM = 0;
		if(num1 != null && num2 != null){
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);
			int mul = n1*n2;
			if(n1 - n2 <= 0) {
				int temp = n1;
				n1 = n2;
				n2 = temp;
			}
			int tm = 1;
			while(tm != 0){
				tm = n1 % n2;
				n1 = n2;
				n2 = tm;
				if(n2 == 0){
					GCD = n1;
					LCM = mul/n1;
				}
			}
		}
		System.out.println("GCD:"+GCD);
		System.out.println("LCM:"+LCM);
	}

}
