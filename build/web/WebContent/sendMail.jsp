

<%@page import="ManageData.ConnectionManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomeState</title>
    </head>
    <body>
       <%@page import="Email.Email" %> 
           <%
               String dname="";
               String daddress="";
               String dcity="";
               String demail= "";
               session.getAttribute("PropertyId");
               ConnectionManager c = new ConnectionManager();
                                Connection con = c.GetConnection();
        Statement st=con.createStatement();
         ResultSet rs1=st.executeQuery("select tblsellorrentproperty.RegisterUserID, tblregisteruser.UserName , tblpropertylocation.Address, tblpropertylocation.City,tblregisteruser.EmailID from tblsellorrentproperty INNER JOIN tblregisteruser ON tblsellorrentproperty.RegisterUserID=tblregisteruser.RegisterUserID INNER JOIN tblpropertylocation ON  tblpropertylocation.PropertyLocationID=tblsellorrentproperty.PropertyLocationID where tblsellorrentproperty.SellOrRentPropertyID='"+ session.getAttribute("PropertyId")+"';");
         while(rs1.next()){
                  dname = rs1.getString(2);
                  daddress = rs1.getString(3);
                  dcity = rs1.getString(4);
                  demail = rs1.getString(5);
                
             }
               
              
               
               Email e = new Email();
                String dealer = request.getParameter("dealer");
                String name= request.getParameter("name");
                String email= request.getParameter("email");
                String contact= request.getParameter("contact");
                e.setMailServerProperties();
                e.createEmailMessage(dealer, name, contact, email,dname,daddress,dcity,demail);
                e.sendEmail();
              // e.send(dealer, name, contact, email,dname,daddress,dcity);
               response.sendRedirect("PropertyDetails.jsp?id="+session.getAttribute("PropertyId"));
               
          
          %>
    </body>
</html>
