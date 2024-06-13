<cfcomponent>
    <cffunction  name="signupUpload" access="remote" returnFormat="json">
        <cfargument name="username" required="true">
        <cfargument name="roleSet" required="true">
        <cfargument name="password" required="true">
        <cfargument name="confirmPassword" required="true">
        <cfquery name="signupForm" datasource="DESKTOP-8VHOQ47">
            INSERT INTO signup (userName, userRole, userPassword, userConfirmPwd)
            VALUES (
                <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.roleSet#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.confirmPassword#" cfsqltype="CF_SQL_VARCHAR">    
            )
        </cfquery>
        
         <cfreturn {"success":true}>
    </cffunction>
</cfcomponent>