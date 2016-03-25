<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="modal fade" id="video-audio-infoModal" data-action-name="video-audio-info" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">视频</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" action="video-audio-info!addOrUpdate" method="post">
                        <input type="hidden" name="entity.lesson._id">
                        <input type="hidden" name="entity._id">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>标题：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>类型：
                            </label>
                            <div class="col-sm-8">
                                <select type="text" class="form-control" name="entity.type">
                                    <option value="0">视频</option>
                                    <option value="1">精品课程</option>
                                    <!-- <option value="2">歌曲</option> -->
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>主讲人：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.speaker">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>主讲人介绍：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.speakerInfo">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>影像简介：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.description">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">
                                <font style="color: red;">*</font>排序：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.sort">
                            </div>
                        </div>
                        <div class="form-group" id="imgUploadKit">
                            <label class="col-sm-3 control-label ">
                                <font style="color: red;">*</font>视频缩略图：</label>
                            <input type="hidden" name="entity.img">
                            <div class="col-sm-9">
                                <div class="col-sm-7" style="padding-left: 0;">
                                    <input type="file" class="form-control hidden" id="imgUpload" name="upload">
                                    <input type="text" class="form-control" name="imgAttachmentPath" readonly="readonly">
                                </div>
                                <div class="col-sm-5">
                                    <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                    <a class="btn btn-primary" data-purpose="upload">上传</a>
                                </div>
                                <div id="video-img-err-msg" class="col-sm-9"></div>
                            </div>
                        </div>
                        <div class="form-group" id="videoUploadKit">
                            <label class="col-sm-3 control-label ">
                                <font style="color: red;">*</font>附件：</label>
                            <input type="hidden" name="entity.attachment">
                            <div class="col-sm-9">
                                <div class="col-sm-7" style="padding-left: 0;">
                                    <input type="file" class="form-control hidden" id="videoUpload" name="upload">
                                    <input type="text" class="form-control" name="attachmentPath" readonly="readonly">
                                </div>
                                <div class="col-sm-5">
                                    <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                    <a class="btn btn-primary" data-purpose="upload">上传</a>
                                </div>
                                <div id="video-attach-err-msg" class="col-sm-9"></div>
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
