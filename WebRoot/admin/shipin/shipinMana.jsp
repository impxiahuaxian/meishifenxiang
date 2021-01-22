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
		<script type="text/javascript" src="<%=path %>/js/public.js"></script>
		
        <script language="javascript">
           function shipinDel(shipinId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/shipinDel.action?shipinId="+shipinId;
               }
           }
           function shipinAdd()
           {
                 var url="<%=path %>/admin/shipin/shipinAdd.jsp";
				 window.location.href=url;
           }
           
           function shipinDetail(shipinId)
           {
                 var url="<%=path %>/shipinDetail.action?shipinId="+shipinId;
                 var n="";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           function shipinBofang(fujian)
           {
                 var url="<%=path %>/bofang/bofang.jsp?fujian="+fujian;
                 var n="";
                 var w="600px";
                 var h="400px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="7" background="<%=path %>/img/tbg.gif">&nbsp;餐饮视频管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="20%">视频标题</td>
					<td width="10%">视频简介</td>
					<td width="10%">发布时间</td>
					<td width="15%">操作</td>
		        </tr>	
				<s:iterator value="#request.shipinList" id="shipin" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#shipin.shipinName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="shipinDetail(<s:property value="#shipin.shipinId"/>)" class="pn-loperator">视频简介</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#shipin.shijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="shipinDel(<s:property value="#shipin.shipinId"/>)" class="pn-loperator">删除</a>
						<a href="#" onclick="shipinBofang('<s:property value="#shipin.fujian"/>')" class="pn-loperator">播放视频</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			<s:property value="#request.page.pageDisplay" escape="false"/>
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="添加视频" style="width: 80px;" onclick="shipinAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
