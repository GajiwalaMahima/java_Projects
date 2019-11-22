

<%@page import="ManageData.ConnectionManager"%>
<%@page import="ManageData.RegisterUserBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomeState</title>
    </head>
    <body>
       <% 
           ConnectionManager c = new ConnectionManager();
                                Connection con = c.GetConnection();
        String rating= request.getParameter("description");
        String star= request.getParameter("optradio");
        String sellrentid=request.getParameter("sellrentid");
      
        //out.println(rating+star+sellrentid);
        int regid=0;
     
          try
    {
                if(session.getAttribute("CurrentUser")!= null){
                 RegisterUserBean currentuser = (RegisterUserBean)(session.getAttribute("CurrentUser"));
               String user =currentuser.getUserName().toString();
           //      out.println(user);
             
        Statement st=con.createStatement();
         ResultSet rs1=st.executeQuery("select RegisterUserID from tblregisteruser where UserName='"+user+"'");
         while(rs1.next()){
                  regid = Integer.parseInt(rs1.getString(1));
                
             }
               
              }
            //    out.println(regid);
       
        Statement st=con.createStatement();
      int i=st.executeUpdate("INSERT INTO `tblfeedback`(`SellOrRentPropertyID`, `RegisterUserID`, `Rating`, `Description`, `FeedbackDateTime`) VALUES ('"+sellrentid+"','"+regid+"','"+star+"','"+rating+"',NOW());");
       
            response.sendRedirect("PropertyDetails.jsp?id="+sellrentid);
        
    }
    catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
       %>
    </body>
</html>
