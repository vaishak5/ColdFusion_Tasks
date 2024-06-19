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
        </div>
        <div class="headerSecond">
            <p>Hello Admin!!!</p>
            <a href="loginPage.cfm">Log Out</a>
        </div>
    </div>
    <div class="tableStyle">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="titleValues" scope="col-3"><h5><b>Title</b></h5></th>
                    <th class="titleValues" scope="col"><h5><b>Description</b></h5></th>
                    <th class="titleValues" scope="col"><h5><b>Action(Add,Edit & Delete)</b></h5></th>
                </tr>
            </thead>
            <tbody>
                <cfquery name="getDatas" datasource="DESKTOP-8VHOQ47">
                    SELECT pageName, pageDesc FROM addDataz
                </cfquery>
                <cfoutput query="getDatas">
                    <tr class="tableRow">
                        <th class="titleValues" scope="col-3">#getDatas.pageName#</th>
                        <th scope="col">#getDatas.pageDesc#</th>
                        <th class="AcrionValues" scope="col"><a href="editDatas.cfm?id=#getDatas.currentRow#">Edit</a> | <a href="deleteDatas.cfm?id=#getDatas.currentRow#">Delete</a>
                    </tr>
                </cfoutput>
            </tbody>
        </table>
    </div>

    <div class="addLink">
        <a href="addDatas.cfm" class="add">Add New Datas</a>
    </div>
    
</body>
</html>