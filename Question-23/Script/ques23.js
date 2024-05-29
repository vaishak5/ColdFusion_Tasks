$(document).ready(function () {
        $("#submitBtn").on("click", function () {
       
        validateForm();
    });
    function validateForm() {
        var firstField=$("#selectConts").val().trim();
        var textBoxFt=$("#textBoxFt").val().trim();
        var textBoxSnd=$("#textBoxSnd").val().trim();
        var textBoxThd=$("#textBoxThd").val().trim();
        var year=textBoxFt+textBoxSnd+textBoxThd;
        var url = $("#urlCont").val().trim();
        var firstName = $("#firstname").val().trim();
        var lastName = $("#lastname").val().trim();
        var email = $("#email").val().trim();
        var phoneFt=$("#phoneFt").val().trim();
        var phoneSnd=$("#phoneSnd").val().trim();
        var phoneThd=$("#phoneThd").val().trim();
        var phone=phoneFt+phoneSnd+phoneThd;
        $("#nameError, #emailError,#mobileError,#fieldError,#monthError,#urlError").html("");
        $(".error").hide();
        var isValid = true;
        if (firstName === "" || lastName === "") {
            $("#nameError").html("This field is required. Please enter a value.");
            $(".errorContainerForth").css("background-color","#ffdfdf");
            $("#nameError").show(); 
            isValid = false;
        } else {
            $(".errorContainerForth").css("background-color", "white");
            $("#nameError").hide(); 
        }
        if (!(/\S+@\S+\.\S+/.test(email)) || email === "") {
            $("#emailError").html("This field is required. Please enter a value.");
            $(".errorContainerFifth").css("background-color","#ffdfdf"); 
            $(".email").css("color", "red");
            $("#emailError").show(); 
            isValid = false;
        } else {
            $(".errorContainerFifth").css("background-color", "white"); 
            $(".email").css("color", "#444444");
            $("#emailError").hide(); 
        }
        if (!(/^\d{10}$/.test(phone)) || phone==="") {
            $("#mobileError").html("This field is required. Please enter a value.");
            $(".errorContainerSixth").css("background-color","#ffdfdf"); 
            $("#mobileError").show(); 
            isValid = false;
        } else {
            $(".errorContainerSixth").css("background-color", "white"); 
            $("#mobileError").hide(); 
        }
        if (firstField === "") {
            $("#fieldError").html("This field is required. Please enter a value.");
            $(".errorContainer").css("background-color","#ffdfdf"); 
            $(".positionTxt").css("color", "red");
            $("#fieldError").show(); 
            isValid = false;
        } else {
            $(".errorContainer").css("background-color", "white");
            $(".positionTxt").css("color", "#444444");
            $("#fieldError").hide(); 
        }
        
         if (year==="") {
            $("#monthError").html("This field is required. Please enter a value.");
            $(".errorContainerSd").css("background-color","#ffdfdf"); 
            $(".relocateTxt").css("color", "red");
            $("#monthError").show(); 
            isValid = false;
         }
         else {
            $(".errorContainerSd").css("background-color", "white"); 
            $(".relocateTxt").css("color", "#444444");
            $("#monthError").hide(); 
        }
         if (!/^http:\/\/\w+\.\w{2,3}$/.test(url) || url === "") {
            $("#urlError").html("Please enter a valid url in http://website.com format.");
            $(".errorContainerThd").css("background-color","#ffdfdf"); 
            $("#urlError").show();
            isValid = false;
        }
        else {
            $(".errorContainerThd").css("background-color", "white");
            $("#monthError").hide(); 
        }
        if (!isValid) {
            $(".errorTxt").show();
        } else {
            $(".errorTxt").hide();
        }
        if (isValid) {
            var filledDetails = " ";
            $("#formDetails").html(filledDetails);
            alert("Form submitted successfully!");
            window.location.reload();
         }
    }
});




