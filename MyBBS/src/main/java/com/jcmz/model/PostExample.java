package com.jcmz.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PostExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostExample() {
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

        public Criteria andContentIsNull() {
            addCriterion("content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("content not between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userId is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userId is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userId =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userId <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userId >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userId >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userId <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userId <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userId in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userId not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userId between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userId not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidIsNull() {
            addCriterion("blockTypeId is null");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidIsNotNull() {
            addCriterion("blockTypeId is not null");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidEqualTo(Integer value) {
            addCriterion("blockTypeId =", value, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidNotEqualTo(Integer value) {
            addCriterion("blockTypeId <>", value, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidGreaterThan(Integer value) {
            addCriterion("blockTypeId >", value, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("blockTypeId >=", value, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidLessThan(Integer value) {
            addCriterion("blockTypeId <", value, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidLessThanOrEqualTo(Integer value) {
            addCriterion("blockTypeId <=", value, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidIn(List<Integer> values) {
            addCriterion("blockTypeId in", values, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidNotIn(List<Integer> values) {
            addCriterion("blockTypeId not in", values, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidBetween(Integer value1, Integer value2) {
            addCriterion("blockTypeId between", value1, value2, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andBlocktypeidNotBetween(Integer value1, Integer value2) {
            addCriterion("blockTypeId not between", value1, value2, "blocktypeid");
            return (Criteria) this;
        }

        public Criteria andTimeIsNull() {
            addCriterion("time is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("time is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("time =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("time <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("time >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("time >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("time <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("time <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("time in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("time not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("time between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("time not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andManagerstatusIsNull() {
            addCriterion("managerStatus is null");
            return (Criteria) this;
        }

        public Criteria andManagerstatusIsNotNull() {
            addCriterion("managerStatus is not null");
            return (Criteria) this;
        }

        public Criteria andManagerstatusEqualTo(Integer value) {
            addCriterion("managerStatus =", value, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusNotEqualTo(Integer value) {
            addCriterion("managerStatus <>", value, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusGreaterThan(Integer value) {
            addCriterion("managerStatus >", value, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("managerStatus >=", value, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusLessThan(Integer value) {
            addCriterion("managerStatus <", value, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusLessThanOrEqualTo(Integer value) {
            addCriterion("managerStatus <=", value, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusIn(List<Integer> values) {
            addCriterion("managerStatus in", values, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusNotIn(List<Integer> values) {
            addCriterion("managerStatus not in", values, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusBetween(Integer value1, Integer value2) {
            addCriterion("managerStatus between", value1, value2, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andManagerstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("managerStatus not between", value1, value2, "managerstatus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusIsNull() {
            addCriterion("postIsFocus is null");
            return (Criteria) this;
        }

        public Criteria andPostisfocusIsNotNull() {
            addCriterion("postIsFocus is not null");
            return (Criteria) this;
        }

        public Criteria andPostisfocusEqualTo(Integer value) {
            addCriterion("postIsFocus =", value, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusNotEqualTo(Integer value) {
            addCriterion("postIsFocus <>", value, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusGreaterThan(Integer value) {
            addCriterion("postIsFocus >", value, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusGreaterThanOrEqualTo(Integer value) {
            addCriterion("postIsFocus >=", value, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusLessThan(Integer value) {
            addCriterion("postIsFocus <", value, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusLessThanOrEqualTo(Integer value) {
            addCriterion("postIsFocus <=", value, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusIn(List<Integer> values) {
            addCriterion("postIsFocus in", values, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusNotIn(List<Integer> values) {
            addCriterion("postIsFocus not in", values, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusBetween(Integer value1, Integer value2) {
            addCriterion("postIsFocus between", value1, value2, "postisfocus");
            return (Criteria) this;
        }

        public Criteria andPostisfocusNotBetween(Integer value1, Integer value2) {
            addCriterion("postIsFocus not between", value1, value2, "postisfocus");
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