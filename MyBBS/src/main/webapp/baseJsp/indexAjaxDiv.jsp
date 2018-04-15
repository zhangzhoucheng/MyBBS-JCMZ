<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../common/pageTaglibs.jsp"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>论坛系统BBS</title>
    <link href="${rootPath}/cs/qq/index.css" rel="stylesheet" />
    <link href="${rootPath}/cs/qq/bootstrap.min.css" rel="stylesheet" />
    <script src="${rootPath}/js/qq/index.js"></script>
    <script src="${rootPath}/js/qq/bootstrap.js"></script>
    <script src="${rootPath}/js/qq/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<style>
		.pagingWhole{
			margin-left: 160px;
		    min-width: 1110px;
		    padding: 20px 0;
		    text-align: center;
		    font: 10px -apple-system, "BlinkMacSystemFont", "Helvetica Neue", "Arial", "PingFang SC", "Hiragino Sans GB", "STHeiti", "Microsoft YaHei", "Microsoft JhengHei", "Source Han Sans SC", "Noto Sans CJK SC", "Source Han Sans CN", "Noto Sans SC", "Source Han Sans TC", "Noto Sans CJK TC", "WenQuanYi Micro Hei", SimSun, sans-serif;
		    color: #696969;
		    position: absolute;
		    margin-top: 50px; 
		    width: 1701px;
				   }
	    table tr{
			height:34px;
	
				}
		table td{
			border-bottom: 1px solid #eeeeee;
			} 
		.btn-s1{
			float:right;
			size:20;
			color:#61FE00;
			}
		.btn-s1-f1{
			color:#FF00FE;
		}
		.btn-s1 span{
		font-size:18px;
		}
				   
	</style>
</head>
<body>
	<div class="pagingWhole">
				<%-- <span id="b_id" style="display:none" >${b_id}</span><span id="p_id" style="display:none">${p_id}</span><span id="pageName" style="display:none">${pageName}</span><span id="blockName" style="display:none">${blockName}</span> --%>
				<div id="paging">
					<p>
						<a href="#" onclick="paging(1);return false;"><span class="glyphicon glyphicon-step-backward"></span>上一页</a>&nbsp;&nbsp;
						<span>当前页:<span id="nowPage">${nowPage}</span></span>/<span id="allPage">${allCount }</span>
						<span><input class="form-control" id="inPage" value="${inp}" style="width:50px;display:inline;" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  oninput="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" /></span>
						<a href="#" onclick="paging(2);return false;"><span class="glyphicon glyphicon-hand-left"></span>跳转</a>
						&nbsp;&nbsp;<a href="#" onclick="paging(3);return false;"><span class="glyphicon glyphicon-step-forward"></span>下一页</a><span class="pageJump" style="color:red;"></span>
					</p>
				</div>
				<div class="paging-content">
				<table class="" id="my-table" style="margin:0 auto;">
					<c:forEach items="${posts}" var="p" varStatus="ps">


						
						<tr>


							<td><a href="goToPost?b_id=${p.block.id}&p_id=${p.postPage.id}&pageName=${p.postPage.pagename}&po_id=${p.id}&blockName=${p.block.blockname}"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;
								<span class="wc-span2 ">帖子主题:</span> <span class="wc-span1-v wc-topic">${p.title }</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							
							<td><span class="wc-span2 wc-table ">时间:</span> <span
								class="wc-span2-v">${p.time }</span>
							</td>
							<td><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;
								<span class="wc-span2 wc-author wc-table">作者:</span> <span class="wc-span1-v">${p.user.username }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
								<a href="goToPost?b_id=${p.block.id}&p_id=${p.postPage.id}&pageName=${p.postPage.pagename}&po_id=${p.id}&blockName=${p.block.blockname}">
							   <button type="button" class="btn btn-default btn-lg btn-s1">
							  		<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> 查看
							   </button>
							   </a>
							    <button type="button" class="btn btn-default btn-lg btn-s1 btn-s1-f1" onclick="window.location.href='goToPost?b_id=${b_id}&p_id=${p_id}&pageName=${pageName}&po_id=${p.id}'">
							  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span> 关注
							   </button>
							</td>
						</tr>

						

						
					</c:forEach>
				</table>
				</div>
				</div>
</body>
</html>