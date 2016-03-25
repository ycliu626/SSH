package com.ycliu.bupt.model.common;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class CommonAction extends ActionSupport implements ServletRequestAware, ServletResponseAware,
        SessionAware {

    private static final Logger   LOGGER            = Logger.getLogger(CommonAction.class);
    private static final long     serialVersionUID = 1L;

    // 分页使用变量
    protected int                 start;
    protected int                 limit;
    protected long                totalPage;

    // 查询
    protected String              query;
    // 排序
    protected String              sort;
    //
    // 日志
    protected String              logMark;
    protected String              menuName;

    protected Map<String, Object> session;
    protected HttpServletRequest  request;
    protected HttpServletResponse response;

    /**
     * 发送状态、数据和显示信息.
     *
     * @author ycliu
     * @param isSuccess
     * @param data
     * @param msg
     */
    public <T> void sendMsg(boolean isSuccess, T data, String msg) {
        Map<String, Object> responseMap = new HashMap<String, Object>();
        responseMap.put("success", isSuccess);
        responseMap.put("data", data);
        responseMap.put("message", msg);

        this.sendResponseMsg(new Gson().toJson(responseMap));
    }

    /**
     * 发送数据和显示信息，状态默认 为true
     *
     * @author ycliu
     * @param data
     * @param msg
     */
    public <T> void sendSuccessMsg(T data, String msg) {
        this.sendMsg(true, data, msg);
    }

    /**
     * 发送成功通知消息，状态默认 为true，数据为null
     *
     * @author ycliu
     * @param data
     * @param msg
     */
    public <T> void sendSuccessMsg(String msg) {
    	this.sendMsg(true, "", msg);
    }

    /**
     * 发送成功通知消息，状态默认 为true，数据为null
     *
     * @author ycliu
     * @param data
     * @param msg
     */
    public <T> void sendSuccessMsg(T data) {
    	this.sendMsg(true, data, "");
    }

    /**
     * 发送状态，默认为true
     *
     * @author ycliu
     */
    public void sendSuccessMsg() {
        this.sendMsg(true, "", "");
    }

    /**
     * 发送状态为false时的数据和消息.
     *
     * @author ycliu
     * @param data
     * @param errorMsg
     */
    public <T> void sendFailMsg(T data, String errorMsg) {
        this.sendMsg(false, data, errorMsg);
    }

    /**
     * 发送失败通知消息，状态默认为false，数据默认为null.
     *
     * @author ycliu
     * @param data
     * @param errorMsg
     */
    public <T> void sendFailMsg(String errorMsg) {
    	this.sendMsg(false, "", errorMsg);
    }

    /**
     * 发送数据集合
     *
     * @author ycliu
     */

    public <E> void sendArrayMsg(Collection<E> collectObj) {
        this.sendResponseMsg(new Gson().toJson(collectObj));
    }

    /**
     * 将json格式的数据发送给前端
     *
     * @author ycliu
     * @param jsonMsg
     */
    public void sendResponseMsg(String jsonMsg) {
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = null;
        try {
            writer = response.getWriter();
            writer.write(jsonMsg);
            writer.flush();
        } catch (IOException e) {
            LOGGER .error("Json convert send to page error!", e);
        } finally {
            if (null != writer) {
                writer.close();
                writer = null;
            }
        }
    }

    /**
     * 判断是否是Ajax请求. <br/>
     *
     * @author ycliu
     * @return
     */
    public boolean isAjaxRequest() {
        String header = request.getHeader("X-Requested-With");
        if (header != null && "XMLHttpRequest".equalsIgnoreCase(header))
            return true;
        else
            return false;
    }

    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    @Override
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    /**
     * query.
     *
     * @return the query
     * @since JDK 1.6
     */
    public String getQuery() {
        return query;
    }

    /**
     * query.
     *
     * @param query the query to set
     * @since JDK 1.6
     */
    public void setQuery(String query) {
        this.query = query;
    }

    public String getLogMark() {
        return logMark;
    }

    public void setLogMark(String logMark) {
        this.logMark = logMark;
    }

    /**
     * start.
     *
     * @return the start
     * @since JDK 1.6
     */
    public int getStart() {
        return this.start;
    }

    /**
     * limit.
     *
     * @return the limit
     * @since JDK 1.6
     */
    public int getLimit() {
        return this.limit;
    }

    /**
     * start.
     *
     * @param start the start to set
     * @since JDK 1.6
     */
    public void setStart(int start) {
        this.start = start;
    }

    /**
     * limit.
     *
     * @param limit the limit to set
     * @since JDK 1.6
     */
    public void setLimit(int limit) {
        this.limit = limit;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

}
