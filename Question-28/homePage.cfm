<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
</head>
<body>
    <cfif session.role EQ "admin" OR session.role EQ "editor">
        <h2>Welcome to the Admin Page</h2>
        
        
    <cfelse>
        <h2>Welcome to the User Page</h2>
    </cfif>    
    
</body>
</html>