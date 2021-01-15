package customutil;

import javax.servlet.http.HttpSession;

import config.CommonConst;
import model.Account;

public class AccessHelper {
	//6 admin + freelancer
	//5 admin + employer
	//4 admin 
	//2 freelancer
	//1 employer
	public final static int ADMIN_ACCESS = 4;
	public final static int EMPLOYER_ACCESS = 2;
	public final static int FREELANCER_ACCESS = 1;
	public static void access(HttpSession session, int access, Runnable accept, Runnable deny) {
		Account account = (Account)session.getAttribute(CommonConst.SESSION_ACCOUNT);
		if(account==null) {
			deny.run();
		}else
		if((account.getRole()&access)>0) {
			accept.run();
		}else
		deny.run();
	}
	public static boolean access(HttpSession session, int access) {
		Account account = (Account)session.getAttribute(CommonConst.SESSION_ACCOUNT);
		if(account==null) {
			return false;
		}else
		if((account.getRole()&access)>0) {
			return true;
		}return false;
	}
	public static boolean accessAdmin(int role) {
		return (ADMIN_ACCESS&role)>0;
		
	}
	public static boolean accessEmployer(int role) {
		return (EMPLOYER_ACCESS&role)>0;
		
	}
	public static boolean accessFreelancer(int role) {
		return (FREELANCER_ACCESS&role)>0;
		
	}
	
	

}
