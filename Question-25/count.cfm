<!DOCTYPE html>
<html lang="en">
<head>
    <title>Word Count</title>
</head>
<body>
    <h2>Word Count</h2>
    <form action="count.cfm" method="post">
        <label for="text">Enter the text</label><br>
        <textarea id="textArea" name="text" rows="2" cols="20"></textarea><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj=createObject("component", "Component.ques25")>
        <cfset wordCount = obj.getCount(form.text)>
    </cfif>
</body>
</html>
