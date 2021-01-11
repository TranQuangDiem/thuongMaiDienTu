package customutil;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateHelper {
	public static Date getDateWithoutTimeUsingCalendar() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		return calendar.getTime();
	}
	public static String parseToString(Date date) {
	    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
	    String strDate = formatter.format(date);
	    return strDate;
	}

	public static boolean isBeforeToday(Date date) {
		Date today=getDateWithoutTimeUsingCalendar();
		return date.before(today);
	}
	public static void main(String[] args) throws ParseException {
		Date finday = new SimpleDateFormat("MM/dd/yyyy").parse("10/28/2020");
		System.out.println(parseToString(finday));
	
	}
}
