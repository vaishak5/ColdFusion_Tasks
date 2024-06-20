<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin's ViewList</title>
    <link rel="stylesheet" href="./style/adminList.css">
    <link rel="stylesheet" href="./style/bootstrap.min.css">
</head>
<body>
    <div class="header">
        <div class="headerFirst">
            <p class="siteName">TECHFLICK</p>
            <a href="homePage.cfm">Home Page</a>
            <a href="userList.cfm">View List</a>
        </div>
        <div class="headerSecond">
            <p>Hello User!!!</p>
            <a href="loginPage.cfm">Log Out</a>
        </div>
    </div>
    <div class="tableStyle d-flex align-items-center justify-content-center">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="titleValues" scope="col"><h5><b>Title</b></h5></th>
                    <th class="titleValues" scope="col"><h5><b>Description</b></h5></th>
                </tr>
            </thead>
            <tbody>
                <cfquery name="getData" datasource="DESKTOP-8VHOQ47">
                    SELECT pageName, pageDesc FROM addDataz WHERE pageId = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
                </cfquery>
                <cfoutput query="getData">
                    <tr class="tableRow">
                        <td class="titleValues">#getData.pageName#</td>
                        <td class="descValues">#getData.pageDesc#</td>
                    </tr>
                </cfoutput>
            </tbody>
            
        </table>
    </div>
</body>
</html>