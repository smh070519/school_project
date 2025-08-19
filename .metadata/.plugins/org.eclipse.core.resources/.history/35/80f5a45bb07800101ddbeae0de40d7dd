<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장비 대여 조회</title>
<style>
* { margin: 0; padding: 0; }
section {
    width: 100%;
    height: calc(100vh - 160px);
    background-color: lightgray;
}
section h2 { text-align: center; padding: 20px; }
section div { display: flex; justify-content: center; }
td, th { text-align: center; padding: 10px; }
</style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="nav.jsp"></jsp:include>
    <section>
        <h2>장비 대여 목록</h2>
        <div>
            <table border="1">
                <tr>
                    <th>대여번호</th>
                    <th>고객번호</th>
                    <th>대여일</th>
                    <th>장비코드</th>
                    <th>반납예정일</th>
                </tr>
                <c:forEach var="dto" items="${list}">
                    <tr>
                        <td>${dto.rentalNo}</td>
                        <td>${dto.custNo}</td>
                        <td>${dto.rentalDate}</td>
                        <td>${dto.equipCode}</td>
                        <td>${dto.returnDue}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </section>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
