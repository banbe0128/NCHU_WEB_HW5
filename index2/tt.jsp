<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
 <html>
     <head>
         <meta charset="utf-8">
             <title>BMI Result</title>
             <%request.setCharacterEncoding("UTF-8");%>
             <style media="screen">
             table{
               width: 60%;
             }
             caption{
               font-size: 72px;
             }
             th{
                 width: 100px;
                 text-align: center;
                 line-height: 28px;
               }
               td{
                 width: 200px;
                 text-align: center;
               }
             </style>
         </head>
         <body>
             <table border="1" align="center">
                 <caption>角色資料</caption>
                 <tr>
                     <th>角色名稱</th>
                     <td><%out.println(request.getParameter("username"));%></td>
                     <th>性別</th>
                     <td><%out.println(request.getParameter("sex"));%></td>
                  
                 </tr>
                 <tr>
                   <th>出生年月日</th>
                   <td colspan="3"><%out.println(request.getParameter("birth"));%></td>
                 </tr>
                 <tr>
                   <th>居住地</th>
                   <td colspan="3"><%out.println(request.getParameter("address"));%></td>
                 </tr>
                 <tr>
                   <th >主武器</th>
                   <td><%out.println(request.getParameter("weapon"));%></td>
                   <th>生活技能</th>
                   <td><%
                   String[] lan=request.getParameterValues("skill");
                   for(int i=0;i<lan.length;i++){
                     out.println(lan[i] + " ");
                     out.print("&nbsp;&nbsp;");
                  }
                   %></td>
                 </tr>
                 <tr>
                   <th>特技（可複選）</th>
                   <td><%
                   String hoby[]=request.getParameterValues("talent");
                   for(int i=0;i<hoby.length;i++){
                     out.println(hoby[i] + " ");
                     out.print("&nbsp;&nbsp;");
                   }
                   %></td>
				   <th>陣營</th>
                      <td><%out.println(request.getParameter("kind"));%></td>
                 </tr>
                 <tr>
                   <th height="300px">留言欄</th>
                   <td height="300px" colspan="4"><%out.println(request.getParameter("note"));%></td>
                 </tr>
 
            </body>
         </html>