<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePersonServiceImplProxyid" scope="session" class="jaxws.service.PersonServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePersonServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = samplePersonServiceImplProxyid.getEndpoint();
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
        samplePersonServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        jaxws.service.PersonServiceImpl getPersonServiceImpl10mtemp = samplePersonServiceImplProxyid.getPersonServiceImpl();
if(getPersonServiceImpl10mtemp == null){
%>
<%=getPersonServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String age_2id=  request.getParameter("age20");
        int age_2idTemp  = Integer.parseInt(age_2id);
        String name_3id=  request.getParameter("name22");
            java.lang.String name_3idTemp = null;
        if(!name_3id.equals("")){
         name_3idTemp  = name_3id;
        }
        String id_4id=  request.getParameter("id24");
        int id_4idTemp  = Integer.parseInt(id_4id);
        %>
        <jsp:useBean id="jaxws1beans1Person_1id" scope="session" class="jaxws.beans.Person" />
        <%
        jaxws1beans1Person_1id.setAge(age_2idTemp);
        jaxws1beans1Person_1id.setName(name_3idTemp);
        jaxws1beans1Person_1id.setId(id_4idTemp);
        boolean addPerson15mtemp = samplePersonServiceImplProxyid.addPerson(jaxws1beans1Person_1id);
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addPerson15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
break;
case 26:
        gotMethod = true;
        String id_5id=  request.getParameter("id35");
        int id_5idTemp  = Integer.parseInt(id_5id);
        jaxws.beans.Person getPerson26mtemp = samplePersonServiceImplProxyid.getPerson(id_5idTemp);
if(getPerson26mtemp == null){
%>
<%=getPerson26mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(getPerson26mtemp != null){
%>
<%=getPerson26mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(getPerson26mtemp != null){
java.lang.String typename31 = getPerson26mtemp.getName();
        String tempResultname31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename31));
        %>
        <%= tempResultname31 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getPerson26mtemp != null){
%>
<%=getPerson26mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 37:
        gotMethod = true;
        String id_6id=  request.getParameter("id40");
        int id_6idTemp  = Integer.parseInt(id_6id);
        boolean deletePerson37mtemp = samplePersonServiceImplProxyid.deletePerson(id_6idTemp);
        String tempResultreturnp38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deletePerson37mtemp));
        %>
        <%= tempResultreturnp38 %>
        <%
break;
case 42:
        gotMethod = true;
        jaxws.beans.Person[] getAllPersons42mtemp = samplePersonServiceImplProxyid.getAllPersons();
if(getAllPersons42mtemp == null){
%>
<%=getAllPersons42mtemp %>
<%
}else{
        String tempreturnp43 = null;
        if(getAllPersons42mtemp != null){
        java.util.List listreturnp43= java.util.Arrays.asList(getAllPersons42mtemp);
        tempreturnp43 = listreturnp43.toString();
        }
        %>
        <%=tempreturnp43%>
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