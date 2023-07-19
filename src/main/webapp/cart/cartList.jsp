<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<script>
function  delK(k){
  // alert("k:" + k);
  location.href="cartDeleteOne.do?cartId="+k+"&custNo="+${m.custno};
}

function  delAll(k){
	  // alert("k:" + k);
	  location.href="cartDeleteAll.do?custNo="+${m.custno};
}

</script>
<section>
<br>
<div align=center>
<h2>장바구니 목록조회 &emsp; </h2>

 <form method="post"  name="f1"  >

 <table border=1  width=800>
 <tr align="center">
      <th> 장바구니ID </th>
      <th> 상품이름   </th> <th> 상품가격  </th>
      <th> 구매수량   </th> <th> 상품이미지 </th>
      <th> 취소  </th>
 </tr>
<c:forEach items="${li}"  var="c" >

 <input  type=hidden  name=cartId value="${c.cartId}" >
 <input  type=hidden  name=custNo value="${m.custno}" >
 <input  type=hidden  name=productId value="${c.productId}" >
 <input  type=hidden  name=productName value="${c.productName}" >
 
 <tr> 
      <td align="center" >${c.cartId}</td>

      <td align="left">&emsp; ${c.productName}</td>
      <td align="right">
      <fmt:formatNumber value="${c.productPrice}" pattern="#,###"/> 
      &nbsp; </td>
      <td align="center">
      <input  type="number" value='${c.amount}' name=amount >
      
      </td>
      <td align="center"><img src=${path}/product/files/${c.productImgStr} width=100 height=70 ></td>
      <td align=center>
      <input type=button value="삭제" onClick="delK('${c.cartId}')"  /></td>
 </tr>
 <c:set var="sum"  value='${c.productPrice*c.amount}' > </c:set> 
 <c:set var="total"  value='${total+sum}' > </c:set> 

</c:forEach>
<tr> 
 <td colspan=6 align="left" >
 
 <c:if test="${total >= 30000}">
 배송비 : 0 <c:set var="baesongbi" value="0" /> <br/>
 장바구니 금액합계: 
 <fmt:formatNumber value="${total}" pattern="#,###"/> 
 </c:if>
 <c:if test="${total < 30000}">
 배송비 : 3000 <c:set var="baesongbi" value="3000" /> <br/>
 장바구니 금액합계: 
 <fmt:formatNumber value="${total+3000}" pattern="#,###"/> 
  </c:if>
 </td>

</tr>
 

 
<tr> 
 <td colspan=6 align="center" >
  <input  type=hidden  name=baesongbi value='${baesongbi}' />
  <input  type=hidden  name=totalmoney value='${total}' />
    
  <input type=submit value="주문하기" onclick="javaScript:action='${path}/cartOrder.do'" />&emsp;
  <input type=submit value="수정하기" onclick="javaScript:action='${path}/cartUpdate.do'"/>&emsp;
  <input type=button value="전체삭제하기"  onClick="delAll('${c.custno}')"  />&emsp;
 </td>
  
</tr>


</table>
</form>
</div>
<br>

</section>




<c:import url="/include/bottom.jsp" />