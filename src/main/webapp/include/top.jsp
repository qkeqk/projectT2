<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  

<c:set var="path" value="${pageContext.request.contextPath}"
                                          scope="session" />

<c:set var="key" value="a0ce51e7c89af8bc4bd7db6fa847a5c5" scope="session"/>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>마주스토리/마주이야기</title>
<link href="${path}/include/top.css" rel="stylesheet" type="text/css"  />
<style type="text/css">

</style>

</head>
<body>
<header>
 <b> 마주스토리 / 마주이야기 쇼핑몰 </b>
</header>
<nav>
&emsp;<a href="${path}/ShopForm.do">회원등록</a>
&emsp;<a href="${path}/ShopSelectAll.do">회원목록</a>
&emsp;<a href="${path}/ShopMoney.do">회원매출조회</a>
<c:if test="$user=='admin'">
&emsp;<a href="${path}/OpenSelectAll.do">우수중소기업</a>
&emsp;<a href="${path}/OpenSelectAllMap.do">중소지도출력</a>
&emsp;<a href="${path}/EvOpenSelectAll.do">전기차충전소</a>
&emsp;<a href="${path}/EvOpenSelectAllMap.do">전기차지도출력</a>
</c:if>

&emsp;<a href="${path}/product/productForm.jsp">상품등록</a>
&emsp;<a href="${path}/productList.do">상품목록</a>

&emsp;<a href="${path}/index.jsp">홈으로.</a>

<c:if test="${empty m.custno}">
&emsp;<a href="${path}/login/login.jsp">로그인</a>
</c:if>

<c:if test="${!empty m.custno}">
&emsp;<a href="${path}/logout.do?custno=${m.custno}">${m.custname}</a>
&emsp;<a href="${path}/cartList.do?custNo=${m.custno}">장바구니</a>
</c:if>

</nav>