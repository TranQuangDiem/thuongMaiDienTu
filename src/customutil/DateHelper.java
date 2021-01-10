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

	public static boolean isBeforeToday(Date date) {
		Date today=getDateWithoutTimeUsingCalendar();
		
		return date.before(today);
	}
	public static void main(String[] args) throws ParseException {
		Date finday = new SimpleDateFormat("MM/dd/yyyy").parse("01/02/2020");
		System.out.println(isBeforeToday(finday));
	}
}
