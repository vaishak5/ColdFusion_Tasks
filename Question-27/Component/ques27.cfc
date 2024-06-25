<cfcomponent>
    <cffunction name="getIdentify" returntype="array">
        <cfargument name="email" required="true">
        <cfargument name="password" required="true">
        <cfset var errorMsg = []>
        <cfif NOT isValid("email", arguments.email)>
            <cfset arrayAppend(errorMsg, "Please enter a valid email address")>
        </cfif>
        <cfif len(trim(arguments.password)) EQ "">
            <cfset arrayAppend(errorMsg, "Please enter a password")>
        </cfif>
        <cfreturn errorMsg>
    </cffunction>
</cfcomponent>
