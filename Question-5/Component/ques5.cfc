<cfcomponent>
    <cffunction name="calculateAges" returntype="struct">
        <cfargument name="userDOB" type="date" required="true">
        <cfargument name="momDOB" type="date" required="true">
        <cfset var result = {}>
        <cfset result.userAge = dateDiff("yyyy", arguments.userDOB, now())>
        <cfset result.momAge = dateDiff("yyyy", arguments.momDOB, now())>
        <cfset result.userMotherAge = result.momAge - result.userAge>
        <cfset userBday = createDate(year(now()), month(arguments.userDOB), day(arguments.userDOB))>
        <cfif userBday lt now()>
            <cfset userBday = dateAdd("yyyy", 1, userBday)>
        </cfif>
        <cfset result.userBday = dateDiff("d", now(), userBday)>
        <cfset momBday = createDate(year(now()), month(arguments.momDOB), day(arguments.momDOB))>
        <cfif momBday lt now()>
            <cfset momBday = dateAdd("yyyy", 1, momBday)>
        </cfif>
        <cfset result.momBday = dateDiff("d", now(), momBday)>
        <cfreturn result>
    </cffunction>
</cfcomponent>