<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />

<section>
<br>
<div align=center>
<h2>쇼핑몰 상품 목록 조회 &emsp; </h2>

 <table border=1  width=800>
 <tr align="center">
      <th> 상품번호 </th><th> 상품이름  </th>
      <th> 상품가격 </th><th> 상품이미지 </th><th> 날짜 </th>
 </tr>
<c:forEach items="${li}"  var="m" >
 <tr> 
      <td align="center">&emsp;${m.productId}</td> 
      <td >&emsp;
       <A href=productOne.do?productId=${m.productId}>
          ${m.productName} 
       </A>
      </td>
      <td align="right">
      <fmt:formatNumber value="${m.productPrice}" pattern="#,###"/> &emsp; </td>
      <td align="center">
      <img src="${path}/product/files/${m.productImgStr}" width=50  height=50>
      </td> 
      
      <td >&emsp;${m.productDate} </td>

 </tr> 
</c:forEach>
</table>

</div>
<br>

</section>




<c:import url="/include/bottom.jsp" />