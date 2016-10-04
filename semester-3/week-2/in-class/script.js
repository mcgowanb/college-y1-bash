"use strict";


function printResult(message) {
    document.getElementById('result').innerHTML = message;
}

function process(action) {
    var num1 = parseFloat(document.getElementById('txt1').value);
    var num2 = parseFloat(document.getElementById('txt2').value);

    if (validate(num1, num2)) {
        var result = compute(action, num1, num2);
        printResult(result);
    }
    else {
        printResult("Error on inputs, please check and try again")
    }
}

function validate(num1, num2) {
    return !(isNaN(num1) || isNaN(num2));

}

function compute(type, num1, num2) {
    switch (type) {
        case "+":
            return num1 + num2;
        case "-":
            return num1 - num2;
        case "/":
            return num1 / num2;
        case "*":
            return num1 * num2
    }
}


        