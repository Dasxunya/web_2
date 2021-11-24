<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="other.Context" %>
<%@ page import="other.Result" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/body.css">
    <link rel="shortcut icon" href="img/round.jpg">
    <title>Result</title>
</head>

<body>
<table id="body-table">
    <tr>
        <th class="header1">
            <a href="https://github.com/dasxunya"><img src="img/round.jpg" title="icon" alt="icon" width="70" height="70"></a>
            <div>
                <p>Результат проверки</p>
            </div>
        </th>
    </tr>
    <tr>
        <th>
            <dev>
                <table id="finish_table">
                    <caption>Результат</caption>
                    <tr>
                        <th class="col">X</th>
                        <th class="col">Y</th>
                        <th class="col">R</th>
                        <th class="col">Текущее время</th>
                        <th class="col">Результат</th>
                    </tr>
                    <%
                        Context context = Context.getInstance();
                        List<Result> results = context.getResultsInContext();
                        request.setAttribute("results", results);
                        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss   dd.MM.yy");
                        List<Result> resultEntityList = (List<Result>) request.getAttribute("results");
                        if (resultEntityList != null && !resultEntityList.isEmpty()) {
                            Result e = resultEntityList.get(resultEntityList.size() - 1);
                            out.println("<tr><td>" + e.getX() + "</td>" +
                                        "<td>" + e.getY() + "</td>" +
                                        "<td>" + e.getR() + "</td>" +
                                        "<td>" + e.getStart().format(formatter) + "</td>" +
                                        "<td>" + e.getResult() + "</td></tr>");
                        }
                    %>
                </table>
            </dev>
            <form method="get" action="main">
                <button type="submit" class="btn">Назад</button>
            </form>
        </th>
    </tr>
</table>

</body>
</html>
