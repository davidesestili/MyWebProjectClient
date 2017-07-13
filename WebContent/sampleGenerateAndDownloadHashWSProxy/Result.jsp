<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleGenerateAndDownloadHashWSProxyid" scope="session" class="it.dsestili.mywebproject.ws.GenerateAndDownloadHashWSProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleGenerateAndDownloadHashWSProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleGenerateAndDownloadHashWSProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleGenerateAndDownloadHashWSProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        it.dsestili.mywebproject.ws.GenerateAndDownloadHashWS getGenerateAndDownloadHashWS10mtemp = sampleGenerateAndDownloadHashWSProxyid.getGenerateAndDownloadHashWS();
if(getGenerateAndDownloadHashWS10mtemp == null){
%>
<%=getGenerateAndDownloadHashWS10mtemp %>
<%
}else{
        if(getGenerateAndDownloadHashWS10mtemp!= null){
        String tempreturnp11 = getGenerateAndDownloadHashWS10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String folder_1id=  request.getParameter("folder18");
            java.lang.String folder_1idTemp = null;
        if(!folder_1id.equals("")){
         folder_1idTemp  = folder_1id;
        }
        String algorithm_2id=  request.getParameter("algorithm20");
            java.lang.String algorithm_2idTemp = null;
        if(!algorithm_2id.equals("")){
         algorithm_2idTemp  = algorithm_2id;
        }
        String mode_3id=  request.getParameter("mode22");
            java.lang.String mode_3idTemp = null;
        if(!mode_3id.equals("")){
         mode_3idTemp  = mode_3id;
        }
        it.dsestili.mywebproject.ws.Result generateAndDownloadHash13mtemp = sampleGenerateAndDownloadHashWSProxyid.generateAndDownloadHash(folder_1idTemp,algorithm_2idTemp,mode_3idTemp);
if(generateAndDownloadHash13mtemp == null){
%>
<%=generateAndDownloadHash13mtemp %>
<%
}else{
%>
<style>
	table, th, td {
	    border: 1px solid black;
	}
</style>
<TABLE border="1">
 <thead>
  <tr>
     <th>hash</th>
     <th>file name</th>
  </tr>
 </thead>
<%
if(generateAndDownloadHash13mtemp != null){
it.dsestili.mywebproject.ws.FileInfo[] typeresult16 = generateAndDownloadHash13mtemp.getResult();
        if(typeresult16 != null){
			for(it.dsestili.mywebproject.ws.FileInfo fi : typeresult16)
			{
			%>
				<TR>
					<td><%=fi.getHash() %></td>
					<td><%=fi.getFileName() %></td>
				<TR>
			<%
			}
        }
}%>
</TABLE>
<%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>