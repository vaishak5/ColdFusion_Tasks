<cfcomponent>
    <cffunction  name="getIdentify">
        <cfargument  name="imgName">
        <cfargument  name="descTxt">
        <cfargument  name="myfile">
        
        <cfset local.imgPath = expandPath("./Assets/")>
        <cfset img = "">
        <cffile action="upload" destination="#local.imgPath#" nameconflict="makeunique">
        <cfset local.img = cffile.serverFile>
        <!---<cfset thumbnailFileName = createThumbnail(imgPath & uploadedFileName)>--->
        <cfquery name="imageSet" datasource="DESKTOP-8VHOQ47">
            INSERT INTO imageSet(ImageName, DescTxt,Images)
            values(
                <cfqueryparam value = "#arguments.imgName#" >, 
                <cfqueryparam value = "#arguments.descTxt#">,
                <cfqueryparam value = "#local.img#">
            )
        </cfquery>
    </cffunction>
    <cffunction  name="getValue">
        <cfquery name="values" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM imageSet
        </cfquery>
        <cfreturn values>
    </cffunction>
</cfcomponent>