<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Page</title>
    <link rel="stylesheet" href="./style/addDatas.css">
    <link rel="stylesheet" href="./style/adminList.css">
</head>
<body>
    
    <div class="header">
        <div class="headerFirst">
            <p class="siteName">TECHFLICK</p>
            <a href="homePage.cfm">Home Page</a>
            <a href="adminList.cfm">View List</a>
        </div>
        <div class="headerSecond">
            <p>Hello Admin!!!</p>
            <a href="loginPage.cfm">Log Out</a>
        </div>
    </div>
    <h2>Edit Datas Page</h2>
    <div class="datasSet">
        <form id="datas">
            <div class="dataFt">
                <label for="page">Title</label>
                <input type="text" name="page"><br><br>
            </div>
            <div class="dataSnd">
                <label for="desc">Description</label>
                <textarea id="desc" name="desc" rows="3" cols="21"></textarea><br><br>
            </div>
            <div class="btnSet">
                <input type="button" value="SAVE" class="btns">
                <input type="button" value="CANCEL" class="btns">
            </div>
            
        </form>
    </div>
    
</body>
</html>