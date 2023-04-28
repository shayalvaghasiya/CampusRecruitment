package org.crce.interns.service;

import java.util.List;

import org.crce.interns.beans.QuickStatsBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("selectService")
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public interface SelectedApplicantsService {
	public int createDetails(QuickStatsBean userBean);
	public List<QuickStatsBean> retrieveDetails(String company);
	public List<QuickStatsBean> retrieveDetails(String company, String year);
	public int deleteDetails(QuickStatsBean userBean);
}
