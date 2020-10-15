package ch05.dao.today;

import java.time.LocalDate;

public interface TodayDao {
	LocalDate selectCurrentDate();
}
