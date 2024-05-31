<cfapplication name="myData" sessionmanagement="true">
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Email Message</title>
</head>
<body>
    <h2>Show Message</h2>
    <form action="ques20.cfm" method="post">
        <label for="captcha">Enter Captcha</label>
        <input type="text" name="captcha" required><br><br>
        <label for="email">Enter Email</label>
        <input type="text" name="email" required><br><br>
        <input type="submit" name="submit" value="Submit"><br><br>
    </form>
    <cfif structKeyExists(form, "captcha") and structKeyExists(form, "email") and structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques20")>
        <cfset result = obj.getIdentify(form.captcha, form.email)>
    </cfif>
    <cfset session.captchaInput = randRange(0000, 9999)>
    <cfimage action="captcha" text="#session.captchaInput#"><br><br>
    <cfoutput>#result#</cfoutput>
</body>
</html>