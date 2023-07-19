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
	 <td>idx</td> <td>entrprsNm</td> <td>rprsntvNm</td>	
	 <td>rdnmadr</td><td>mainGoods</td>
	 <td>logitude</td> <td>latitude</td>

  </tr>    
 
 
 <c:forEach items="${li}"  var="m" >
 <tr> 
	 <td>${m.idx} </td>
	 <td>${m.entrprsNm}</td>
	 <td>${m.rprsntvNm}</td>
	 <td>${m.rdnmadr}</td>
	 <td>${m.mainGoods}</td>
	 <td>${m.logitude}</td>
	 <td>${m.latitude}</td>
  </tr>  
 
 </c:forEach>
 </table>

 </div>
 <br>
</section>
<c:import url="/include/bottom.jsp" />