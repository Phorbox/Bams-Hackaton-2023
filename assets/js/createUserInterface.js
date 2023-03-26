var passwordConfirmation= document.getElementById('inputConfirmPassword');
var passwordRequirements = document.getElementById('inputPassword');
var submitButton = document.getElementById('submit');
var pw1 = document.getElementById('inputPassword');
var pw2 = document.getElementById('inputConfirmPassword');
var requirementsHtml = document.getElementById('requirements');
function matchPassword() {
	if (pw1.value != pw2.value) {
		alert("Passwords did not match");
	}
}
function displayRequirements(){
	const requirements= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}$/;
	if(!requirements.test(pw1.value)){
		requirementsHtml.innerHTML=('<p class="mb-0" style="font-size: 13px;">Password must have the following: <p><ul class="pl-3 mt-2" style="list-style: disc;"><li style="font-size: 13px">Be at least 8 characters long.</li><li style="font-size: 13px"> contain at least one uppercase letter</li><li style="font-size: 13px">One lowercase letter</li><li style="font-size: 13px">One digit</li><li style="font-size: 13px">One special character</li>');
	}else{
		requirementsHtml.innerHTML="";
	}
}
passwordConfirmation.addEventListener('blur', matchPassword, false);
submitButton.addEventListener('click', matchPassword, false);
passwordRequirements.addEventListener('blur', displayRequirements, false);