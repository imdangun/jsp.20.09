package ch05.dao.today;

import java.time.LocalDate;
import ch05.config.Configuration;
import ch05.dao.map.today.TodayMap;

public class TodayDaoImpl implements TodayDao {
	private TodayMap todayMap;
	
	public TodayDaoImpl() {
		this.todayMap = Configuration.getMapper(TodayMap.class);
	}
	
	@Override
	public LocalDate selectCurrentDate() {
		return todayMap.selectCurrentDate();
	}
}
