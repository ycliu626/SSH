<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="modal fade" id="uploadCoursewareModal" data-action-name="courseware" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">上传课件</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" action="courseware!addOrUpdate" method="post">
                        <input type="hidden" name="entity.lesson._id">
                        <input type="hidden" name="entity._id">
                        <input type="hidden" name="entity.createTime">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>课件名称：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>课件描述：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.description">
                            </div>
                        </div>
                        <div class="form-group" id="coursewareUploadKit">
                            <label class="col-sm-3 control-label ">
                                <font style="color: red;">*</font>课件附件：
                            </label>
                            <div class="col-sm-9">
                                <div class="col-sm-7" style="padding-left: 0;">
                                    <input type="file" class="form-control hidden" id="coursewareUpload" name="upload">
                                    <input type="text" class="form-control" name="attachmentPath" readonly="readonly">
                                </div>
                                <div class="col-sm-5">
                                    <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                    <a class="btn btn-primary" data-purpose="upload">上传</a>
                                </div>
                                <input type="hidden" name="entity.attachmentZip">
                                <div id="courseware-attach-err-msg" class="col-sm-9"></div>
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
    <!-- end 上传课件modal -->
