function suma() {
    var $a = document.getElementById('input-1').value;
    var $b = document.getElementById('input-2').value;
    if (Number.isInteger(Number($a)) && Number.isInteger(Number($b))) {
        var $rest = Number($a) + Number($b);
        document.getElementById('respuesta').innerText = $rest;
    } else {
        alert('No ingreso numeros');
    }
}

function resta() {
    var $a = document.getElementById('input-1').value;
    var $b = document.getElementById('input-2').value;
    if (Number.isInteger(Number($a)) && Number.isInteger(Number($b))) {
        var $rest = Number($a) + Number($b);
        document.getElementById('respuesta').innerText = $rest;
    } else {
        alert('No ingreso numeros');
    }
}

function Multiplicacion() {
    var $a = document.getElementById('input-1').value;
    var $b = document.getElementById('input-2').value;
    if (Number.isInteger(Number($a)) && Number.isInteger(Number($b))) {
        var $rest = Number($a) + Number($b);
        document.getElementById('respuesta').innerText = $rest;
    } else {
        alert('No ingreso numeros');
    }
}

function Divicion() {
    var $a = document.getElementById('input-1').value;
    var $b = document.getElementById('input-2').value;
    if (Number.isInteger(Number($a)) && Number.isInteger(Number($b))) {
        var $rest = Number($a) + Number($b);
        document.getElementById('respuesta').innerText = $rest;
    } else {
        alert('No ingreso numeros');
    }
}