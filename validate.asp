
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <%
           errors = 0
           If Request.QueryString("name") = "" Then
       %>
        <p><b style="color:#ff1111">Name is Empty</b></p>
        <%
          errors = errors + 1
          End If
         %>
      <%
           If Request.QueryString("section") = "" Then
       %>
        <p><b style="color:#ff1111">Section is Empty</b></p>
        <%
          errors = errors + 1
          End If
         %>
      <%
           If Request.QueryString("credit") = "" Then
       %>
        <p><b style="color:#ff1111">Credit is Empty</b></p>
        <%
          errors = errors + 1
          End If
         %>
        <%
            If errors > 0 Then    
        %>
            <p><a href="buy.html">Go back to forum</a></p>
        <%
            End If    
        %>
        <% 
            If not (len(Request.QueryString("credit"))) = 16 Then 
        %>
        <p><b style="color:#ff1111">Not Correct Credit Length</b></p>
        <%
            End If
        %>
        <%
            If InStr(Request.QueryString("credit") ,"4") = 0 Then         
        %>
            <p><b style="color:#ff1111">Not a Credit Card</b></p>
        <%
            Else
        %>
           <p><b style="color:#444">a Valid Credit Card</b></p>
        <%
           End If     
        %>
        <%
            If InStr(Request.QueryString("credit") ,"5") = 0 Then         
        %>
            <p><b style="color:#ff1111">Not a Visa Card</b></p>
        <%
            Else
        %>
           <p><b style="color:#444">a Valid Visa Card</b></p>
        <%
           End If     
        %>




        <p><%=Request.QueryString("name") %></p
        <p><%=Request.QueryString("section") %></p>
        <p><%=Request.QueryString("credit") %></p>
    
    <pre><% dim fs,f 
            set fs = Server.CreateObject("Scripting.FileSystemObject")
            set f = fs.OpenTextFile(Server.MapPath("validate.txt"),1)
            do while f.AtEndOfStream = false
            Response.Write(f.ReadLine)
            Response.Write("<br>")
            loop

            f.Close
            set f=Nothing
            set fs=Nothing
        %></pre>

</body>
</html>
