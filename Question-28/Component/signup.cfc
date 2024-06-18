<cfcomponent>
    <!---Sign In--->
    <cffunction  name="signupUpload" access="remote" returnFormat="plain">
        <cfargument name="username" required="true">
        <cfargument name="roleSet" required="true">
        <cfargument name="password" required="true">
        <cfquery name="checkEmail" datasource="DESKTOP-8VHOQ47">
            SELECT 1 FROM signup 
            WHERE userName=<cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkEmail.recordCount>
            <cfreturn false>
        <cfelse>
            <cfquery name="insertValues" datasource="DESKTOP-8VHOQ47">
                INSERT INTO signup (userName, userRole, userPassword)
                VALUES (
                    <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.roleSet#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
            <cfreturn true>
        </cfif>
    </cffunction>
    <!---LogIn--->
    <cffunction name="checkLogin" access="remote" returnFormat="plain">
        <cfargument name="username" required="true">
        <cfargument name="password" required="true">
        <cfquery name="checkRole" datasource="DESKTOP-8VHOQ47">
            SELECT userRole FROM signup 
            WHERE userName=<cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfset session.role=checkRole.userRole>
        <cfif checkRole.recordCount>
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>

    <!---Add Page--->
    <cffunction  name="addDetails" access="remote">
        <cfargument  name="page" required="true">
        <cfargument  name="desc" required="true">
        <cfquery name="addItems" datasource="DESKTOP-8VHOQ47">
            INSERT INTO addDatas (pageName, pageDesc)
                VALUES (
                    <cfqueryparam value="#arguments.page#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.desc#" cfsqltype="CF_SQL_VARCHAR">,
                    
                )
        </cfquery>
    </cffunction>
</cfcomponent>