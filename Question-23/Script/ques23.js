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
        $(".errorContainer").css("background-color","#ffdfdf");
        $(".errorContainerSd").css("background-color","#ffdfdf");
        $(".errorContainerThd").css("background-color","#ffdfdf");
        $(".errorContainerForth").css("background-color","#ffdfdf");
        $(".errorContainerFifth").css("background-color","#ffdfdf");
        $(".errorContainerSixth").css("background-color","#ffdfdf");
        $(".error").hide();
        $(".errorContainer").removeClass("errorBackground");
        $(".errorContainerSd").removeClass("errorBackground");
        $(".errorContainerThd").removeClass("errorBackground");
        $(".errorContainerForth").removeClass("errorBackground");
        $(".errorContainerFifth").removeClass("errorBackground");
        $(".errorContainerSixth").removeClass("errorBackground");
        var isValid = true;
        if (firstName === "" || lastName === "") {
            $("#nameError").html("This field is required. Please enter a value.");
            $("#boxxFourth .errorContainerForth").addClass("errorBackground"); 
            $("#nameError").show(); 
            isValid = false;
        } else {
            $("#boxxFourth .errorContainerForth").removeClass("errorBackground"); 
            $("#nameError").hide(); 
        }
        if (!(/\S+@\S+\.\S+/.test(email)) || email === "") {
            $("#emailError").html("Please enter a valid email address.");
            $("#boxxFifth .errorContainerFifth").addClass("errorBackground"); 
            $("#emailError").show(); 
            isValid = false;
        } else {
            $("#boxxFifth .errorContainerFifth").removeClass("errorBackground"); 
            $("#emailError").hide(); 
        }
        if (!(/^\d{10}$/.test(phone)) || phone==="") {
            $("#mobileError").html("This field is required. Please enter a value.");
            $("#boxSix .errorContainerSixth").addClass("errorBackground"); 
            $("#mobileError").show(); 
            isValid = false;
        } else {
            $("#boxSix .errorContainerSixth").removeClass("errorBackground"); 
            $("#mobileError").hide(); 
        }
        if (firstField === "") {
            $("#fieldError").html("This field is required. Please enter a value.");
            $("#boxx .errorContainer").addClass("errorBackground"); 
            $("#fieldError").show(); 
            isValid = false;
        } else {
            $("#boxx .errorContainer").removeClass("errorBackground"); 
            $("#fieldError").hide(); 
        }
         if (year==="") {
            $("#monthError").html("This field is required. Please enter a value.");
            $("#boxxSecond .errorContainerSd").addClass("errorBackground"); 
            $("#monthError").show(); 
            isValid = false;
         }
         else {
            $("#boxxSecond .errorContainerSd").removeClass("errorBackground"); 
            $("#monthError").hide(); 
        }
         if (!/^http:\/\/\w+\.\w{2,3}$/.test(url) || url === "") {
            $("#urlError").html("Please enter a valid url in http://website.com format.");
            $("#boxxThird .errorContainerThd").addClass("errorBackground"); 
            $("#urlError").show();
            isValid = false;
        }
        else {
            $("#boxxThird .errorContainerThd").removeClass("errorBackground"); 
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




