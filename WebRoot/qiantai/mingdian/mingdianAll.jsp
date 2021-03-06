<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
		
		<script language="JavaScript" src="<%=path %>/js/popup.js" type="text/javascript"></script>
	    <script type="text/javascript">
	        function jiameng()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:300});
	            pop.setContent("contentUrl","<%=path %>/qiantai/mingdian/mingdianAddMy.jsp");
	            pop.setContent("title","我要加盟");
	            pop.build();
	            pop.show();
		    }
	    </script>
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		<div class="page_row">
		    <!--左边的 -->
			<div class="page_main_msg left">
				<!-- 餐馆展示 -->
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							 <span style="float:left">名店</span>
							 <span style="float:right"><a href="#" onclick="jiameng()">我要加盟</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
						</div>
						<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
			              <tr align="center" bgcolor="#FAFAF1" height="22">
			                  <td>名称</td>
			                  <td>地址</td>
			                  <td>联系方式</td>
			              </tr>
						  <s:iterator value="#request.mingdianList" id="mingdian">
						  <tr align='center' bgcolor="#FFFFFF" height="22">
							  <td><s:property value="#mingdian.name"/></td>
							  <td><s:property value="#mingdian.address"/></td>
							  <td><s:property value="#mingdian.tel"/></td>
						  </tr>
						  </s:iterator>
        				</table>
					</div>
				</div>
				<!-- 餐馆展示 -->
			</div>
			<!--左边的 -->
			
			<!-- 右边的用户登录。留言。投票 -->
			<div class="page_other_msg right">
				<div class="left_row">
					<div class="list">
						<div class="list_bar">
							用户登录
						</div>
						<div class="list_content">
							<div id="div">
								<jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
                <div class="left_row">
				    <div class="list">
				        <div class="list_bar">菜品分类</div>
				        <div class="list_content">
				            <div id="div"> 
				                   <div style="overflow:hidden;height:150px;">
							             <div id="roll-orig-1607838439">
										     <s:action name="catelogAll" executeResult="true" flush="true"></s:action>
							             </div>
						                 <div id="roll-copy-1607838439"></div>
				                   </div>
					        </div>
					    </div>
				    </div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">网站公告</div>
				        <div class="list_content">
				            <div id="div"> 
				                   <div style="overflow:hidden;height:150px;">
							             <div id="roll-orig-1607838439">
										 <s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
							             </div>
						                 <div id="roll-copy-1607838439"></div>
				                   </div>
					        </div>
					    </div>
				    </div>
				</div>
			</div>
			<div style="clear: both"></div>
			<!-- 右边的用户登录。留言。投票 -->
		</div>
		
		<div class="foot">
		   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	    </div>
	</body>
</html>
