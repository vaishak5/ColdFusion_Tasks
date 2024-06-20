<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin's ViewList</title>
    <link rel="stylesheet" href="./style/adminList.css">
    <link rel="stylesheet" href="./style/bootstrap.min.css">
    <script src="./script/sourceFirst.js"></script>
    <script src="./script/sourceSecond.js"></script>
    <script src="./script/sourceThird.js"></script>
    <script src="./script/jquery.min.js"></script>
    <script src="./script/jquery-ui.min.js"></script>
</head>
<body>
    <cfif session.role EQ "admin" OR session.role EQ "editor">
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
    <div class="tableStyle d-flex align-items-center justify-content-center">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="titleValues" scope="col-3"><h5><b>Title</b></h5></th>
                    <th class="titleValues" scope="col"><h5><b>Description</b></h5></th>
                    <th class="titleValues" scope="col"><h5><b>Action</b></h5></th>
                </tr>
            </thead>
            <tbody>
                <cfquery name="getDatas" datasource="DESKTOP-8VHOQ47">
                    SELECT pageId, pageName, pageDesc FROM addDataz
                </cfquery>
                <cfoutput query="getDatas">
                    <tr class="tableRow">
                        <th class="titleValues" scope="col-3">#getDatas.pageName#</th>
                        <th class="descValues" scope="col">#getDatas.pageDesc#</th>
                        <th class="acrionValues" scope="col"><a href="editDatas.cfm?id=#getDatas.currentRow#">Edit</a> 
                        
                        <a href="./Component/signup.cfc?method=deleteDatas&id=#getDatas.pageId#">Delete</a>
                        <!---<button type="button" class="btn btn-danger delBtn" id="deleteBtn" data-id="#getDatas.pageId#">Delete</button>--->
                    </tr>
                </cfoutput>
            </tbody>
        </table>
    </div>
    <div class="addLink">
        <a href="addDatas.cfm" class="add">Add New Datas</a>
    </div>
    <cfelse>
        <div class="header">
        <div class="headerFirst">
            <p class="siteName">TECHFLICK</p>
            <a href="homePage.cfm">Home Page</a>
        </div>
        <div class="headerSecond">
            <p>Hello User!!!</p>
            <a href="loginPage.cfm">Log Out</a>
        </div>
    </div>
    <div class="tableStyles d-flex align-items-center justify-content-center">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="userTitle" scope=""><h5><b>Title</b></h5></th>
                </tr>
            </thead>
            <tbody>
                <cfquery name="getDatas" datasource="DESKTOP-8VHOQ47">
                    SELECT pageId, pageName FROM addDataz
                </cfquery>
                <cfoutput query="getDatas">
                    <tr class="tableRows">
                        <th class="userValues" scope="col"><a href="userviewList.cfm?id=#getDatas.pageId#">#getDatas.pageName#</a></th>
                    </tr>
                </cfoutput>
            </tbody>
        </table>
    </cfif>
</body>
</html>