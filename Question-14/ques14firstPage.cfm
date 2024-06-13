<!DOCTYPE html>
<html lang="en">
<head>
    <title>User Input Page</title> 
    <script src="./Script/script.js"></script>
</head>
<body>
    <h2>User Input Page</h2>
    <form action="" method="post" enctype="multipart/form-data">
        <label for="imgName">Enter image name:</label>
        <input type="text" name="imgName" required><br><br>
        <label for="descTxt">Enter some description about image:</label>
        <input type="text" name="descTxt" required><br><br>
        <label for="myfile">Select a file:</label>
        <input type="file" name="myfile" accept="image/jpeg,image/png,image/webp,image/gif" id="myfile"><br><br>
        <input type="button" name="submit" id="sub" value="Submit" onclick="myFunction()">
    </form>
    <cfif structKeyExists(form, "imgName")>
        <cfset obj = createObject("component", "Component.ques14")>
        <cfset result = obj.getIdentify(form.imgName, form.descTxt, form.myfile)>
    </cfif>
</body>
</html>
