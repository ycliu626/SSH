<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>课程中心</title>
        </head>

        <body>
            <div class="container">
                <%@ include file="../student-nav.jsp" %>
                    <form>
                        <input type="hidden" id="lessonId" name="lessonId" value="${lessonId}">
                        <input type="hidden" id="examType" name="examType" value="${examType}">
                        <div class="testing-panel">
                            <div class="exam-timer">
                                <span>距离考试结束还有</span>
                                <span id="exam-timer" class="timer"></span>
                            </div>
                            <div id="examTitle" class="exam-title"></div>
                            <div class="panel-left">
                                <div id="myApplyTable"></div>
                                <div class="changeQuestion">
                                    <div id="btn-left"></div>
                                    <div class="page">
                                        <span id="curr-page">1</span>/<span id="total-page">1</span>
                                    </div>
                                    <div id="btn-right"></div>
                                    <div style="clear: both;"></div>
                                </div>
                                <div id="submit" class="finishExam"></div>
                            </div>
                        </div>
                    </form>
                    <div class="results-panel">
                        <div class="results-win">
                            <div id="score" class="score"></div>
                            <div id="msg" class="msg"></div>
                        </div>
                        <div id="results-esc" class="results-esc"></div>
                    </div>
                    <%@ include file="../footer.jsp" %>
            </div>
        </body>
        <%@include file="../student-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/student/exam/exam-testing.js"></script>
            <script type="text/html" id="lessonPaperTpl">
                <input type="hidden" name="examChapter.title" value="{{title}}">
                <input type="hidden" name="examChapter.passPrompt" value="{{passPrompt}}">
                <input type="hidden" name="examChapter.notPassPrompt" value="{{notPassPrompt}}">
                <input type="hidden" name="examChapter.enable" value="{{enable}}">
                <input type="hidden" name="examChapter.passMark" value="{{passMark}}">
                <input type="hidden" name="examChapter.testPaper.title" value="{{testPaper.title}}">
                <input type="hidden" name="examChapter.testPaper.passMark" value="{{testPaper.passMark}}"> {{each testPaper.questions as info index}}
                <div id="t{{index+1}}" class="oneQuestion" {{if index==0}}style="display:block;" {{/if}}>
                    <div class="qType">
                        {{if info.qusType==0}} 单选题
                        <span>(每题2分)&nbsp;每小题只有一个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}} {{if info.qusType==1}} 多选题
                        <span>(每题2分)&nbsp;每小题有一个或多个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}} {{if info.qusType==2}} 判断题
                        <span>(每题2分)&nbsp;每小题只有一个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}}
                    </div>
                    <div class="qBody">
                        <div class="qTitle">{{index+1}}.{{info.title}}</div>
                        <input type="hidden" name="examChapter.testPaper.questions[{{index}}]._id" value="{{info._id}}" />
                        <input type="hidden" name="examChapter.testPaper.questions[{{index}}].title" value="{{info.title}}" />
                        <input type="hidden" name="examChapter.testPaper.questions[{{index}}].qusType" value="{{info.qusType}}" />
                        <input type="hidden" name="examChapter.testPaper.questions[{{index}}].level" value="{{info.level}}" />
                        <input type="hidden" name="examChapter.testPaper.questions[{{index}}].lesson._id" value="{{info.lesson._id}}" />
                        <input type="hidden" name="examChapter.testPaper.questions[{{index}}].enable" value="{{info.enable}}" /> {{if info.qusType==0}} {{each info.choices as ch idx}} {{if idx%2==0}}
                        <div class="qItem1">
                            {{else}}
                            <div class="qItem2">
                                {{/if}}
                                <input type="radio" name="examChapter.testPaper.questions[{{index}}].answer" value="{{ch}}" />
                                <input type="hidden" name="examChapter.testPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}" />
                                <span>{{ch}}</span>
                            </div>
                            {{/each}} {{/if}} {{if info.qusType==1}} {{each info.choices as ch idx}} {{if idx%2==0}}
                            <div class="qItem1">
                                {{else}}
                                <div class="qItem2">
                                    {{/if}}
                                    <input type="checkbox" name="examChapter.testPaper.questions[{{index}}].answers[{{idx}}]" value="{{ch}}" />
                                    <input type="hidden" name="examChapter.testPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}" />
                                    <span>{{ch}}</span>
                                </div>
                                {{/each}} {{/if}} {{if info.qusType==2}}
                                <div class="qItem1">
                                    <input type="radio" name="examChapter.testPaper.questions[{{index}}].answer" value="true" />
                                    <span>正确</span>
                                </div>
                                <div class="qItem2">
                                    <input type="radio" name="examChapter.testPaper.questions[{{index}}].answer" value="false" />
                                    <span>错误</span>
                                </div>
                                {{/if}}
                            </div>
                        </div>
                        {{/each}}
            </script>
            <script type="text/html" id="completeTpl">
                <input type="hidden" name="examComplete.title" value="{{title}}">
                <input type="hidden" name="examComplete.passPrompt" value="{{passPrompt}}">
                <input type="hidden" name="examComplete.notPassPrompt" value="{{notPassPrompt}}">
                <input type="hidden" name="examComplete.enable" value="{{enable}}">
                <input type="hidden" name="examComplete.enableTimer" value="{{enableTimer}}">
                <input type="hidden" name="examComplete.passMark" value="{{passMark}}">
                <input type="hidden" name="examComplete.examLength" value="{{examLength}}">
                <input type="hidden" name="examComplete.testPaper.title" value="{{testPaper.title}}">
                <input type="hidden" name="examComplete.testPaper.passMark" value="{{testPaper.passMark}}"> {{each testPaper.questions as info index}}
                <div id="t{{index+1}}" class="oneQuestion" {{if index==0}}style="display:block;" {{/if}}>
                    <div class="qType">
                        {{if info.qusType==0}} 单选题
                        <span>(每题2分)&nbsp;每小题只有一个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}} {{if info.qusType==1}} 多选题
                        <span>(每题2分)&nbsp;每小题有一个或多个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}} {{if info.qusType==2}} 判断题
                        <span>(每题2分)&nbsp;每小题只有一个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}}
                    </div>
                    <div class="qBody">
                        <div class="qTitle">{{index+1}}.{{info.title}}</div>
                        <input type="hidden" name="examComplete.testPaper.questions[{{index}}]._id" value="{{info._id}}" />
                        <input type="hidden" name="examComplete.testPaper.questions[{{index}}].title" value="{{info.title}}" />
                        <input type="hidden" name="examComplete.testPaper.questions[{{index}}].qusType" value="{{info.qusType}}" />
                        <input type="hidden" name="examComplete.testPaper.questions[{{index}}].level" value="{{info.level}}" />
                        <input type="hidden" name="examComplete.testPaper.questions[{{index}}].lesson._id" value="{{info.lesson._id}}" />
                        <input type="hidden" name="examComplete.testPaper.questions[{{index}}].enable" value="{{info.enable}}" /> {{if info.qusType==0}} {{each info.choices as ch idx}} {{if idx%2==0}}
                        <div class="qItem1">
                            {{else}}
                            <div class="qItem2">
                                {{/if}}
                                <input type="radio" name="examComplete.testPaper.questions[{{index}}].answer" value="{{ch}}" />
                                <input type="hidden" name="examComplete.testPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}" />
                                <span>{{ch}}</span>
                            </div>
                            {{/each}} {{/if}} {{if info.qusType==1}} {{each info.choices as ch idx}} {{if idx%2==0}}
                            <div class="qItem1">
                                {{else}}
                                <div class="qItem2">
                                    {{/if}}
                                    <input type="checkbox" name="examComplete.testPaper.questions[{{index}}].answers[{{idx}}]" value="{{ch}}" />
                                    <input type="hidden" name="examComplete.testPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}" />
                                    <span>{{ch}}</span>
                                </div>
                                {{/each}} {{/if}} {{if info.qusType==2}}
                                <div class="qItem1">
                                    <input type="radio" name="examComplete.testPaper.questions[{{index}}].answer" value="true" />
                                    <span>正确</span>
                                </div>
                                <div class="qItem2">
                                    <input type="radio" name="examComplete.testPaper.questions[{{index}}].answer" value="false" />
                                    <span>错误</span>
                                </div>
                                {{/if}}
                            </div>
                        </div>
                        {{/each}}
            </script>
            <script type="text/html" id="focusedTpl">
                <input type="hidden" name="examFocused.title" value="{{title}}">
                <input type="hidden" name="examFocused.passPrompt" value="{{passPrompt}}">
                <input type="hidden" name="examFocused.notPassPrompt" value="{{notPassPrompt}}">
                <input type="hidden" name="examFocused.enable" value="{{enable}}">
                <input type="hidden" name="examFocused.passMark" value="{{passMark}}">
                <input type="hidden" name="examFocused.enableTimer" value="{{enableTimer}}">
                <input type="hidden" name="examFocused.examLength" value="{{examLength}}">
                <input type="hidden" name="examFocused.testPaper.title" value="{{testPaper.title}}">
                <input type="hidden" name="examFocused.testPaper.passMark" value="{{testPaper.passMark}}"> {{each testPaper.questions as info index}}
                <div id="t{{index+1}}" class="oneQuestion" {{if index==0}}style="display:block;" {{/if}}>
                    <div class="qType">
                        {{if info.qusType==0}} 单选题
                        <span>(每题2分)&nbsp;每小题只有一个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}} {{if info.qusType==1}} 多选题
                        <span>(每题2分)&nbsp;每小题有一个或多个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}} {{if info.qusType==2}} 判断题
                        <span>(每题2分)&nbsp;每小题只有一个是符合题目要求的答案,答错、多选或未选均无分</span> {{/if}}
                    </div>
                    <div class="qBody">
                        <div class="qTitle">{{index+1}}.{{info.title}}</div>
                        <input type="hidden" name="examFocused.testPaper.questions[{{index}}]._id" value="{{info._id}}" />
                        <input type="hidden" name="examFocused.testPaper.questions[{{index}}].title" value="{{info.title}}" />
                        <input type="hidden" name="examFocused.testPaper.questions[{{index}}].qusType" value="{{info.qusType}}" />
                        <input type="hidden" name="examFocused.testPaper.questions[{{index}}].level" value="{{info.level}}" />
                        <input type="hidden" name="examFocused.testPaper.questions[{{index}}].lesson._id" value="{{info.lesson._id}}" />
                        <input type="hidden" name="examFocused.testPaper.questions[{{index}}].enable" value="{{info.enable}}" /> {{if info.qusType==0}} {{each info.choices as ch idx}} {{if idx%2==0}}
                        <div class="qItem1">
                            {{else}}
                            <div class="qItem2">
                                {{/if}}
                                <input type="radio" name="examFocused.testPaper.questions[{{index}}].answer" value="{{ch}}" />
                                <input type="hidden" name="examFocused.testPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}" />
                                <span>{{ch}}</span>
                            </div>
                            {{/each}} {{/if}} {{if info.qusType==1}} {{each info.choices as ch idx}} {{if idx%2==0}}
                            <div class="qItem1">
                                {{else}}
                                <div class="qItem2">
                                    {{/if}}
                                    <input type="checkbox" name="examFocused.testPaper.questions[{{index}}].answers[{{idx}}]" value="{{ch}}" />
                                    <input type="hidden" name="examFocused.testPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}" />
                                    <span>{{ch}}</span>
                                </div>
                                {{/each}} {{/if}} {{if info.qusType==2}}
                                <div class="qItem1">
                                    <input type="radio" name="examFocused.testPaper.questions[{{index}}].answer" value="true" />
                                    <span>正确</span>
                                </div>
                                <div class="qItem2">
                                    <input type="radio" name="examFocused.testPaper.questions[{{index}}].answer" value="false" />
                                    <span>错误</span>
                                </div>
                                {{/if}}
                            </div>
                        </div>
                        {{/each}}
            </script>

            </html>
