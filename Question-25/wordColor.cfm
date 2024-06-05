<!DOCTYPE html>
<html lang="en">
<head>
    <title>Word Color Page</title>
</head>
<body>
    <h2>Word Color Page</h2>
    <form action="wordColor.cfm" method="post">
        <label for="text">Enter the text</label>
        <textarea name="text"></textarea>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfoutput>
        <cfif structKeyExists(form, "submit")>
            <cfset obj=createObject("component","Component.ques25")>
            <cfset local.result=obj.getWordColor(form.text)>
            <cfif arrayLen(local.result)>
                <table>
                    <tr>
                        <th>Records</th>
                        <th>Counts</th>
                    </tr>
                    <cfloop array="#local.result#" index="i">
                        <tr>
                            <th><p style=font-size""; color:"";#i[2]# </p></th>
                            <th><p style=font-size""; color:"";#i[1]# </p></th>
                        </tr>
                    </cfloop>
                </table>
            </cfif>
        </cfif>
    </cfoutput>
</body>
</html>