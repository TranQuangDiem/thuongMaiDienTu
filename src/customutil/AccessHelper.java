package customutil;

import model.Account;

public class AccessHelper {
	public final static int ADMIN_ACCESS = 0x00000004;
	public final static int APPLY_JOB_ACCESS = 0x00000002;
	public final static int CREATE_JOB_ACCESS = 0x00000001;
	public static void accessApplyJobAccess(Account account, int access, Runnable accept, Runnable deny) {
		if(account==null) {
			deny.run();
		}else
		if((account.getRole()&access)>0) {
			accept.run();
		}else
		deny.run();
	}
	
	

}
