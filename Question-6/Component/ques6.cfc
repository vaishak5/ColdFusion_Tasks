<cfcomponent>
    <cffunction name="getIdentify">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfset myStructure = {}>
        <cfset myStructure[arguments.key] = arguments.value>
        <cfdump var="#myStructure#">
    </cffunction>
</cfcomponent>