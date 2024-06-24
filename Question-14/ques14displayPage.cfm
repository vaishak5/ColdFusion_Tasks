<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Display Page</title>
    <link rel="stylesheet" href="./Assets/css/style.css">
</head>
<body>
    <h2>Display Page</h2>
    <cfset local.details=url.imggg>
    <cfset obj=createObject("component","Component.ques14").display(local.details)>
    <cfoutput>
        #obj.ImageName#<BR>
        #obj.DescTxt#<BR>
        <img class="imgSizee" src="./Assets/#obj.Images#">
    </cfoutput>
</body>
</html>
</cfoutput>