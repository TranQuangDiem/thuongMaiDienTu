package customutil;

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
}
