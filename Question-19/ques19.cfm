<!DOCTYPE html>
<html lang="en">
<head>
    <title>ColdFusion Cookies</title>
</head>
<body>
    <h2>ColdFusion Cookies</h2>
    <form action="ques19.cfm" method="post">
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques19")>
        <cfparam name="form.visitsCounter" default="0">
        <cfset visitsCounter = obj.getIdentify(form.visitsCounter)>
    </cfif>
    <cfoutput><p>visitsCounter: #visitsCounter#</p></cfoutput>
</body>
</html>