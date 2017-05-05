window.onload = function () {

	var modal = document.getElementById('navModal');
	var btn = document.getElementById("navBtn");
	var span = document.getElementsByClassName("close")[0];
	
	btn.onclick = function() {
	    modal.style.display = "block";
	    console.log('clicked');
	}
	
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}

}