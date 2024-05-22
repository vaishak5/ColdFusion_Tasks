function myFunction() {
    var fileInput = document.getElementById('myfile');
	if (fileInput.myfile.length > 0) {
        const fileSize = fileInput.myfile.item(0).size;
        const fileMb = fileSize / 1024 ** 2;
        if (fileMb >= 2) {
		alert("Upload image greater than 1 MB");
	}
}
}


