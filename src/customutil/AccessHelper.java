package customutil;

import model.Account;

public class AccessHelper {
	public final static int APPLY_JOB_ACCESS = 0x00000002;
	public final static int CREATE_JOB_ACCESS = 0x00000001;
	public static void accessApplyJobAccess(Account account, int access, Runnable accept, Runnable deny) {
		if(account==null) {
			deny.run();
		}else
		if((account.getAccess()&access)==APPLY_JOB_ACCESS) {
			accept.run();
		}else
		deny.run();
	}
	public static int takeAccess(int role) {
		switch (role) {
		case 1:
			//Employer
			return CREATE_JOB_ACCESS;
		case 2:
			//Freelaner
			return APPLY_JOB_ACCESS;

		default:
			
			return 0;
		}
		
	}

}
