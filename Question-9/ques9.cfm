<cfapplication name="myData" sessionmanagement="true">
<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Entering Keys and Values</title>
   </head>
   <body>
      <h2>Enter some values</h2>
      <cfif not structKeyExists(session, "struct")>
          <cfset session.struct = structNew()>
      </cfif>
      <form action="ques9.cfm" method="post">
            <label for="name">Enter any Key:</label>
            <input type="text" name="key" required><br><br>
            <label for="value">Enter any Value:</label>
            <input type="text" name="value" required><br><br>
            <input type="submit"  name="submit" value="Submit" ><br>
        </form><br>
        <cfif structKeyExists(form, "submit")>
            <cfinvoke component="Component.ques9" method="getIdentify">
                <cfinvokeargument  name="key" value="#form.key#">
                <cfinvokeargument  name="value" value="#form.value#">
            </cfinvoke>
            <cfdump  var="#session.struct#">
      </cfif>
   </body>
</html>