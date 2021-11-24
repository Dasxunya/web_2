let x, yCoord;
let rCoord;
const svgSize = 300;
document.getElementById("graph_pic").addEventListener("click", checkPoint);
let graph = document.getElementById("graph_pic");
/*TODO: проверить наличие радиуса в текстовом блоке*/
function checkPoint(event) {
    let rText = document.getElementById("rField");
    rCoord = rText.value.trim();

    if (isValueR(rCoord)) {
        const domRect = graph.getBoundingClientRect();
        const rowX = event.clientX - domRect.x;
        const rowY = event.clientY - domRect.y;
        x = ((rCoord * (svgSize / 2 - rowX) * -1) / 100).toFixed(2);
        yCoord = ((rCoord * (svgSize / 2 - rowY)) / 100).toFixed(2);
        sendRequest(x, yCoord, rCoord);
    } else {
        alert('Выберите радиус R');
    }
}
function isValueR(r){
    if (/^-?\d+\.?\d*$/.test(r)) {
        if (r >=4 || r <= 1) return false;
        else return true;
    } else return false;
}
function sendRequest(x, y, r) {
    $.ajax({
        type: 'GET',
        url: 'main',
        data: {
            'x': x,
            'y': y,
            'r': r
        },
        success: function () {
            window.location.href = 'result_page.jsp';
        }
    });
}