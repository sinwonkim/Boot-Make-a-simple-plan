const title = document.querySelector('#title');

const ClIcked_CLASS = "clicked";

function handeClick() { //3
  title.classList.toggle(ClIcked_CLASS);
    
}

function init() {  // 2
  title.addEventListener("click",handeClick);
}

init(); // 실행 1