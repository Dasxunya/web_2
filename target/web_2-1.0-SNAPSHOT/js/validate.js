let y;
let r;

document.getElementById("function-btn").addEventListener("click", validate);

function validate() {
    if (!validateY());
    if (!validateR());
}

function validateY() {
    let yText = document.getElementById("yField");
    y = yText.value.trim();
    if (/^-?\d+\.?\d*$/.test(y)) {
        if (y >= 5 || y <= -5) {
            yText.setCustomValidity("Число вне допустимого диапазона");
            return false;
        } else {
            yText.setCustomValidity("")
            return true;
        }
    } else {
        yText.setCustomValidity("Некорректный вид числа");
        return false;
    }
}
function validateR() {
    let rText = document.getElementById("rField");
    r = rText.value.trim();
    if (/^-?\d+\.?\d*$/.test(r)) {
        if (r >=4 || r <= 1) {
            rText.setCustomValidity("Число вне допустимого диапазона");
            return false;
        } else {
            rText.setCustomValidity("")
            return true;
        }
    } else {
        rText.setCustomValidity("Некорректный вид числа");
        return false;
    }
}