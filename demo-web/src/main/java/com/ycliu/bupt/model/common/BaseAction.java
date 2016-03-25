package com.ycliu.bupt.model.common;

import java.text.MessageFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.data.domain.Sort.Order;

import com.ycliu.bupt.model.pojo.CommonEntity;
import com.ycliu.bupt.model.service.BaseSrv;

import common.toolkit.java.entity.PageEntity;
import common.toolkit.java.orm.entity.UUIDEntityNoVer;
import common.toolkit.java.util.ReflectUtils;

public class BaseAction<T extends UUIDEntityNoVer> extends CommonAction {

    private static final Logger   LOGGER            = Logger.getLogger(BaseAction.class);

    private static final long serialVersionUID = 6530892829632852898L;

    protected T               entity;

    protected String          id;

    protected PageEntity<T>   pageEntity;

    protected String          position;

    public T getEntity() {
        return entity;
    }

    public void setEntity(T entity) {
        this.entity = entity;
    }

    protected BaseSrv<T> baseSrv;

    public BaseAction(BaseSrv<T> baseSrv) {
        this.baseSrv = baseSrv;
    }

    @Override
    public String execute() throws Exception {
        return "toPage";
    }

    public String addOrUpdate() {
        if (this.isAjaxRequest()) {
            if (entity == null) {
//                CommonResult result = new CommonResult();
//                result.setResult(Constants.FAIL_CODE);
//                result.setInfo("entity == null");
                this.sendFailMsg(entity, "entity == null");
            } else if (StringUtils.isEmpty(entity.getId())) {
                // 添加
                this.add();
            } else {
                // 更新
                this.update();
            }
            return null;
        } else {
            return toAddOrUpdate();
        }
    }

    protected String toAddOrUpdate() {
        if (entity != null && StringUtils.isNotBlank(entity.getId())) {
            entity = baseSrv.find(entity.getId());
        }
        return "toAddOrUpdate";
    }

    public String delete() {
        if (this.isAjaxRequest()) {
            LOGGER.info(String.format("==>delete entity:\n\rid: %s'", id));
            this.baseSrv.deleteByIds(id.split(","));
//            CommonResult result = new CommonResult();
//            result.setResult(Constants.SUCCESS_CODE);
//            result.setInfo("删除成功");
            this.sendSuccessMsg("删除成功");
            return null;
        } else {
            return "toPage";
        }
    }

    public String detail() {
        LOGGER.info(MessageFormat.format("==>detail entity:\n\rid:{0}", entity.getId()));
        entity = this.baseSrv.find(entity.getId());
        if (this.isAjaxRequest()) {
            this.sendSuccessMsg(entity);
            return null;
        } else {
            return "show-detail";
        }
    }

    public String page() {
        LOGGER.info(MessageFormat.format("==>page\n\rtype:{0}", ReflectUtils.getSuperClassGenricType(getClass())));
        this.limit = this.limit == 0 ? 10 : this.limit;
        pageEntity = new PageEntity<>(start, limit);
        final Map<String, Object> paramMap = this.buildParamMap();
        final List<Order> orderList = this.buildOrder();
        this.baseSrv.pageList(paramMap, orderList, pageEntity);
        if (this.isAjaxRequest()) {
            this.sendSuccessMsg(pageEntity);
            return null;
        }
        return "toPage";
    }

    public String list() {
        LOGGER.info(MessageFormat.format("==>list\n\rtype:{0}", ReflectUtils.getSuperClassGenricType(getClass())));

        final Map<String, Object> paramMap = this.buildParamMap();
        final List<Order> orderList = this.buildOrder();
        List<T> list = this.baseSrv.findAll();
        if (this.isAjaxRequest()) {
            this.sendSuccessMsg(list);
            return null;
        }
        return "toList";
    }

    protected void add() {
        LOGGER.info(MessageFormat.format("==>add entity:\n\rtype: {0}\n   value: {1},",
                ReflectUtils.getSuperClassGenricType(getClass()), entity.toString()));
//        entity.setCreateTime(new Date());
//        entity.setLastUpdate(new Date());
//        CommonResult result = new CommonResult();
//
        String addOtherInfo = this.addOther();

        if (StringUtils.isNotBlank(addOtherInfo)) {
//            result.setInfo("添加失败");
//            result.setInfo(addOtherInfo);
//            result.setResult(Constants.FAIL_CODE);
        	this.sendFailMsg("添加失败");
        } else {
            this.baseSrv.saveOrUpdate(entity);
//            result.setInfo("添加成功");
//            result.setResult(Constants.SUCCESS_CODE);
            this.sendSuccessMsg("添加成功");
        }

//        this.sendResponseMsg(result);
    }

      protected void update() {
        LOGGER.info(MessageFormat.format("==>update entity:\n\rtype: {0} \r  value:{1},",
                ReflectUtils.getSuperClassGenricType(getClass()), entity.toString()));

//        entity.setLastUpdate(new Date());
//        CommonResult result = new CommonResult();
//        result.setResult(Constants.FAIL_CODE);
        String updateOtherInfo = this.updateOther();
        if (StringUtils.isNotBlank(updateOtherInfo)) {
            this.sendSuccessMsg(updateOtherInfo);
        } else {
            T oldEntity = this.baseSrv.find(entity.getId());
            if (oldEntity == null) {
            	this.sendSuccessMsg("所更新的对象不存在");
            } else {
                this.baseSrv.saveOrUpdate(entity);
                this.sendSuccessMsg("更新成功");
            }
        }
    }

    /**
     * 功能: 添加时，在后台添加属性、执行功能放到这个方法.<br/>
     * date: 2015年3月11日 下午2:55:56 <br/>
     * @author lizhao@wisdombud.com
     */
    protected String addOther() {
        return null;
    }

    /**
     * 功能: 在更新时，有后台添加属性、或者执行功能放到这个方法.<br/>
     * date: 2015年3月11日 下午2:55:27 <br/>
     * @author lizhao@wisdombud.com
     */
    protected String updateOther() {
        return null;
    }

    /**
     * 功能: 构建order list .<br/>
     * date: 2015年3月11日 上午8:50:54 <br/>
     * @author lizhao@wisdombud.com
     * @return
     */
    protected List<Order> buildOrder() {
        return null;
    }

    /**
     * 功能: 构建查询map.<br/>
     * date: 2015年3月11日 上午8:48:40 <br/>
     * @author lizhao@wisdombud.com
     * @return
     */
    protected Map<String, Object> buildParamMap() {
        return null;
    }

    public PageEntity<T> getPageEntity() {
        return pageEntity;
    }

    public void setPageEntity(PageEntity<T> pageEntity) {
        this.pageEntity = pageEntity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
