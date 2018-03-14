package com.jcmz.model;

import java.util.ArrayList;
import java.util.List;

public class BlockExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BlockExample() {
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

        public Criteria andBlocknameIsNull() {
            addCriterion("blockName is null");
            return (Criteria) this;
        }

        public Criteria andBlocknameIsNotNull() {
            addCriterion("blockName is not null");
            return (Criteria) this;
        }

        public Criteria andBlocknameEqualTo(String value) {
            addCriterion("blockName =", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameNotEqualTo(String value) {
            addCriterion("blockName <>", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameGreaterThan(String value) {
            addCriterion("blockName >", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameGreaterThanOrEqualTo(String value) {
            addCriterion("blockName >=", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameLessThan(String value) {
            addCriterion("blockName <", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameLessThanOrEqualTo(String value) {
            addCriterion("blockName <=", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameLike(String value) {
            addCriterion("blockName like", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameNotLike(String value) {
            addCriterion("blockName not like", value, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameIn(List<String> values) {
            addCriterion("blockName in", values, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameNotIn(List<String> values) {
            addCriterion("blockName not in", values, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameBetween(String value1, String value2) {
            addCriterion("blockName between", value1, value2, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlocknameNotBetween(String value1, String value2) {
            addCriterion("blockName not between", value1, value2, "blockname");
            return (Criteria) this;
        }

        public Criteria andBlockremarkIsNull() {
            addCriterion("blockRemark is null");
            return (Criteria) this;
        }

        public Criteria andBlockremarkIsNotNull() {
            addCriterion("blockRemark is not null");
            return (Criteria) this;
        }

        public Criteria andBlockremarkEqualTo(String value) {
            addCriterion("blockRemark =", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkNotEqualTo(String value) {
            addCriterion("blockRemark <>", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkGreaterThan(String value) {
            addCriterion("blockRemark >", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkGreaterThanOrEqualTo(String value) {
            addCriterion("blockRemark >=", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkLessThan(String value) {
            addCriterion("blockRemark <", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkLessThanOrEqualTo(String value) {
            addCriterion("blockRemark <=", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkLike(String value) {
            addCriterion("blockRemark like", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkNotLike(String value) {
            addCriterion("blockRemark not like", value, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkIn(List<String> values) {
            addCriterion("blockRemark in", values, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkNotIn(List<String> values) {
            addCriterion("blockRemark not in", values, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkBetween(String value1, String value2) {
            addCriterion("blockRemark between", value1, value2, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockremarkNotBetween(String value1, String value2) {
            addCriterion("blockRemark not between", value1, value2, "blockremark");
            return (Criteria) this;
        }

        public Criteria andBlockstatusIsNull() {
            addCriterion("blockStatus is null");
            return (Criteria) this;
        }

        public Criteria andBlockstatusIsNotNull() {
            addCriterion("blockStatus is not null");
            return (Criteria) this;
        }

        public Criteria andBlockstatusEqualTo(Integer value) {
            addCriterion("blockStatus =", value, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusNotEqualTo(Integer value) {
            addCriterion("blockStatus <>", value, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusGreaterThan(Integer value) {
            addCriterion("blockStatus >", value, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("blockStatus >=", value, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusLessThan(Integer value) {
            addCriterion("blockStatus <", value, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusLessThanOrEqualTo(Integer value) {
            addCriterion("blockStatus <=", value, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusIn(List<Integer> values) {
            addCriterion("blockStatus in", values, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusNotIn(List<Integer> values) {
            addCriterion("blockStatus not in", values, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusBetween(Integer value1, Integer value2) {
            addCriterion("blockStatus between", value1, value2, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andBlockstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("blockStatus not between", value1, value2, "blockstatus");
            return (Criteria) this;
        }

        public Criteria andPageidIsNull() {
            addCriterion("pageId is null");
            return (Criteria) this;
        }

        public Criteria andPageidIsNotNull() {
            addCriterion("pageId is not null");
            return (Criteria) this;
        }

        public Criteria andPageidEqualTo(Integer value) {
            addCriterion("pageId =", value, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidNotEqualTo(Integer value) {
            addCriterion("pageId <>", value, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidGreaterThan(Integer value) {
            addCriterion("pageId >", value, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidGreaterThanOrEqualTo(Integer value) {
            addCriterion("pageId >=", value, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidLessThan(Integer value) {
            addCriterion("pageId <", value, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidLessThanOrEqualTo(Integer value) {
            addCriterion("pageId <=", value, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidIn(List<Integer> values) {
            addCriterion("pageId in", values, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidNotIn(List<Integer> values) {
            addCriterion("pageId not in", values, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidBetween(Integer value1, Integer value2) {
            addCriterion("pageId between", value1, value2, "pageid");
            return (Criteria) this;
        }

        public Criteria andPageidNotBetween(Integer value1, Integer value2) {
            addCriterion("pageId not between", value1, value2, "pageid");
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