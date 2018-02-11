package com.jcmz.model;

import java.util.ArrayList;
import java.util.List;

public class PostpageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostpageExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andPagenameIsNull() {
            addCriterion("pageName is null");
            return (Criteria) this;
        }

        public Criteria andPagenameIsNotNull() {
            addCriterion("pageName is not null");
            return (Criteria) this;
        }

        public Criteria andPagenameEqualTo(String value) {
            addCriterion("pageName =", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameNotEqualTo(String value) {
            addCriterion("pageName <>", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameGreaterThan(String value) {
            addCriterion("pageName >", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameGreaterThanOrEqualTo(String value) {
            addCriterion("pageName >=", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameLessThan(String value) {
            addCriterion("pageName <", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameLessThanOrEqualTo(String value) {
            addCriterion("pageName <=", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameLike(String value) {
            addCriterion("pageName like", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameNotLike(String value) {
            addCriterion("pageName not like", value, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameIn(List<String> values) {
            addCriterion("pageName in", values, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameNotIn(List<String> values) {
            addCriterion("pageName not in", values, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameBetween(String value1, String value2) {
            addCriterion("pageName between", value1, value2, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagenameNotBetween(String value1, String value2) {
            addCriterion("pageName not between", value1, value2, "pagename");
            return (Criteria) this;
        }

        public Criteria andPagestatusIsNull() {
            addCriterion("pageStatus is null");
            return (Criteria) this;
        }

        public Criteria andPagestatusIsNotNull() {
            addCriterion("pageStatus is not null");
            return (Criteria) this;
        }

        public Criteria andPagestatusEqualTo(Integer value) {
            addCriterion("pageStatus =", value, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusNotEqualTo(Integer value) {
            addCriterion("pageStatus <>", value, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusGreaterThan(Integer value) {
            addCriterion("pageStatus >", value, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("pageStatus >=", value, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusLessThan(Integer value) {
            addCriterion("pageStatus <", value, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusLessThanOrEqualTo(Integer value) {
            addCriterion("pageStatus <=", value, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusIn(List<Integer> values) {
            addCriterion("pageStatus in", values, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusNotIn(List<Integer> values) {
            addCriterion("pageStatus not in", values, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusBetween(Integer value1, Integer value2) {
            addCriterion("pageStatus between", value1, value2, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagestatusNotBetween(Integer value1, Integer value2) {
            addCriterion("pageStatus not between", value1, value2, "pagestatus");
            return (Criteria) this;
        }

        public Criteria andPagemanageridIsNull() {
            addCriterion("pageManagerId is null");
            return (Criteria) this;
        }

        public Criteria andPagemanageridIsNotNull() {
            addCriterion("pageManagerId is not null");
            return (Criteria) this;
        }

        public Criteria andPagemanageridEqualTo(Integer value) {
            addCriterion("pageManagerId =", value, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridNotEqualTo(Integer value) {
            addCriterion("pageManagerId <>", value, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridGreaterThan(Integer value) {
            addCriterion("pageManagerId >", value, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridGreaterThanOrEqualTo(Integer value) {
            addCriterion("pageManagerId >=", value, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridLessThan(Integer value) {
            addCriterion("pageManagerId <", value, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridLessThanOrEqualTo(Integer value) {
            addCriterion("pageManagerId <=", value, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridIn(List<Integer> values) {
            addCriterion("pageManagerId in", values, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridNotIn(List<Integer> values) {
            addCriterion("pageManagerId not in", values, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridBetween(Integer value1, Integer value2) {
            addCriterion("pageManagerId between", value1, value2, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPagemanageridNotBetween(Integer value1, Integer value2) {
            addCriterion("pageManagerId not between", value1, value2, "pagemanagerid");
            return (Criteria) this;
        }

        public Criteria andPageremarkIsNull() {
            addCriterion("pageRemark is null");
            return (Criteria) this;
        }

        public Criteria andPageremarkIsNotNull() {
            addCriterion("pageRemark is not null");
            return (Criteria) this;
        }

        public Criteria andPageremarkEqualTo(String value) {
            addCriterion("pageRemark =", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkNotEqualTo(String value) {
            addCriterion("pageRemark <>", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkGreaterThan(String value) {
            addCriterion("pageRemark >", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkGreaterThanOrEqualTo(String value) {
            addCriterion("pageRemark >=", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkLessThan(String value) {
            addCriterion("pageRemark <", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkLessThanOrEqualTo(String value) {
            addCriterion("pageRemark <=", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkLike(String value) {
            addCriterion("pageRemark like", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkNotLike(String value) {
            addCriterion("pageRemark not like", value, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkIn(List<String> values) {
            addCriterion("pageRemark in", values, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkNotIn(List<String> values) {
            addCriterion("pageRemark not in", values, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkBetween(String value1, String value2) {
            addCriterion("pageRemark between", value1, value2, "pageremark");
            return (Criteria) this;
        }

        public Criteria andPageremarkNotBetween(String value1, String value2) {
            addCriterion("pageRemark not between", value1, value2, "pageremark");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}