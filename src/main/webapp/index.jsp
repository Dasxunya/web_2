<%@ page import="other.Result" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <title>Web_2</title>
  <link rel="shortcut icon" href="img/round.jpg">
  <script src="js/jquery-3.6.0.min.js"></script>
  <style>
    body {
      background: url(img/fl.jpg);
      width: 100%;
      height: 100%;
      color: #FFFAF0;
      background-size: 100%;
    }

    p {
      color: #3f1f0b;
    }

    .btn {
      position: relative;
      overflow: hidden;
      z-index: 1;
      padding: 10px 40px;
      margin: 0 20px;
      font-family: 'Montserrat Alternates', sans-serif;
      font-weight: 600;
      line-height: 30px;
      color: white;
      font-size: 15px;
      text-transform: uppercase;
      background: #f5b08f;
      border-width: 0;
      box-shadow: 5px 5px 0 #532831;
      outline: none;
      cursor: pointer;
      transition: 1.5s;
    }

    .btn:before, .btn:after {
      content: "";
      position: absolute;
      height: 200px;
      left: -50%;
      margin-top: -100px;
      top: 50%;
      width: 200px;
      border-radius: 50%;
      opacity: 0.3;
      z-index: -1;
      transform: scale(0);
    }

    .btn:before {
      background: #ffeede;
      transition: .8s ease-out;
    }

    .btn:after {
      transition: .4s ease-in .3s;
    }

    .btn:hover {
      color: #532831;
    }

    .btn:hover:before, .btn:hover:after {
      opacity: 1;
      transform: scale(4);
    }

    select {
      width: 150px;
    }

    .math {
      background-image: url("img/math.png");
      background-size: 400px 400px;
    }

    dev > table#finish_table {
      color: #3f1f0b;
      background-color: #e3d8c5;
      border: 2px outset #c76d30;
      width: 80%;
      margin: auto;
    }

    dev table#finish_table td, th {
      text-align: center;
      border: black;
      border-bottom: #3f1f0b;
    }

    .header {
      text-align: center;
      background-color: #faebd7;
      color: #93673d;
      size: 3pt;
      font-family: sans-serif;
    }
  </style>




</head>
<body>
<table border="1" width="100%" cellpadding="1" cellspacing="1" bgcolor="#FFFAF0">

  <tr>
    <td colspan="4" bgcolor="#f1dbb0" align="center"><font size="6pt"
                                                           face="Times New Roman, Helvetica, serif"
                                                           color="#6a310a">Лабораторная работа№2
      по Web-программированию</font></td>
  </tr>

  <tr>
    <td colspan="4" class="header">Выполнила: Шаповалова Дарья, Группа: P3230, Вариант 30617.</td>
  </tr>

<%--Начало формы--%>
  <form id="coordinates-form" method="get" action="main">
    <tr>
      <td align="center">
        <p><b>Введите X:</b></p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="-2">-2</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="-1.5">-1.5</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="-1">-1</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="-0.5">-0.5</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="0">0</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="0.5">0.5</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="1">1</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="1.5">1.5</p>
        <p><input name="x" type="checkbox" onclick="changeCheckBoxBehavior(this)" value="2">2</p>

      </td>

      <td align="center">
        <p>
        <p><b>Введите Y из диапазона (-5; 5):</b></p>
        <p><input type="text" id="yField" data-min="-5" data-max="5" data-separator="." name="y"
                  placeholder="Y" autocomplete="off" required></p>
        </p>
      </td>

      <td align="center">
        <p>
        <p><b>Введите R из диапазона (1; 4):</b></p>
        <p><input type="text" id="rField" data-min="1" data-max="4" data-separator="." name="r"
                  placeholder="R" autocomplete="off" required></p>
        </p>
      </td>

      <td align="center" rowspan="2">
        <p><b>А теперь определим попадание точки, <br>заданной координатами ранее, в нашу область:</b></p>

        <!-- TODO: grafic-->
        <svg id="graph_pic" height="300" width="300" xmlns="http://www.w3.org/2000/svg">

          <line stroke="black" x1="0" y1="150" x2="300" y2="150"></line>
          <line stroke="black" x1="150" y1="0" x2="150" y2="300"></line>
          <polygon fill="black" points="150,0 144,15 156,15" stroke="black"></polygon>
          <polygon fill="black" points="300,150 285,156 285,144" stroke="black"></polygon>

          <!-- Деления -->
          <line stroke="black" x1="200" y1="155" x2="200" y2="145"></line>
          <line stroke="black" x1="250" y1="155" x2="250" y2="145"></line>

          <line stroke="black" x1="50" y1="155" x2="50" y2="145"></line>
          <line stroke="black" x1="100" y1="155" x2="100" y2="145"></line>

          <line stroke="black" x1="145" y1="100" x2="155" y2="100"></line>
          <line stroke="black" x1="145" y1="50" x2="155" y2="50"></line>

          <line stroke="black" x1="145" y1="200" x2="155" y2="200"></line>
          <line stroke="black" x1="145" y1="250" x2="155" y2="250"></line>

          <!-- Подписи к делениям и осям -->
          <text fill="black" x="195" y="140">R/2</text>
          <text fill="black" x="250" y="140">R</text>

          <text fill="black" x="40" y="140">-R</text>
          <text fill="black" x="85" y="140">-R/2</text>

          <text fill="black" x="160" y="55">R</text>
          <text fill="black" x="160" y="105">R/2</text>

          <text fill="black" x="160" y="204">-R/2</text>
          <text fill="black" x="160" y="255">-R</text>

          <text fill="black" x="285" y="140">X</text>
          <text fill="black" x="160" y="15">Y</text>

          <!-- Прямоугольник (1 четверть) -->
          <polygon fill="orange"
                   fill-opacity="0.2"
                   stroke="orange"
                   points="150,150 150,50 200,50 200,150"></polygon>

          <!-- Круг (2 четверть) -->
          <path fill="orange"
                fill-opacity="0.2"
                stroke="orange"
                d="M 50 150 A 100 100, 90, 0, 0, 150 250 L 150 150 Z"></path>

          <!-- Прямоугольник (4 четверть) -->
          <polygon fill="orange"
                   fill-opacity="0.2"
                   stroke="orange"
                   points="150,150 250,150 150,200"></polygon>

          <!-- Здесь будут точки на графике -->
          <%
            List<Result> resultEntityList = (List<Result>) request.getAttribute("results");
            if (resultEntityList != null && !resultEntityList.isEmpty()) {
              for (Result e : resultEntityList) {
                String color = "green";
                if (e.getResult().equals("Промах")) color = "red";
                String str = String.format("<circle cx=\"%d\" cy=\"%d\" r=\"%d\" fill=\"%s\"/>", e.getXPx(), e.getYPx(), 3, color);
                out.println(str);
              }
            }
          %>

        </svg>

      </td>

    </tr>


    <tr>
      <td class="math" colspan="3" align="center">
        <p>
          <button id="function-btn" class="btn" type="submit" name="send">Ввод</button>
        </p>
      </td>
    </tr>

  </form>
<%--Конец формы--%>

  <tfoot>
  <tr>
    <td colspan="4" height="70px" align="center" bgcolor="#faebd7">
      <a href="https://github.com/Dasxunya"><img src="img/round.jpg" title="github" alt="github" width="30"
                                                 height="30"></a>
    </td>
  </tr>
  </tfoot>
</table>

<dev>
  <table id="finish_table">
    <tr>
      <td>
        <caption><h1>История выполнений</h1></caption>
      <th class="res">X</th>
      <th class="res">Y</th>
      <th class="res">R</th>
      <th class="res">Текущее время</th>
      <th class="res">Попадание</th>
      </td>
    </tr>

    <%
      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss   dd.MM.yy");
      if (resultEntityList != null && !resultEntityList.isEmpty()) {
        for (Result e : resultEntityList) {
          out.println("<tr><td>" + e.getX() + "</td>" +
                      "<td>" + e.getY() + "</td>" +
                      "<td>" + e.getR() + "</td>" +
                      "<td>" + e.getStart().format(formatter) + "</td>" +
                      "<td>" + e.getResult() + "</td></tr>");
        }
      }
    %>

   <%-- <form method="get" action="main">
      <tr>
        <td colspan="6" bgcolor="#cec3b1"><br>
          <button class="btn" type="click" name="clear-table">Очистить</button>
        </td>
      </tr>
    </form>--%>

  </table>
</dev>
<script src="js/validate.js"></script>
<script src="js/point.js"></script>
</body>
</html>
<script>
  function changeCheckBoxBehavior(element)
  {
    let checkboxes = document.getElementsByName(element.name);
    for (let i = 0; i < checkboxes.length; i++)
    {
      checkboxes[i].checked = false;
    }
    element.checked = true;
  }

  window.addEventListener('scroll', function() {
    document.getElementById('scrollUpButton').hidden = scrollY < 30;
  });
</script>
