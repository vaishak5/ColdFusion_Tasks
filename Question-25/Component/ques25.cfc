<cfcomponent>
    <!---Insert Datas--->
    <cffunction name="getIdentify" access="public" returntype="any">
        <cfargument name="text" type="string" required="true">
        <cfquery datasource="DESKTOP-8VHOQ47">
            DELETE FROM datasInsert
        </cfquery>
        <cfset local.insertCount=listToArray(arguments.text," ")>
        <cfloop array="#insertCount#" index="i">
            <cfquery name="checkData" datasource="DESKTOP-8VHOQ47">
                SELECT word
                FROM datasInsert 
                where word=<cfqueryparam value="#i#" CFSQLType="CF_SQL_VARCHAR">
            </cfquery>
            <cfif checkData.recordCount>
                <cfcontinue>
            <cfelse>
                <cfquery name="insertion" datasource="DESKTOP-8VHOQ47">
                    INSERT INTO datasInsert(word)
                    values(<cfqueryparam value="#i#" CFSQLType="CF_SQL_VARCHAR">)
                </cfquery>
            </cfif>
        </cfloop>
    </cffunction>

    <!---Get Count--->
    <cffunction name="getCounts" access="public">
        <cfargument name="text" required="true">
        <cfset local.wordCounts = {}>
        <cfset local.countWord = reMatch("[a-zA-Z]+", arguments.text)>
        <cfloop array="#local.countWord#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
        </cfloop>
        <cfquery datasource="DESKTOP-8VHOQ47">
            delete from datasInsert
        </cfquery>
        <cfloop array="#sortedWords#" index="word">
            <cfquery name="insertWord" datasource="DESKTOP-8VHOQ47">
                INSERT INTO datasInsert(word) 
                VALUES (<cfqueryparam value="#word[2]#">)
            </cfquery>
        </cfloop>
        <cfquery name="forDisplay"  datasource="DESKTOP-8VHOQ47">
            SELECT * FROM datasInsert 
            ORDER BY len(word) desc
        </cfquery>
        <cfset local.sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset local.data=structSort(session.mystruct,"numeric", "desc")>
        <cfloop array="#data#" index="word">
            <cfset arrayAppend(local.sample,[local.wordCounts[word],word])>
        </cfloop>
        <cfreturn "#local.sample#">
    </cffunction>

    <!---Word Color--->
    <cffunction name="getWordColor" access="public">
        <cfargument name="text" required="true">
        <cfset local.wordCounts = {}>
        <cfset local.countWord = reMatch("[a-zA-Z]+", arguments.text)>
        <cfloop array="#local.countWord#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
        </cfloop>
        <cfquery datasource="DESKTOP-8VHOQ47">
            delete from datasInsert
        </cfquery>
        <cfloop array="#sortedWords#" index="word">
            <cfquery name="insertWord" datasource="DESKTOP-8VHOQ47">
                INSERT INTO datasInsert(word) 
                VALUES (<cfqueryparam value="#word[2]#">)
            </cfquery>
        </cfloop>
        <cfquery name="forDisplay"  datasource="DESKTOP-8VHOQ47">
            SELECT * FROM datasInsert 
            ORDER BY len(word) desc
        </cfquery>
        <cfset local.sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset local.data=structSort(session.mystruct,"numeric", "desc")>
        <cfloop array="#data#" index="word">
            <cfset arrayAppend(local.sample,[local.wordCounts[word],word])>
        </cfloop>
        <cfset local.setColor="">
</cfcomponent>

