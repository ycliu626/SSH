<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>课程管理详情</title>
        </head>

        <body data-lesson-id="${entity._id}">
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="info-wrap">
                        <div class="obox introduce">
                            <div class="intro-content">
                                <div class="intro-t">
                                    <h4>课程标题</h4>
                                </div>
                                <div class="intro-c">
                                    <h3>${entity.lessonNo}&nbsp;&nbsp;&nbsp;${entity.title}</h3>
                                </div>
                            </div>
                            <div class="intro-content">
                                <div class="intro-t">
                                    <h4>课程简介</h4>
                                </div>
                                <div class="intro-c">
                                    <p>${entity.description}
                                    </p>
                                </div>
                            </div>
                            <div class="intro-content">
                                <div class="intro-c">
                                    <p>${entity.hour}学时
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- end introduce -->
                        <div class="b-15"></div>
                        <div class="obox courseware" data-target-modal='uploadCoursewareModal'>
                            <div class="lbi">
                                <div class="lbi-title">
                                    <div class="u-ctit">
                                        <span>课件</span>
                                        <i data-category="courseware" class="add-avantar"></i>
                                    </div>
                                </div>
                                <div class="lbi-list">
                                    <div class="chapter" id="coursewareContainer">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end courseware -->
                        <div class="b-15"></div>
                        <div class="obox courseware" data-target-modal='handoutModal'>
                            <div class="lbi">
                                <div class="lbi-title">
                                    <div class="u-ctit">
                                        <span>讲义</span>
                                        <i data-category="handout" class="add-avantar"></i>
                                    </div>
                                </div>
                                <div class="lbi-list">
                                    <div class="chapter" id="handoutContainer">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end handout -->
                        <div class="b-15"></div>
                        <div class="obox courseware" data-target-modal='discuss-thinkingModal'>
                            <div class="lbi">
                                <div class="lbi-title">
                                    <div class="u-ctit">
                                        <span>讨论思考</span>
                                        <i data-category="discuss-thinking" class="add-avantar"></i>
                                    </div>
                                </div>
                                <div class="lbi-list">
                                    <div class="chapter" id="discuss-thinkingContainer">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end discussThinking -->
                        <!-- end handout -->
                        <div class="b-15"></div>
                        <div class="obox courseware" data-target-modal='readingModal'>
                            <div class="lbi">
                                <div class="lbi-title">
                                    <div class="u-ctit">
                                        <span>指定阅读</span>
                                        <i data-category="reading" class="add-avantar"></i>
                                    </div>
                                </div>
                                <div class="lbi-list">
                                    <div class="chapter" id="readingContainer">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end reading -->
                        <div class="b-15"></div>
                        <div class="obox courseware" data-target-modal='extra-readingModal'>
                            <div class="lbi">
                                <div class="lbi-title">
                                    <div class="u-ctit">
                                        <span>扩展阅读</span>
                                        <i data-category="extra-reading" class="add-avantar"></i>
                                    </div>
                                </div>
                                <div class="lbi-list">
                                    <div class="chapter" id="extra-readingContainer">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end extra reading -->
                        <div class="b-15"></div>
                        <div class="obox courseware" data-target-modal='video-audio-infoModal'>
                            <div class="lbi">
                                <div class="lbi-title">
                                    <div class="u-ctit">
                                        <span>视频</span>
                                        <i data-category="video-audio-info" class="add-avantar"></i>
                                    </div>
                                </div>
                                <div class="lbi-list">
                                    <div class="chapter" id="video-audio-infoContainer">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end extra reading -->
                    </div>
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
            <!-- 上传课件modal -->
            <%@include file="courseware-modal.jsp" %>
            <!-- 上传讲义modal -->
            <%@include file="handout-modal.jsp" %>
            <!-- 讨论思考modal -->
            <%@include file="discuss-thinking-modal.jsp" %>
            <!-- 指定阅读modal -->
            <%@include file="reading-modal.jsp" %>
            <!-- 扩展阅读modal -->
            <%@include file="extra-reading-modal.jsp" %>
            <!-- 视频音频modal -->
            <%@include file="video-audio-info-modal.jsp" %>
            <script type="text/html" id="coursewareTmpl">
                {{each data as value}}
                <div class="section" data-entity-id="{{value._id}}">
                    <span class="cs-ll kjbh">{{value.sort}}</span>
                    <span class="cs-ll kjmc">{{value.title}}</span>
                    <span class="cs-lr kjct">{{value.lastUpdate}}</span>
                    <span class="cs-lr kj-edit hide">
                        <a class="oper-btn view-kj-btn"></a>
                        <a class="oper-btn edit-kj-btn">编辑</a>
                        <a class="oper-btn delete-kj-btn">删除</a>
                    </span>
                </div>
                {{/each}}
            </script>
            <script type="text/html" id="handoutTmpl">
                {{each data as value}}
                <div class="section" data-entity-id="{{value._id}}">
                    <span class="cs-ll kjmc">{{value.title}}</span>
                    <span class="cs-lr kjct">{{value.lastUpdate}}</span>
                    <span class="cs-lr kj-edit hide">
                        <a class="oper-btn view-kj-btn"></a>
                        <a class="oper-btn edit-kj-btn">编辑</a>
                        <a class="oper-btn delete-kj-btn">删除</a>
                    </span>
                </div>
                {{/each}}
            </script>
            <script type="text/html" id="discuss-thinkingTmpl">
                {{each data as value}}
                <div class="section" data-entity-id="{{value._id}}">
                    <span class="cs-ll kjmc">{{value.content}}</span>
                    <span class="cs-lr kjct">{{value.lastUpdate}}</span>
                    <span class="cs-lr kj-edit hide">
                        <a class="oper-btn view-kj-btn"></a>
                        <a class="oper-btn edit-kj-btn">编辑</a>
                        <a class="oper-btn delete-kj-btn">删除</a>
                    </span>
                </div>
                {{/each}}
            </script>
            <script type="text/html" id="readingTmpl">
                {{each data as value}}
                <div class="section" data-entity-id="{{value._id}}">
                    <span class="cs-ll kjmc">{{value.title}}</span>
                    <span class="cs-lr kjct">{{value.lastUpdate}}</span>
                    <span class="cs-lr kj-edit hide">
                        <a class="oper-btn view-kj-btn"></a>
                        <a class="oper-btn edit-kj-btn">编辑</a>
                        <a class="oper-btn delete-kj-btn">删除</a>
                    </span>
                </div>
                {{/each}}
            </script>
            <script type="text/html" id="extra-readingTmpl">
                {{each data as value}}
                <div class="section" data-entity-id="{{value._id}}">
                    <span class="cs-ll kjmc">{{value.title}}</span>
                    <span class="cs-lr kjct">{{value.lastUpdate}}</span>
                    <span class="cs-lr kj-edit hide">
                        <a class="oper-btn view-kj-btn"></a>
                        <a class="oper-btn edit-kj-btn">编辑</a>
                        <a class="oper-btn delete-kj-btn">删除</a>
                    </span>
                </div>
                {{/each}}
            </script>
            <script type="text/html" id="video-audio-infoTmpl">
                {{each data as value}}
                <div class="section" data-entity-id="{{value._id}}">
                    <span class="cs-ll kjmc">{{value.title}}</span>
                    <span class="cs-lr kjct">{{value.lastUpdate}}</span>
                    <span class="cs-lr kj-edit hide">
                        <a class="oper-btn view-kj-btn"></a>
                        <a class="oper-btn edit-kj-btn">编辑</a>
                        <a class="oper-btn delete-kj-btn">删除</a>
                    </span>
                </div>
                {{/each}}
            </script>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script src="${contextPath}/js-lib/jquery-pku-upload.js"></script>
            <script src="${contextPath}/js-lib/ajaxfileupload.js"></script>
            <script type="text/javascript">
                $(function () {
                    var lessonId = $('body').attr('data-lesson-id');

                    $(".obox").on("mouseenter", ".section", function () {
                        var $this = $(this);
                        $this.addClass('section-cur');
                        $this.find('.kjct').addClass("hide").end().find(".kj-edit").removeClass('hide');
                    }).on("mouseleave", ".section", function () {
                        var $this = $(this);
                        $this.removeClass('section-cur');
                        $this.find('.kj-edit').addClass("hide").end().find(".kjct").removeClass('hide');
                    });

                    //添加按钮
                    $(".obox").on("click", "i.add-avantar", function () {
                        var $this = $(this);
                        var targetModal = $this.closest(".obox").data("target-modal");
                        var $targetModal = $("#" + targetModal);

                        $targetModal.find("input[name='entity.lesson._id']").val(lessonId);
                        $targetModal.modal();
                    });

                    //-------------------------加载课件数据----------------------------------
                    function loadData(actionName) {
                        return function () {
                            $.ajax({
                                url: actionName + '!list',
                                type: 'post',
                                data: {
                                    'entity.lesson._id': lessonId
                                },
                                dataType: 'json'
                            }).done(function (data) {
                                var result = {};
                                result.data = data;
                                var h = template(actionName + 'Tmpl', result);
                                $("#" + actionName + "Container").html(h);
                            });
                        }
                    }
                    loadData('courseware')();
                    loadData('handout')();
                    loadData('discuss-thinking')();
                    loadData('reading')();
                    loadData('extra-reading')();
                    loadData('video-audio-info')();

                    //-------------------------课件----------------------------------
                    //课件的操作事件
                    $(".obox").on("click", ".oper-btn", function () {
                        var $this = $(this),
                            $section = $this.closest(".section");
                        var entityId = $section.data("entity-id");

                        //查找出对应的modal
                        var targetModal = $(this).closest(".obox").data("target-modal");
                        var $targetModal = $('#' + targetModal),
                            actionName = $targetModal.attr("data-action-name");

                        if ($this.hasClass('edit-kj-btn')) { //编辑
                            //给属性赋值
                            $targetModal.find("input[name='entity.lesson._id']").val(lessonId).end()
                                .find("input[name='entity._id']").val(entityId);
                            $targetModal.modal();
                        } else if ($this.hasClass('delete-kj-btn')) { //删除
                            if (actionName == 'videoAudioInfo') {
                                actionName = 'video-audio-info';
                            }
                            alertify.confirm("确定删除此资料？", function(e) {
                                if (e) {
                                    $.post(actionName + '!delete', {
                                        'id': entityId
                                    }, function (data) {
                                        if (data.result == 1) {
                                            alertify.alert("删除成功");
                                            $section.remove();
                                        } else {
                                            alertify.alert("删除失败");
                                        }
                                    }, 'json')
                                } else {
                                    return;
                                }
                            });

                        } else if ($this.hasClass('view-kj-btn')) { //查看
                            //TODO
                            console.log("view");
                        }
                    });

                    function loadDetail(o) {
                        if (o.data['entity._id']) {
                            $.ajax({
                                url: o.url,
                                type: 'post',
                                data: o.data,
                                dataType: 'json'
                            }).done(function (data) {
                                o.callback(data);
                            });
                        }
                    }

                    function filloutForm(data, $form) {
                        $form.find("input[name='entity.title']").val(data.title);
                            $form.find("input[name='entity.createTime']").val(data.createTime);
                            $form.find("input[name='entity.description']").val(data.description);
                            $form.find("input[name='entity.author']").val(data.author);
                            $form.find("input[name='entity.attachment']").val(data.attachment);
                            $form.find("input[name='attachmentPath']").val(data.attachment);
                            $form.find("input[name='entity.attachmentZip']").val(data.attachmentZip);
                            $form.find("input[name='entity.speaker']").val(data.speaker);
                            $form.find("input[name='entity.speakerInfo']").val(data.speakerInfo);
                            $form.find("input[name='entity.sort']").val(data.sort);
                            $form.find("input[name='entity.type']").val(data.type);
                            $form.find("input[name='entity.content']").val(data.content);
                            $form.find("input[name='imgAttachmentPath']").val(data.img);
                            $form.find("input[name='entity.img']").val(data.img);

                    }

                    function resetForm($form) {
                        var bootstrapValidator = $form.data('bootstrapValidator');
                        if (bootstrapValidator) {
                            bootstrapValidator.destroy();
                        }
                        $form.find("input[type=hidden], input[type=text], input[type=file], texarea").val("");
                        handoutContent.html('');
                        readingContent.html('');
                        extraReadingContent.html('');
                    }

                    $('.modal').on("show.bs.modal", function (e) {
                        //如果是编辑，则通过ajax加载数据
                        var $this = $(this),
                            $form = $this.find('form'),
                            actionName = $this.attr("data-action-name");

                        if (actionName == 'courseware') { //-------------------------------------如果是课件
                            var coursewareId = $form.find("input[name='entity._id']").val();
                            if (coursewareId) {
                                loadDetail({
                                    url: 'courseware!detail',
                                    data: {
                                        'entity._id': coursewareId
                                    },
                                    callback: function (data) {
                                        filloutForm(data, $form);
                                    }
                                });
                            }
                            //显示模态窗口时，添加表单验证
                            if (!$form.data('bootstrapValidator')) {
                                $form.bootstrapValidator({
                                    fields: {
                                        "entity.title": {
                                            validators: {
                                                notEmpty: {
                                                    message: '课件名称不能为空'
                                                }
                                            }
                                        },
                                        "entity.description": {
                                            validators: {
                                                notEmpty: {
                                                    message: '课件描述不能为空'
                                                }
                                            }
                                        }

                                    }
                                });
                            }
                        } else if (actionName == 'handout') { //--------------------------------------------如果是讲义
                            var handoutId = $form.find("input[name='entity._id']").val();
                            if (handoutId) {
                                loadDetail({
                                    url: 'handout!detail',
                                    data: {
                                        'entity._id': handoutId
                                    },
                                    callback: function (data) {
                                        filloutForm(data, $form);
                                        handoutContent.html(data.content);
                                    }
                                });
                            }
                            //显示模态窗口时，添加表单验证
                            if (!$form.data('bootstrapValidator')) {
                                $form.bootstrapValidator({
                                    fields: {
                                        "entity.title": {
                                            validators: {
                                                notEmpty: {
                                                    message: '讲义名称不能为空'
                                                }
                                            }
                                        }

                                    }
                                });
                            }
                        } else if (actionName == 'discuss-thinking') { //-----------------------------------------------讨论思考
                            var duscussId = $form.find("input[name='entity._id']").val();
                            if (duscussId) {
                                loadDetail({
                                    url: 'discuss-thinking!detail',
                                    data: {
                                        'entity._id': duscussId
                                    },
                                    callback: function (data) {
                                        filloutForm(data, $form);
                                    }
                                });
                            }
                            //显示模态窗口时，添加表单验证
                            if (!$form.data('bootstrapValidator')) {
                                $form.bootstrapValidator({
                                    fields: {
                                        "entity.content": {
                                            validators: {
                                                notEmpty: {
                                                    message: '讨论内容不能为空'
                                                }
                                            }
                                        }
                                    }
                                });
                            }
                        } else if (actionName == 'reading') { //------------------------------------------------------指定阅读
                            var readingId = $form.find("input[name='entity._id']").val();
                            if (readingId) {
                                loadDetail({
                                    url: 'reading!detail',
                                    data: {
                                        'entity._id': readingId
                                    },
                                    callback: function (data) {
                                        filloutForm(data, $form);
                                        readingContent.html(data.content);
                                    }
                                });
                            }
                            //显示模态窗口时，添加表单验证
                            if (!$form.data('bootstrapValidator')) {
                                $form.bootstrapValidator({
                                    fields: {
                                        "entity.title": {
                                            validators: {
                                                notEmpty: {
                                                    message: '标题不能为空'
                                                }
                                            }
                                        },
                                        "entity.author": {
                                            validators: {
                                                notEmpty: {
                                                    message: '作者不能为空'
                                                }
                                            }
                                        },
                                        "entity.description": {
                                            validators: {
                                                notEmpty: {
                                                    message: '简介不能为空'
                                                }
                                            }
                                        }
                                    }
                                });
                            }
                        } else if (actionName == 'extra-reading') { //-----------------------------------------------额外阅读
                            var extraReadingId = $form.find("input[name='entity._id']").val();
                            if (extraReadingId) {
                                loadDetail({
                                    url: 'extra-reading!detail',
                                    data: {
                                        'entity._id': extraReadingId
                                    },
                                    callback: function (data) {
                                        filloutForm(data, $form);
                                        extraReadingContent.html(data.content)
                                    }
                                });
                            }
                            //显示模态窗口时，添加表单验证
                            if (!$form.data('bootstrapValidator')) {
                                $form.bootstrapValidator({
                                    fields: {
                                        "entity.title": {
                                            validators: {
                                                notEmpty: {
                                                    message: '标题不能为空'
                                                }
                                            }
                                        },
                                        "entity.author": {
                                            validators: {
                                                notEmpty: {
                                                    message: '作者不能为空'
                                                }
                                            }
                                        },
                                        "entity.description": {
                                            validators: {
                                                notEmpty: {
                                                    message: '简介不能为空'
                                                }
                                            }
                                        }
                                    }
                                });
                            }
                        } else if (actionName == 'video-audio-info') { //----------------------------------------------音频视频
                            var videoId = $form.find("input[name='entity._id']").val();
                            if (videoId) {
                                loadDetail({
                                    url: 'video-audio-info!detail',
                                    data: {
                                        'entity._id': videoId
                                    },
                                    callback: function (data) {
                                    	if(data.type==0){
	                                    	$form.find("option[value='0']").attr("selected",true);
                                    	}else{
                                    		$form.find("option[value='1']").attr("selected",true);
                                    	}
                                        filloutForm(data, $form);
                                    }
                                });
                            }
                            //显示模态窗口时，添加表单验证
                            if (!$form.data('bootstrapValidator')) {
                                $form.bootstrapValidator({
                                    fields: {
                                        "entity.title": {
                                            validators: {
                                                notEmpty: {
                                                    message: '标题不能为空'
                                                }
                                            }
                                        },
                                        "entity.speaker": {
                                            validators: {
                                                notEmpty: {
                                                    message: '主讲人不能为空'
                                                }
                                            }
                                        },
                                        "entity.speakerInfo": {
                                            validators: {
                                                notEmpty: {
                                                    message: '主讲人介绍不能为空'
                                                }
                                            }
                                        },
                                        "entity.description": {
                                            validators: {
                                                notEmpty: {
                                                    message: '影像简介不能为空'
                                                }
                                            }
                                        },
                                        "entity.sort": {
                                            validators: {
                                                notEmpty: {
                                                    message: '排序不能为空'
                                                },
                                                regexp:{
                                                    regexp : /^[0-9]+$/,
                                                    message : '请输入数字'
                                                }
                                            }
                                        }

                                    }
                                });
                            }
                        }
                    });
                    $('.modal').on('hide.bs.modal', function (e) {
                        //如果是编辑，则通过ajax加载数据
                        var $this = $(this),
                            $form = $this.find('form'),
                            actionName = $this.attr("data-action-name");
                        // $form[0].reset(); //reset居然不起作用
                        resetForm($form);
                    });

                    $("#coursewareUploadKit").pkuUpload({
                        subfix: ["zip"],
                        helpTarget: 'courseware-attach-err-msg', //需要id
                        attachmentName: 'entity.attachmentZip',
                        url: '../common/kindeditor!jQueryFileUpload.action',
                        dir: 'courseware',
                        localAttachPath: 'attachmentPath',
                        fileElementId: 'coursewareUpload'
                    });
                    $("#handoutUploadKit").pkuUpload({
                        subfix: ["doc","docx"],
                        helpTarget: 'handout-attach-err-msg', //需要id
                        attachmentName: 'entity.attachment',
                        url: '../common/kindeditor!jQueryFileUpload.action',
                        dir: 'handout',
                        localAttachPath: 'attachmentPath',
                        fileElementId: 'handoutUpload'
                    });
                    $("#videoUploadKit").pkuUpload({
                        subfix: ["mp4"],
                        helpTarget: 'video-attach-err-msg', //需要id
                        attachmentName: 'entity.attachment',
                        url: '../common/kindeditor!jQueryFileUpload.action',
                        dir: 'video-audio-info',
                        localAttachPath: 'attachmentPath',
                        fileElementId: 'videoUpload'
                    });
                    $("#imgUploadKit").pkuUpload({
                        subfix: ["jpg", "jpeg", "png", "gif"],
                        helpTarget: 'video-img-err-msg', //需要id
                        attachmentName: 'entity.img',
                        url: '../common/kindeditor!jQueryFileUpload.action',
                        dir: 'video-audio-thumbnail',
                        localAttachPath: 'imgAttachmentPath',
                        fileElementId: 'imgUpload'
                    });

                    $(".modal").on("click", ".modal-confirm-btn", function (e) {
                        var $this = $(this),
                            $modal = $this.closest(".modal")
                        $form = $modal.find('form');
                        var actionName = $modal.attr("data-action-name");
                        if (actionName == 'courseware') { //-------------------------------------如果是课件
                            if(!$form.find("input[name='entity.attachmentZip']").val()){
                                alertify.alert("请上传课件附件");
                                return;
                            }

                        }else if (actionName == 'handout') { //--------------------------------------------如果是讲义
                            if(handoutContent.html()==''){
                                alertify.alert("请输入讲义内容");
                                return;
                            }
                            if(!$form.find("input[name='entity.attachment']").val()){
                                alertify.alert("请上传讲义附件");
                                return;
                            }
                        }else if(actionName == 'reading'){//--------------------------------------------如果是指定阅读
                            if(readingContent.html()==''){
                                alertify.alert("请输入内容");
                                return;
                            }
                        }else if(actionName == 'extra-reading'){//--------------------------------------------如果是扩展阅读
                            if(extraReadingContent.html()==''){
                                alertify.alert("请输入内容");
                                return;
                            }
                        }else if (actionName == 'video-audio-info') { //----------------------------------------------音频视频
                            if(!$form.find("input[name='entity.img']").val()){
                                alertify.alert("请上传视频缩略图");
                                return;
                            }
                            if(!$form.find("input[name='entity.attachment']").val()){
                                alertify.alert("请上传视频附件");
                                return;
                            }
                        }

                        var actionUrl = $form.attr('action');
                        var formdata = $form.serialize();
                        var validator = $form.data('bootstrapValidator');
                        validator.validate();
                        if (validator.isValid()) {
                            $.post(actionUrl, formdata, function (data, textStatus, xhr) {
                                $modal.modal("hide");
                                if (data.result = 1) {
                                    loadData(actionName)();
                                }
                            });
                        }

                    });

                    //-------------------------end课件----------------------------------
                });
            </script>

            </html>