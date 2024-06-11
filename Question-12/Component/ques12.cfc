<cfcomponent>
    <cffunction name="getIdentify" returntype="string">
        <cfargument name="num" type="numeric" required="true">
        <cfquery name="nameList" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM nameList
        </cfquery>
        <cfset firstName = "">
        <cfif num LTE nameList.recordCount AND num GT 0>
            <cfset firstName = nameList["firstName"][num]>
        <cfelse>
            <cfset firstName = "Invalid input">
        </cfif>
        <cfreturn firstName>
    </cffunction>
</cfcomponent>
