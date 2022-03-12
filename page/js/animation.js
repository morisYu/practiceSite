// 스크롤 위치(높이)에 따라 글씨가 앞, 뒤로 이동
let mainText = document.querySelector("h1")

window.addEventListener('scroll',function(){
    let value = window.scrollY;
    // 콘솔창에 scrollY 위치 표시
    console.log("scrollY", value);

    if(value>300){
        mainText.style.animation='disappear 1s ease-out forwards';
    }else{
        mainText.style.animation='slide 2s'
    }
})