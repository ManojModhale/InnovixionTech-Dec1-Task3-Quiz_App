<%@ page import="com.exam.bean.Quiz" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exam Result</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        p {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        h4 {
            text-align: center;
            color: #333;
            margin-bottom: 15px;
        }

        a {
            display: block;
            text-align: center;
            color: #007bff;
            text-decoration: none;
            margin: 10px auto;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border-radius: 4px;
            width: 200px;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Exam Result</h1>

    <%-- Retrieve Quiz object from the session --%>
    <% Quiz quiz = (Quiz) session.getAttribute("examination"); %>

    <%-- Display the user's score --%>
    <p><u><%= session.getAttribute("Subject") %> Subject Exam Marks are <b><%= quiz.getUserScore() %></b> out of <%= quiz.getQuestions().size() %></u></p>

    <br><br><br>

    <h4>If You Want to Continue With Exam for Another Subject</h4>
    <a href="index.html">Attempt Quiz Again</a>
</body>
</html>
