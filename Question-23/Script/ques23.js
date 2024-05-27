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
        var isValid = true;

        if (firstName === "" || lastName === "") {
            $("#nameError").html("This field is required. Please enter a value.");
            isValid = false;
        }

        if (!(/\S+@\S+\.\S+/.test(email)) || email === "") {
            $("#emailError").html("Please enter a valid email address.");
            isValid = false;
        }
        if (!(/^\d{10}$/.test(phone)) || phone==="") {
            $("#mobileError").html("This field is required. Please enter a value.");
            isValid = false;
         }
         if(firstField===""){
            $("#fieldError").html("This field is required. Please enter a value.");
            isValid = false;
         }
         if (year==="") {
            $("#monthError").html("This field is required. Please enter a value.");
            isValid = false;
         }
         if (!/^http:\/\/\w+\.\w{2,3}$/.test(url) || url === "") {
            $("#urlError").html("Please enter a valid url in http://website.com format.");
            isValid = false;
        }
        if (isValid) {
            var filledDetails = " ";
            $("#formDetails").html(filledDetails);
            alert("Form submitted successfully!");
            window.location.reload();
         }
    }
});




