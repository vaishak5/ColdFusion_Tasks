<cfapplication name="userLogin" sessionmanagement="true">
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome Page</h2>
    <cfif NOT structKeyExists(session, "login") OR NOT session.login>
        <cflocation url="login.cfm" addtoken="false">
    <cfelse>
        <p>Welcome to the user!</p>
        <a href="logout.cfm">Go to the Login</a>
    </cfif>
</body>
</html>
