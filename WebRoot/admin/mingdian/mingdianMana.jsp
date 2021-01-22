<%@ page language="java" pageEncoding="UTF-8"%>
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

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function mingdianDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/mingdianDel.action?id="+id;
               }
           }
           
           function mingdianShenhe(id)
           {
                   window.location.href="<%=path %>/mingdianShenhe.action?id="+id;
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="6" background="<%=path %>/img/tbg.gif">&nbsp;名店加盟&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="16%">店铺名称</td>
					<td width="16%">店铺地址</td>
					<td width="16%">联系方式</td>
					<td width="16%">店铺介绍</td>
					<td width="16%">状态</td>
					<td width="16%">操作</td>
		        </tr>	
				<s:iterator value="#request.mingdianList" id="mingdian">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#mingdian.name"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#mingdian.address"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#mingdian.tel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#mingdian.beizhu" escape="false"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:if test="#mingdian.zhuantai=='noshenhe'">
					       未审核
					    </s:if>
					    <s:if test="#mingdian.zhuantai=='yishenhe'">
					       已审核
					    </s:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="mingdianDel(<s:property value="#mingdian.id"/>)" class="pn-loperator">删除</a>
						<s:if test="#mingdian.zhuantai=='noshenhe'">
					        <a href="#" onclick="mingdianShenhe(<s:property value="#mingdian.id"/>)" class="pn-loperator">审核</a>
					    </s:if>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
