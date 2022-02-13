// 가로 방향 밑줄 애니메이션
let horizontalUnderLine = document.getElementById("horizontal-underline");
let horizontalMenus = document.querySelectorAll("nav:first-child a");
console.log(horizontalMenus);
console.log(horizontalUnderLine);

horizontalMenus.forEach(menu=>menu.addEventListener("click",(e)=>horizontalIndicator(e)))

function horizontalIndicator(e){
    horizontalUnderLine.style.left = e.currentTarget.offsetLeft + "px";
    horizontalUnderLine.style.width = e.currentTarget.offsetWidth + "px";
    horizontalUnderLine.style.top = e.currentTarget.offsetTop + e.currentTarget.offsetHeight + "px";
}

// 세로 방향 밑줄 애니메이션
let verticalUnderLine = document.getElementById("vertical-underline");
let verticalMenus = document.querySelectorAll("nav:nth-child(2) a");

verticalMenus.forEach(menu=>menu.addEventListener("click",(e)=>verticalIndicator(e)))

function verticalIndicator(e){
    verticalUnderLine.style.left = e.currentTarget.offsetLeft + "px";
    verticalUnderLine.style.width = e.currentTarget.offsetWidth + "px";
    verticalUnderLine.style.top = e.currentTarget.offsetTop  + e.currentTarget.offsetHeight + "px";
}