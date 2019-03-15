const toDOform = document.querySelector(".js-toDoForm"),
    toDoInput = toDOform.querySelector("input"),
    toDoList = document.querySelector(".js-toDoList")
    


const TODOS_LS = "toDos";
const  SPAN_CS = "span_class";


let toDos = [];

// 버튼 눌렀을 때  li 삭제하는 함수
function deleteToDo(event) {
    const btn = event.target;
    const li = btn.parentNode; //지워야할 parent 노드를 찾음
    toDoList.removeChild(li);
    const cleanToDos = toDos.filter(function(toDo){
        return toDo.id != parseInt(li.id);
    });
    toDos = cleanToDos; // 삭제된 내용을 담고
    saveToDos(); // 다시 저장 
}


function saveToDos() {
    localStorage.setItem(TODOS_LS,JSON.stringify(toDos)); // key,value 
                                                         //  자바스크립트 데이타 String 객체로 변환해줌
}

function paintToDo(text) {
    const li =  document.createElement("li");
    const delBtn = document.createElement("button");
  
    delBtn.addEventListener("click",deleteToDo); // delBtn 클릭했을때 발생
    const span = document.createElement("span");
    delBtn.innerHTML = "X";
    const newId = toDos.length + 1; 
    span.innerText = text
    li.appendChild(span);
    /*span.classList.add(SPAN_CS);*/
    li.appendChild(delBtn);
    li.id = newId;
    li.classList.add(SPAN_CS);
    toDoList.appendChild(li);
    const toDoObj = {
        text : text,
        id: newId
    };
    toDos.push(toDoObj);
    saveToDos(); // 호출 순서도 생각할 것 
}


function handleSubmit(event) {
    event.preventDefault();
    const currentValue = toDoInput.value;
    paintToDo(currentValue);
    toDoInput.value ="";
}

function loadToDos() {
    const loadedToDos =  localStorage.getItem(TODOS_LS);
    if (loadedToDos !== null) {  
        const parsedToDos = JSON.parse(loadedToDos); //JSON.parse 는 string 객체를 json객체로 변환 
        parsedToDos.forEach(function(toDo){ // forEach함수는 list에 있는 모든 item을 위한 함수를 실행시키는 것 
                                             
           paintToDo(toDo.text);                         
        });
    } 
}



function init() {
    loadToDos(); // 호출
    toDOform.addEventListener("submit",handleSubmit); //이벤트 타입,
}

init(); // 호출

