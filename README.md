# 2022.01.29  

## 웹사이트 제작 실습

### 참고 사이트  

- [일주일만에 웹사이트 만들기](https://youtu.be/YoqVA95cPzQ)


### 팁 

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