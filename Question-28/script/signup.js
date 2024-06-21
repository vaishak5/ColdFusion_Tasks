
$(document).ready(function(){
    $("#submitClick").on("click", function () {
        var username=$("#username").val().trim();
        var roleSet=$("#role").val().trim();
        var password=$("#password").val().trim();
        if(signValidate()){
            $.ajax({
                type: "POST",
                url: "./Component/signup.cfc?method=signupUpload",
                datatype: "text",
                data: {username:username,
                    roleSet: roleSet,
                    password: password
                },
                success: function(response) {
                    if (response === "true") {
                        alert("Form submitted successfully!");
                        window.location.href = "./loginPage.cfm";
                    } else if (response === "false") { 
                        alert("Username already exists!");
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    alert("An error occurred while submitting the form. Please try again.");
                }
            });
        }
        return false;
    });

    $("#loginBtn").on("click", function () {
        var username=$("#username").val().trim();
        var password=$("#password").val().trim();
        if(username==""|| password==""){
            alert("Invalid username or Password!");
        }
        else{
            $.ajax({
                type: "POST",
                url: "./Component/signup.cfc?method=checkLogin",
                datatype: "text",
                data: {username:username,
                    password: password
                },
                success: function(response) {
                    if (response === "true") {
                        alert("Login successfull");
                        window.location.href = "./homePage.cfm";
                    } else if (response === "false") { 
                        alert("No user Found!");
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    alert("An error occurred while submitting the form. Please try again.");
                }
            });
        }
    });
    $("#adding").on("click", function (){
        var pageName=$("#page").val().trim();
        var pageDesc=$("#desc").val().trim();
        if(pageName==""|| pageDesc==""){
            alert("Plz enter any values in the fields!!");
        }
        else{
            $.ajax({
                type:"POST",
                url:"./Component/signup.cfc?method=addDetails",
                datatype: "text",
                data: {pageName:pageName,
                    pageDesc: pageDesc
                },
                success: function(response) {
                    if (response === "true") {
                        alert("Datas added!!");
                        window.location.reload();
                    } else if (response === "false") { 
                        alert("Datas already entered");
                        window.location.reload();
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    alert("An error occurred while submitting the form. Please try again.");
                }

            });
        }

    });
    $("#deleting").on("click", function () {
        var row = $(this).closest("tr");
        var pageId = $(this).data("id");
        if (confirm("Are you sure you want to delete this record?")) {
            $.ajax({
                type: "POST",
                url: './Component/signup.cfc?method=deleteDatas',
                dataType: "text",
                data: { pageId: pageId },
                success: function(response) {
                    if (response) {
                        row.remove();
                        alert("Record deleted successfully.");
                        window.location.reload();
                    } 
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    alert("Error deleting record.");
                    window.location.reload();
                }
            });
        }
    });
    
});
function signValidate(){
    var username=$("#username").val().trim();
    var roleSet=$("#role").val().trim();
    var password=$("#password").val().trim();
    var confirmPassword=$("#confirmPassword").val().trim();
    $(".error").hide();
    var isValid = true;
    if(username=="" && roleSet=="" && password=="" && confirmPassword==""){
        $("#usernameError").html("This field is required. Please enter a value.").css("color","red");
        $("#usernameError").show();
        $("#roleError").html("This field is required. Please enter a value.").css("color","red");
        $("#roleError").show();
        $("#passwordError").html("This field is required. Please enter a value.").css("color","red");
        $("#passwordError").show();
        $("#confirmError").html("This field is required. Please enter a value.").css("color","red");
        $("#confirmError").show();
        isValid = false;
    } else {
        if(username == "" || !(/\S+@\S+\.\S+/.test(username))){
            $("#usernameError").html("Please enter a valid Username.").css("color","red");
            $("#usernameError").show();
            isValid = false;
        }
        if(roleSet===""){
            $("#roleError").html("This field is required. Please enter a value.").css("color","red");
            $("#roleError").show();
            isValid = false;
        }
        if(password===""){
            $("#passwordError").html("This field is required. Please enter a value.").css("color","red");
            $("#passwordError").show();
            isValid = false;
        } else if (!isValidPassword(password)) {
            $("#passwordError").html("Password must contain all kind of formats!").css("color","red");
            $("#passwordError").show();
            isValid = false;
        }
        if(confirmPassword===""){
            $("#confirmError").html("This field is required. Please enter a value.").css("color","red");
            $("#confirmError").show();
            isValid = false;
        } else if (password != confirmPassword){
            $("#confirmError").html("Please enter correct password").css("color","red");
            $("#confirmError").show();
            isValid = false;
        }
    }
    if(isValid){
        return true;
    }
    return false;
}
function isValidPassword(password) {
    var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
    return passwordRegex.test(password);
}
