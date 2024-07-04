<cfapplication name="userLogin" sessionmanagement="true">
<cfset StructClear(session)>
<cflocation url="login.cfm" addtoken="false">
