<cfcomponent>
    <cffunction name="formUpload" access="remote" returntype="any">
        <cfargument name="positionField">
        <cfargument name="month">
        <cfargument name="date">
        <cfargument name="yr">
        <cfargument name="urlLink">
        <cfargument name="firstName">
        <cfargument name="lastName">
        <cfargument name="email">
        <cfargument name="phoneFtField">
        <cfargument name="phoneSndField">
        <cfargument name="phoneThdField">
        <cfif arguments.positionField neq "" and arguments.month neq "" and arguments.date neq "" and arguments.yr neq "" and arguments.urlLink neq "" and arguments.firstName neq "" and arguments.lastName neq "" and arguments.email neq "" and arguments.phoneFtField neq "" and arguments.phoneSndField neq "" and arguments.phoneThdField neq "">
            <cfset local.year = arguments.date & arguments.month & arguments.yr>
            <cfset local.phone = arguments.phoneFtField & arguments.phoneSndField & arguments.phoneThdField>
            <cfquery name="formDetails" datasource="DESKTOP-8VHOQ47">
                INSERT INTO formDetails (position, years, urlLink, firstName, lastName, emailAddress, phone)
                VALUES (
                    <cfqueryparam value="#arguments.positionField#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#local.year#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.urlLink#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.firstName#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.lastName#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#local.phone#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
            <cfreturn "Success">
        <cfelse>
            <cfreturn "Some fields are empty">
        </cfif>
    </cffunction>
</cfcomponent>

