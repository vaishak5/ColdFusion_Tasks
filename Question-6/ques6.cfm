<!DOCTYPE html>
<html lang="en">
<head>
    <title>Entering Values</title>
</head>
<body>
    <h2>Entering some Values</h2>
    <form action="ques6.cfm" method="post">
        <label for="key">Enter any Key:</label>
        <input type="text" name="key"><br><br>
        <label for="value">Enter any Value:</label>
        <input type="text" name="value"><br><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form><br>
    <cfparam name="form.key" default="">
    <cfparam name="form.value" default="">
    <cfif structKeyExists(form, "submit")>
    <cfset obj = createObject("component", "Component.ques6")>
    <cfset local.result = obj.getIdentify(form.key, form.value)>
        <cfset myStructure = {}>
        <cfset myStructure[form.key] = form.value>
        <cfdump var="#myStructure#">
    </cfif>
</body>
</html>