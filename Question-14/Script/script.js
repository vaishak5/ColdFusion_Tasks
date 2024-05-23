function myFunction() {
    var fileInput = document.getElementById('myfile');
	if (fileInput.myfile.length > 0) {
        const fileSize = fileInput.myfile.item(0).size;
        const fileMb = fileSize / 1048576;
        if (fileMb >= 1) {
		alert("Upload image greater than 1 MB");
	}
}
}


