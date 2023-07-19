<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 회원목록페이지 </h2>
 
 <table border=1>
  <tr align="center"> 
	 <td>순번</td> <td>충전소이름</td> <td>충전타입</td>	
	 <td>상태</td><td>주소</td>
  </tr>    
 
 
 <c:forEach items="${li}"  var="m" >
 <tr> 
	 <td>${m.idx} </td>
	 <td>${m.csNm}</td>
	 <td>${m.cpNm}</td>
	 <td>${m.cpStat}</td>
	 <td>${m.addr}</td>
  </tr>  
 
 </c:forEach>
 </table>

 </div>
 <br>
</section>
<c:import url="/include/bottom.jsp" />