package org.crce.interns.service;

import org.crce.interns.model.Criteria;
import java.util.*;
import org.crce.interns.beans.*;

public interface CriteriaService {
	public void addCriteria(Criteria criteria);
   public List<CriteriaBean> getCriteria();
}
