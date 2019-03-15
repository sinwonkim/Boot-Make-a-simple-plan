const weather = document.querySelector(".js-weather");

const API_KEY = "d3cd5f78a34c0e46306b815278fb54b5"; // weather API Key
const COORDS = 'coords';

function getWeather(lat,lng) {
    fetch(
        `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_KEY}&units=metric`
        ).then(function(response){
            return response.json()
        }).then(function(json){
            const temperature = json.main.temp;
            const place = json.name;
            const country = json.sys.country;
            weather.innerText = `${temperature} ${place}.${country}`;
        });

}


// 위도 경도 로컬스토리지에 저장처리 하는 함수
function saveCorrds(coordsObj){
    localStorage.setItem(COORDS,JSON.stringify(coordsObj));   // key,value
}


//handleGeoSucces는 local storage에 좌표값이 없을 때에만 실행 됨
//좌표를 가져오는데 성공했을떄 처리하는 함수
function handleGeoSucces(position) {
    const latitude = position.coords.latitude; // latitude 위도
    const longitude = position.coords.longitude; //  경도 
    const coordsObj = {
        latitude ,
        longitude
    };
    saveCorrds(coordsObj);
    getWeather(latitude,longitude);
}

function handleGeoError() {
    console.log('정보를 얻을 수 없습니다.');
}


// 위치 가져오는 API 사용하는 함수
function askForCoords() {
    navigator.geolocation.getCurrentPosition(handleGeoSucces,handleGeoError) // 1성공시 인자 , 2실패시 인자 
}

function loadCoords() {
    const loadedCoords = localStorage.getItem(COORDS); 
    if(loadedCoords === null){ //handleGeoSucces는 local storage에 좌표값이 없을 때에만 실행 됨
        askForCoords();
    } else {
        const parseCoords = JSON.parse(loadedCoords); // null아니면 위도 경도 받아오고 
        getWeather(parseCoords.latitude,parseCoords.longitude);
        
    }
}


function init() {
    loadCoords();
}

init();