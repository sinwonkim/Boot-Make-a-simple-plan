const form = document.querySelector(".js-form"),
    input = form.querySelector("input") ,
    greeting = document.querySelector(".js-greetings");

const USER_LS = "currentUser",
    SHOWING_CN = "showing";

function saveName(text){
    localStorage.setItem(USER_LS,text);
}


// form 이벤트의 기본값 막고 내가 입력한 값 받아서 전달 해주는 용도 
function handleSubmit(event){
    event.preventDefault();
    const currentValue = input.value;
    paintGreeting(currentValue);
    saveName(currentValue);
}

// 이름이 입력 하는거 보여주고  form 태그에 전송 
function askForName(){
    form.classList.add(SHOWING_CN);
    form.addEventListener("submit",handleSubmit);
}

function paintGreeting(text) {
    form.classList.remove(SHOWING_CN); // 폼을 지우고
    greeting.classList.add(SHOWING_CN); // 나에게 폼을 보여줌
    greeting.innerText = `Hello ${text}`; // 내가 보낸 text 넣을용도
}

 function loadName() {
    const currentUser = localStorage.getItem(USER_LS);
    if (currentUser === null) {
        askForName(); // currentUser 가 null 이면  showing으로 클래스를 추가시켜서 
                      // showing 클래스 css 먹히도록 block으로 설정해놈
    } else {
        paintGreeting(currentUser);
    }
 }   

function init() {
    loadName();
   
}

init();