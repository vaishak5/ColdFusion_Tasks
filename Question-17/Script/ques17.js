function validateForm() {
    var value = document.forms["checkForm"]["value"].value;
    if (isNaN(value) || value <= 0 || value === '') {
        alert("Please enter a valid number");
        return;
    }
}