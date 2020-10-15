package ch05.service.today;

import java.time.LocalDate;
import ch05.dao.today.TodayDao;
import ch05.dao.today.TodayDaoImpl;

public class TodayServiceImpl implements TodayService {
	private TodayDao todayDao;
	
	public TodayServiceImpl() {
		this.todayDao = new TodayDaoImpl();
	}
	
	@Override
	public LocalDate getCurrentDate() {
		return todayDao.selectCurrentDate();
	}
}
