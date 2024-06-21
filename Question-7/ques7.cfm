<cfapplication name="myData" sessionmanagement="true">
<!DOCTYPE html>
<html>
<head>
  <title>Entering Values</title>
 </head>
<body>
<h2>Entering some Values</h2>
    <form action="ques7.cfm" method="post">
        <label for="key">Enter any Key:</label>
        <input type="text" id="key" name="key" required><br><br>
        <label for="value">Enter any Value:</label>
        <input type="text" id="value" name="value" required><br><br>        
        <input type="submit" name="submit" value="Submit">
    </form><br>
    <cfif StructKeyExists(form,"submit")>
        <!---<cfinvoke component = "Component.ques7" method ="getIdentify">
            <cfinvokeargument name="key" value="#form.key#">
            <cfinvokeargument name="value" value="#form.value#">
        </cfinvoke>--->
        <cfset obj=createObject("component","Component.ques7")>
        <cfset local.result=obj.getIdentify(form.key,form.value)>
        <cfdump var ="#session.struct#">
    </cfif>  
</body>
</html>