<cfcomponent>
    <cffunction name="getIdentify" returntype="string">
        <cfargument name="num" type="numeric" required="true">
        <cfquery name="name_List" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM name_List
        </cfquery>
        <cfset first_name = "">
        <cfif num LTE name_List.recordCount AND num GT 0>
            <cfset first_name = name_List["first_name"][num]>
        <cfelse>
            <cfset first_name = "Invalid input">
        </cfif>
        <cfreturn first_name>
    </cffunction>
</cfcomponent>
