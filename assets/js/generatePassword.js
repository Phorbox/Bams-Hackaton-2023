// JavaScript Document
var generateButton = document.getElementById("generatePassword");
var passwordField = document.getElementById("inputPassword");
var outputField = document.getElementById("output");
function randomStr() {
    const length = 20;
    const upperSpace = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const lowerSpace = 'abcdefghijklmnopqrstuvwxyz';
    const digitSpace = '0123456789';
    const specialSpace = '!@#$%^&';
    const specificspace = [upperSpace, lowerSpace, digitSpace, specialSpace];
    const keyspace = upperSpace + lowerSpace + digitSpace + specialSpace;

    let str = '';
    const max = keyspace.length - 1;
    let i = 0;

    while (i < length) {
        if (specificspace.length > 0) {
            const index = Math.floor(Math.random(specificspace.length));
            const curSpace = specificspace[index];
            str += curSpace.charAt(Math.random(curSpace.length));
            specificspace.splice(index, 1);
            i++;
        }

        str += keyspace.charAt(Math.floor(Math.random() * max));
        i++;
    }

    passwordField.value = str;
    outputField.innerHTML = "<p>The generated password is: " + str + "</p>";
}
generateButton.addEventListener('click', randomStr, false);
