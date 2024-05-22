<cfcomponent>
    <cffunction name="getIdentify">
        <cfargument name="captcha">
        <cfset  result = {}>
        <cfif arguments.captcha EQ session.captchaInput>
            <cfset result = "Email Address successfully subscribe our newsletter">
        <cfelse>
            <cfset result = "Enter the Same Captcha">
        </cfif>
        <cfreturn result>
    </cffunction>
</cfcomponent>