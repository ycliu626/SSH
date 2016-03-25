<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script type="text/html" id="myApplyTpl">
    {{each results as info}}
    <tr>
        <td><a target="_blank" href="article!detail?position={{position}}&entity._id={{info._id}}">{{info.title}}</a></td>
		<td>{{info.createTime}}</td>
    </tr>
    {{/each}}
</script>