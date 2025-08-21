<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장비 대여 조회</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f4;
        color: #333;
    }

    section {
        width: 100%;
        min-height: calc(100vh - 160px);
        background-color: #f4f4f4;
        padding: 40px 20px;
    }

    section h2 {
        text-align: center;
        margin-bottom: 30px;
        font-size: 28px;
        color: #222;
    }

    section div {
        display: flex;
        justify-content: center;
    }

    table {
        width: 90%;
        max-width: 1000px;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th {
        background-color: #3f51b5;
        color: white;
        padding: 15px;
        font-weight: bold;
    }

    td {
        padding: 15px;
        text-align: center;
        border-top: 1px solid #ddd;
    }

    tr:hover {
        background-color: #f0f4ff;
    }

    @media (max-width: 768px) {
        table, thead, tbody, th, td, tr {
            display: block;
        }

        thead {
            display: none;
        }

        tr {
            margin-bottom: 15px;
            border-bottom: 2px solid #ddd;
        }

        td {
            text-align: right;
            padding-left: 50%;
            position: relative;
        }

        td::before {
            content: attr(data-label);
            position: absolute;
            left: 15px;
            width: 45%;
            padding-left: 10px;
            font-weight: bold;
            text-align: left;
        }
    }
</style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="nav.jsp"></jsp:include>
    <section>
        <h2>장비 대여 목록</h2>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>대여번호</th>
                        <th>고객번호</th>
                        <th>대여일</th>
                        <th>장비코드</th>
                        <th>반납예정일</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${list}">
                        <tr>
                            <td data-label="대여번호">${dto.rentalNo}</td>
                            <td data-label="고객번호">${dto.custNo}</td>
                            <td data-label="대여일">${dto.rentalDate}</td>
                            <td data-label="장비코드">${dto.equipCode}</td>
                            <td data-label="반납예정일">${dto.returnDue}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
