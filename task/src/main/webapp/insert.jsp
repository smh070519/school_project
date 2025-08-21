<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장비 대여 등록</title>
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

    section form {
        display: flex;
        justify-content: center;
    }

    table {
        width: 90%;
        max-width: 700px;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    table td {
        padding: 15px;
        border-bottom: 1px solid #ddd;
    }

    table tr:last-child td {
        border-bottom: none;
    }

    table td:first-child {
        font-weight: bold;
        width: 25%;
        background-color: #f0f0f0;
    }

    table td:nth-child(2) {
        width: 50%;
    }

    table td:nth-child(3) {
        color: #888;
        font-size: 0.9em;
    }

    input[type="text"] {
        width: 95%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 1em;
    }

    input[type="button"] {
        padding: 10px 20px;
        margin: 10px 5px;
        background-color: #3f51b5;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 1em;
        transition: background-color 0.3s ease;
    }

    input[type="button"]:hover {
        background-color: #303f9f;
    }

    @media (max-width: 768px) {
        table, tr, td {
            display: block;
            width: 100%;
        }

        table td {
            border: none;
            padding: 10px;
        }

        table td:nth-child(3) {
            padding-bottom: 15px;
        }

        input[type="button"] {
            width: 100%;
            margin: 5px 0;
        }
    }
</style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="nav.jsp"></jsp:include>

    <section>
        <h2>장비 대여 등록</h2>
        <form name="frm" method="post" action="insert">
            <table>
                <tr>
                    <td>대여번호</td>
                    <td><input type="text" name="rental_no"></td>
                    <td>예) R2023001</td>
                </tr>
                <tr>
                    <td>고객번호</td>
                    <td><input type="text" name="cust_no"></td>
                    <td>예) 1001</td>
                </tr>
                <tr>
                    <td>대여일자</td>
                    <td><input type="text" name="rental_date"></td>
                    <td>예) 2023-08-14</td>
                </tr>
                <tr>
                    <td>장비코드</td>
                    <td><input type="text" name="equip_code"></td>
                    <td>예) E001~E099</td>
                </tr>
                <tr>
                    <td>반납예정일</td>
                    <td><input type="text" name="return_due"></td>
                    <td>예) 2023-08-20</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center">
                        <input type="button" value="대여등록" onclick="checkRental()">
                        <input type="button" value="다시쓰기" onclick="resetForm()">
                    </td>
                </tr>
            </table>
        </form>
    </section>

    <jsp:include page="footer.jsp"></jsp:include>
    <script type="text/javascript" src="check.js"></script>
</body>
</html>
