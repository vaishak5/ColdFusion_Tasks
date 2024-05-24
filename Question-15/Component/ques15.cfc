<cfcomponent>
    <cffunction name="multiply">
        <cfargument name="num1">
        <cfargument name="num2">
        <cfargument name="num3" required="false" default="1">
        <cfargument name="num4" required="false" default="1">
        <cfreturn arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
    </cffunction>
</cfcomponent>