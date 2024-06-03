<cfcomponent>
   <cffunction name="getRating" returntype="string">
      <cfargument name="ratings" type="string" required="true">
      <cfset numbers = ListToArray(arguments.ratings)>
      <cfset divisibleNumbers = []>
      <cfloop array="#numbers#" index="num">
         <cfif num MOD 3 NEQ 0>
            <cfcontinue>
         </cfif>
         <cfset arrayAppend(divisibleNumbers, num)>
      </cfloop>
      <cfif ArrayLen(divisibleNumbers) EQ 0>
         <cfreturn "The given number is not Divisible by 3">
      <cfelse>
         <cfreturn ArrayToList(divisibleNumbers, ",")> 
      </cfif>
   </cffunction>
</cfcomponent>
