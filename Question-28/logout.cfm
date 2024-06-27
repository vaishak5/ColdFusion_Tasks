<cfapplication name="userLogin" sessionmanagement="true">
<cfset StructClear(session)>
<cflocation url="loginPage.cfm" addtoken="false">
