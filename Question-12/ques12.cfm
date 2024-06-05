<!DOCTYPE html>
<html lang="en">
<head>
    <title>Name List</title>
</head>
<body>
    <h2>Data from table</h2>
    <form action="ques12.cfm" method="post">
        <label for="num">Enter the input value:</label>
        <input type="text" name="num" required><br><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques12")>
        <cfset result = obj.getIdentify(form.num)>
        <cfoutput>
            <p>nth row first is: #result#</p>
        </cfoutput>
    </cfif>
</body>
</html>
