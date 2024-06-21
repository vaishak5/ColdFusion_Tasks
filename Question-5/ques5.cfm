<!DOCTYPE html>
<html>
<head>
    <title>Date of Birth</title>
</head>
<body>
    <h2>Days Identifier</h2>
    <form action="ques5.cfm" method="post">
        <label for="userDOB">User's DOB:</label>
        <input type="text" id="userDOB" name="userDOB" required><br><br>
        <label for="momDOB">Mother's DOB:</label>
        <input type="text" id="momDOB" name="momDOB" required><br><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "submit") and structKeyExists(form, "userDOB") and structKeyExists(form, "momDOB")>
        <cfset obj = createObject("component", "Component.ques5")>
        <cfset local.result = obj.calculateAges(form.userDOB, form.momDOB)>
        <h2>Results:</h2>
        <cfoutput><h2>User's Age : #local.result.userAge#</h2></cfoutput>
        <cfoutput><h2>Mother's Age: #local.result.momAge#</h2></cfoutput>
        <cfoutput><h2>Mother's Age when User Born : #local.result.userMotherAge#</h2></cfoutput>
        <cfoutput><h2>Remaining days for User's Bday: #local.result.userBday# days</h2></cfoutput>
        <cfoutput><h2>Remaining days for Mother's Bday : #local.result.momBday# days</h2></cfoutput>
    </cfif>
</body>
</html>