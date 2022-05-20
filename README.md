# 2022.01.29  

## 웹사이트 제작 실습

### 참고 사이트  

- [일주일만에 웹사이트 만들기](https://youtu.be/YoqVA95cPzQ)
- [Swiper(롤링배너)](https://swiperjs.com/)
- [눈누 무료폰트](https://noonnu.cc/)


### 팁 

:rocket: 파일 관리  

> html 파일은 각 부분마다 주석을 달아서 현재 구역이 어느 부분인지 알 수 있도록 하는 것이 좋음  

> css 파일은 한 파일(style.css)에 모든 코드를 몰아 넣으면 필요한 부분을 찾거나 관리가 까다롭기 때문에 목적에 따라 파일을 여러 개 만들어 주는 것이 좋음


<br>

:rocket: 자동 완성 기능  

> html 에서 코드 작성 시 "<>" 없이 태그명을 입력하면 관련 항목이 뜨고, 원하는걸 선택해서 Tab 또는 Enter 누르면 자동 완성

```
a+tab
> <a></a> 자동 완성 됨  
```

<br>

:rocket: id 와 class 차이  

> id 는 css 에서 `"#"`으로 지정해야 하고, class 는 `"."`으로 지정해야함  
class 는 중복으로 사용이 가능하며, 한 개의 id 는 페이지에서 딱 한번만 사용이 가능함

```
CSS 코드
#body{ 내용 }
.test{ 내용 }

HTML 코드
<div class="test"> </div>    (O)
<div id="test"> </div>       (X)
<div class="body"> </div>    (X)
<div id="body"> </div>       (O)

<div id="body"> </div>       (O)
<span id="body"> </span>     (X) 위에 div 에서 한 번 사용했기 때문에 사용 불가

<div class="test"> </div>    (O)
<span class="test"> </span>  (O) class 는 중복 사용 가능
```

<br>

:rocket: 중간 정렬  

> margin: auto; 설정하면 화면의 가운데 정렬 됨  

<br>

:rocket: 구역 가로 정렬  

> float 사용하면 구역을 가로로 정렬 가능

```
CSS 코드
.body{
    float: left;
}

HTML 코드
<div class="body"> </div>
<div class="body"> </div>

float 을 사용하지 않았을 때는 <div> 두 개가 서로 세로로 배치가 되지만 float 을 사용하면 가로로 배치가 됨
```

<br>

:rocket: 테두리 생성  

> border 사용해서 테두리를 생성 가능  

```
테두리 스타일

p.dotted {border-style: dotted;}
p.dashed {border-style: dashed;}
p.solid {border-style: solid;}
p.double {border-style: double;}
p.groove {border-style: groove;}
p.ridge {border-style: ridge;}
p.inset {border-style: inset;}
p.outset {border-style: outset;}
p.none {border-style: none;}
p.hidden {border-style: hidden;}
p.mix {border-style: dotted dashed solid double;}

테두리 너비(스타일을 먼저 설정해야 너비 설정 가능)

p.one {
    border-style: solid;
    border-width: 5px;
}

p.two {
    border-style: solid;
    border-width: medium;
}

p.three {
    border-style: solid;
    border-width: 2px 10px 4px 20px;
}

단축으로 사용

border: 5px solid red; /* 테두리 전체 적용 */
border-bottom: 5px solid red; /* 테두리 하단만 적용 */
```

<br>

# 2022.02.07

Swiper 로 롤링배너 만들기  

:rocket: 사용 방법  

> Swiper 홈페이지에서 `Get Started` 들어가면 설명 있음  
> `Use Swiper from CDN` 에서는 assets 파일 다운받지 않고 온라인 링크를 걸어주면 배너 사용 가능  

```html
<link
  rel="stylesheet"
  href="https://unpkg.com/swiper@8/swiper-bundle.min.css"
/>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
```  

# 2022.02.09  

무료폰트 사이트에서 웹 폰트 적용하기  

:rocket: 웹 폰트 사용 방법  

> 눈누 사이트(한글 많음)에서 마음에 드는 폰트 선택하면 `웹폰트로 사용` 부분에 코드 있음.  
> 코드를 그대로 복사 후 적용하고자 하는 css 파일에 전부 붙여넣고, 글씨가 적용되는 태그에 `font-family: '글씨체';` 항목 붙이면 됨  

```css
@font-face {
    font-family: 'KCC-Jeongbeom';  
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202@1.0/KCC-Jeongbeom.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
css 파일에 이 항목 전부 붙여넣은 다음에
font-family: 'KCC-Jeongbeom'; <- 이 부분을 글씨가 적용되는 태그 옵션에 붙이면 됨

/* 글씨가 적용되는 태그 옵션에 font-family 붙임 */
.navigation_link{
	font-size: 16px;
	color: #00ab33;
	font-family: 'KCC-Jeongbeom';
}
```  

# 2022.05.12 ~   

### 쉽게 배우는 JSP WEB PROGRAMMING  

> project/JSP_web 폴더에 작업 중  

- 교재 실습: project/JSP_web/JSPBook 폴더에 작업  
- 쇼핑몰 실습: project/JSP_web/WebMarket 폴더에 작업  

#### chap02. 스크립트 태그: 시작 페이지 만들기  

- 선언문 태그의 기능과 사용법  
- 스크립틀릿 태그의 기능과 사용법  
- 표현문 태그의 기능과 사용법  

<p style="color: blue; font-size: 1.2em">✨ 쇼핑몰 </p>  

- 시작 페이지 작성하기  
- 부트스트랩 CSS 적용하기  

#### chap03. 디렉티브 태그: 한글 출력 및 페이지 모듈화하기  

- page 디렉티브 태그의 기능과 사용법  
- include 디렉티브 태그의 기능과 사용법  
- taglib 디렉티브 태그의 기능과 사용법  

<p style="color: blue; font-size: 1.2em">✨ 쇼핑몰 </p>  

- 한글 적용 및 현재 접속시간 출력하기  
- 웹 페이지 모듈화하기(menu.jsp / welcome.jsp / footer.jsp)  

#### chap04. 액션 태그: 상품 목록 표시하기  

- forward 액션 태그의 기능과 사용법  
- include 액션 태그의 기능과 사용법  
- param 액션 태그의 기능과 사용법  
- 자바빈즈 액션 태그의 기능과 사용법  

<p style="color: blue; font-size: 1.2em">✨ 쇼핑몰 </p>  

- 상품 목록 표시하기  

#### chap05. 내장 객체: 상품 상세 정보 표시하기  

- 내장 객체의 개요  
- request 내장 객체의 기능과 사용법  
- response 내장 객체의 기능과 사용법  
- out 내장 객체의 기능과 사용법  

<p style="color: blue; font-size: 1.2em">✨ 쇼핑몰 </p>
  
- 상품 상세 정보 표시하기    

#### chap06. 폼 태그: 상품 등록 페이지 만들기  

- 폼 처리의 개요  
- form 태그의 기능과 사용법  
- input 태그의 기능과 사용법  
- select 태그의 기능과 사용법  
- textarea 태그의 기능과 사용법  
- 폼 데이터 처리하기  

<p style="color: blue; font-size: 1.2em">✨ 쇼핑몰 </p>
  
- 상품 등록 페이지 만들기  