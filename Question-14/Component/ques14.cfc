<cfcomponent>
    <cffunction  name="getIdentify">
        <cfargument  name="imgName">
        <cfargument  name="descTxt">
        <cfargument  name="myfile">
        <cfset local.imgPath = expandPath("./Assets/")>
        <cfset img = "">
        <cffile action="upload" destination="#local.imgPath#" nameconflict="makeunique">
        <cfset local.img = cffile.serverFile>
        <cfquery name="imageSet" datasource="DESKTOP-8VHOQ47">
            INSERT INTO imageSet(ImageName, DescTxt,Images)
            values(
                <cfqueryparam value = "#arguments.imgName#" >, 
                <cfqueryparam value = "#arguments.descTxt#">,
                <cfqueryparam value = "#local.img#">
            )
        </cfquery>
        <cfquery name="values" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM imageSet
            WHERE Images=<cfqueryparam value="#local.img#">
        </cfquery>
        <cfset local.id=values.ID>
        <cflocation  url="ques14ListPage.cfm?imgg=#local.id#">
    </cffunction>
    <cffunction  name="getValue">
        <cfargument  name="getImg">
        <cfquery name="values" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM imageSet
            WHERE ID=<cfqueryparam value="#arguments.getImg#">
        </cfquery>
        <cfreturn values>
    </cffunction>
    <cffunction  name="display">
        <cfargument  name="details">
        <cfquery name="values" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM imageSet
            WHERE ID=<cfqueryparam value="#arguments.details#">
        </cfquery>
        <cfreturn values>
    </cffunction>
</cfcomponent>
