package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.beans.CriteriaBean;
import org.crce.interns.model.Criteria;

public interface CriteriaDao {

	public void addCriteria(Criteria criteria);
    public List<CriteriaBean> getCriteria();
}
