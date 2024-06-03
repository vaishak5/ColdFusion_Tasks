<cfcomponent>
    <cffunction name="mailCheck" access="remote" returnformat="json">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name="emailCheck" datasource="DESKTOP-8VHOQ47">
            SELECT *
            FROM subscriberForm
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        
        <cfif emailCheck.recordCount >
            <cfreturn  {"message":"existing"} >
        <cfelse>
            <cfreturn  {"message":"notexisting"} >
        </cfif>   
    </cffunction>
    
    <cffunction name="uploadMail" access="remote" returnType="string">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
            <cfdump  var="#arguments#" abort>
            <cfquery name = "emailUpload" datasource="DESKTOP-8VHOQ47">
                INSERT INTO subscriberForm (fname, email)
                VALUES (
                    <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
            <cfset local.result = "success">
            <cfdump  var="#local.result#" abort>
            <cfreturn "success"> 
    </cffunction>
</cfcomponent>
