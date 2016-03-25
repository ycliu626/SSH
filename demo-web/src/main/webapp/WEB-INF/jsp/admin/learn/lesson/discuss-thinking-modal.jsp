<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="modal fade" id="discuss-thinkingModal" data-action-name="discuss-thinking" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">讨论思考</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" action="discuss-thinking!addOrUpdate" method="post">
                        <input type="hidden" name="entity.lesson._id">
                        <input type="hidden" name="entity._id">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>讨论内容：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.content"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default modal-confirm-btn">确认</button>
                </div>
            </div>
        </div>
    </div>
