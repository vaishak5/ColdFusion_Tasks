<cfcomponent>
    <cffunction name="getRating" returntype="string">
        <cfargument name="ratings" type="numeric" required="true">
        <cfswitch expression="#arguments.ratings#">
            <cfcase  value="5"><cfset variables.ratings = " Very Good"></cfcase>
            <cfcase  value="4"><cfset variables.ratings = " Good"></cfcase>
            <cfcase  value="3"><cfset variables.ratings = " Fair"></cfcase>
            <cfcase  value="2,1"><cfset variables.ratings = " Ok"></cfcase>
            <cfdefaultcase><cfset variables.ratings = " Please enter a valid Number"></cfdefaultcase>
        </cfswitch>
        <cfreturn variables.ratings>
    </cffunction>
</cfcomponent>