package jp.ac.asojobs.asojobs.chack;

public class InputChack {

	public int nullchack(String str){
		int err = 0;
		if(str == null || str == ""){
			err = 1;
		}
		return err;
	}

	public int machchack(String str, int mach){
		int err = 0;
		int length = str.length();
		if(length != mach){
			err = 1;
		}
		return err;
	}

}
