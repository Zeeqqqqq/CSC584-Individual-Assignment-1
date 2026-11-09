<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    // Escape special HTML characters for safe display
    public String escapeHtml(Object value) {
        if (value == null) {
            return "";
        }
        String text = value.toString();
        return text.replace("&", "&amp;")
                   .replace("<", "&lt;")
                   .replace(">", "&gt;")
                   .replace("\"", "&quot;")
                   .replace("'", "&#39;");
    }
%>
<%
    // Read the profile information forwarded by the Servlet
    if (request.getAttribute("name") == null) {
        response.sendRedirect("index.html");
        return;
    }

    String name = escapeHtml(request.getAttribute("name"));
    String studentId = escapeHtml(request.getAttribute("studentId"));
    String programme = escapeHtml(request.getAttribute("programme"));
    String email = escapeHtml(request.getAttribute("email"));
    String hobbies = escapeHtml(request.getAttribute("hobbies"));
    String introduction = escapeHtml(request.getAttribute("introduction"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Personal Profile | CSC584</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 50px 16px;
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            color: #1e293b;
        }

        .profile-card {
            max-width: 650px;
            margin: auto;
            background: white;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.07);
        }

        .profile-header {
            padding: 35px 25px;
            background: #2563eb;
            color: white;
            text-align: center;
        }

        .avatar {
            width: 75px;
            height: 75px;
            line-height: 75px;
            margin: 0 auto 15px;
            border-radius: 50%;
            background: white;
            color: #2563eb;
            font-size: 32px;
            font-weight: bold;
        }

        .profile-header h1 {
            margin: 0 0 8px;
            font-size: 26px;
            overflow-wrap: anywhere;
        }

        .profile-header p {
            margin: 0;
            opacity: 0.9;
        }

        .profile-body {
            padding: 30px 35px;
        }

        .info-group {
            margin-bottom: 22px;
        }

        .info-label {
            display: block;
            margin-bottom: 7px;
            color: #64748b;
            font-size: 13px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .info-value {
            font-size: 16px;
            line-height: 1.6;
            overflow-wrap: anywhere;
            white-space: pre-wrap;
        }

        .back-button {
            display: block;
            padding: 14px;
            margin-top: 25px;
            background: #2563eb;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
        }

        .back-button:hover {
            background: #1d4ed8;
        }
    </style>
</head>
<body>

    <div class="profile-card">

        <div class="profile-header">
            <div class="avatar">P</div>
            <h1><%= name %></h1>
            <p><%= programme %></p>
        </div>

        <div class="profile-body">

            <div class="info-group">
                <span class="info-label">Full Name</span>
                <div class="info-value"><%= name %></div>
            </div>

            <div class="info-group">
                <span class="info-label">Student ID</span>
                <div class="info-value"><%= studentId %></div>
            </div>

            <div class="info-group">
                <span class="info-label">Programme</span>
                <div class="info-value"><%= programme %></div>
            </div>

            <div class="info-group">
                <span class="info-label">Email Address</span>
                <div class="info-value"><%= email %></div>
            </div>

            <div class="info-group">
                <span class="info-label">Hobbies</span>
                <div class="info-value"><%= hobbies %></div>
            </div>

            <div class="info-group">
                <span class="info-label">Short Self-Introduction</span>
                <div class="info-value"><%= introduction %></div>
            </div>

            <a href="index.html" class="back-button">
                Back to Profile Form
            </a>

        </div>
    </div>

</body>
</html>
