<cfcomponent>
   <cffunction  name="formUpload">
      <cfargument name="positionField">
      <cfargument  name="month">
      <cfargument  name="date">
      <cfargument  name="yr">
      <cfset local.year=date&month&yr>
      <cfargument  name="urlLink">
      <cfargument  name="firstName">
      <cfargument  name="lastName">
      <cfargument  name="email">
      <cfargument  name="phoneFtField">
      <cfargument  name="phoneSndField">
      <cfargument  name="phoneThdField">
      <cfset local.phone=phoneFtField&phoneSndField&phoneThdField>
      <cfquery name="formDetails" datasource="DESKTOP-8VHOQ47">
      INSERT INTO formDetails(position,years,urlLink,firstName,lastName,emailAddress,phone)
      values(
         <cfqueryparam value="#arguments.positionField#" cfsqltype="CF_SQL_VARCHAR">,
         <cfqueryparam value="#local.year#" cfsqltype="CF_SQL_VARCHAR">,
         <cfqueryparam value="#arguments.urlLink#" cfsqltype="CF_SQL_VARCHAR">,
         <cfqueryparam value="#arguments.firstName#" cfsqltype="CF_SQL_VARCHAR">,
         <cfqueryparam value="#arguments.lastName#" cfsqltype="CF_SQL_VARCHAR">,
         <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">,
         <cfqueryparam value="#local.phone#" cfsqltype="CF_SQL_VARCHAR">
      )
      <cfreturn values>
      </cfquery>
   </cffunction>
</cfcomponent>