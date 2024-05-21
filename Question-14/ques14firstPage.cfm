<!DOCTYPE html>
<html lang="en">
<head>
    <title>User Input Page</title>
</head>
<body>
    <h2>User Input Page</h2>
    <form action="ques14ListPage.cfm" method="post" enctype="multipart/form-data">
        <label for="imgName">Enter image name:</label>
        <input type="text" name="imgName" required><br><br>
        <label for="descTxt">Enter some description about image:</label>
        <input type="text" name="descTxt" required><br><br>
        <label for="myfile">Select a file:</label>
        <input type="file" name="myfile" accept="image/jpeg,image/png,image/gif"><br><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques14")>
        <cfset result = obj.getIdentify(form.imgName, form.descTxt, form.myfile)>
    </cfif>
</body>
</html>
