<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장비 대여</title>
<style>
    * {
        margin: 0;
        padding: 0;
    }

    section {
        width: 100%;
        height: calc(100vh - 160px);
        background-color: lightgray;
    }

    section h2 {
        text-align: center;
        padding: 20px;
    }

    section form {
        display: flex;
        justify-content: center;
    }
</style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="nav.jsp"></jsp:include>

    <section>
        <h2> 장비 대여 등록 </h2>
        <form name="frm" method="post" action="insert">
            <table border="1">
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
