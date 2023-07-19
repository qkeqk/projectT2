<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />

<section>
<br>
<div align="center">
<table border=1 width=600>
<tr>
<td colspan=2>
<div id="map" style="width:600px;height:300px;"></div>
</td>
</tr>
<tr><td>idx </td><td>${m.idx} </td></tr>
<tr><td>entrprsNm </td><td>${m.entrprsNm} </td></tr>
<tr><td>rdnmadr </td><td>${m.rdnmadr} </td></tr>
<tr><td>rprsntvNm </td><td>${m.rprsntvNm} </td></tr>
<tr><td>mainGoods </td><td>${m.mainGoods} </td></tr>

</table>
</div>
<br>
</section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${key}"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(${m.latitude} , ${m.logitude}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
var marker = new kakao.maps.Marker();

// 타일 로드가 완료되면 지도 중심에 마커를 표시합니다
kakao.maps.event.addListener(map, 'tilesloaded', displayMarker);

function displayMarker() { 
    marker.setPosition(map.getCenter()); 
    marker.setMap(map); 
 }
</script>


<c:import url="/include/bottom.jsp" />