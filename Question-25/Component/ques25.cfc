<cfcomponent>
    <cffunction name="getIdentify" access="public" returntype="any">
        <cfargument name="text" type="string" required="true">
        <cfset wordArray = ListToArray(arguments.text, " ")>
        <cfset wordArray = ArraySlice(wordArray, 1, 4)>
        <cfquery name="checkUnique" datasource="DESKTOP-8VHOQ47">
            SELECT COUNT(*) AS total FROM insertDatas WHERE firstname = <cfqueryparam value="#wordArray[1]#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif checkUnique.total EQ 0>
            <cfquery name="inserting" datasource="DESKTOP-8VHOQ47">
                INSERT INTO insertDatas (firstname, secondname, thirdname, fourthname)
                VALUES (
                    <cfqueryparam value="#wordArray[1]#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#wordArray[2]#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#wordArray[3]#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#wordArray[4]#" cfsqltype="cf_sql_varchar">
                )
            </cfquery>
        </cfif>
    </cffunction>
    <cffunction name="getCount" access="public" returntype="any">
        <cfargument name="text" type="string" required="true">
        <cfset var wordArray = ListToArray(arguments.text, " ")>
        <cfreturn ArrayLen(wordArray)>
    </cffunction>
</cfcomponent>

