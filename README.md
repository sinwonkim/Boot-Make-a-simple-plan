# Boot-Make-a-simple-plan
If you do using this you can easy to make a plan ^_^

## Trouble Shooting
<div>
<img src="https://i.imgur.com/VBoXQmg.png">
</div>
[WARNING] The requested profile "pom.xml" could not be activated because it does not exist. 

Resolution : 
프로젝트 마우스 오른쪽 클릭
Run as => Run Configurations 클릭 
Profiles 부분에 있는 pom.xml 삭제 (여기에 내 경우 안적혀 있었다.)

그래서 이렇게 해결 하였다.
1. 이클립스 프로젝트에서 우측 마우스 클릭
2. 속성에서 MAVEN 선택
3. Active Maven Profile 텍스트 박스에서 pox.xml을 지우고 적용

<br/>


Launching springBoot -Aplication' has encountered a problem
The archive: C:/Users/사용자/Desktop/jstl.jar wh is referenced by the classpath, does not exist

원인 : jstl jar 파일이 존재하지 않아서 내꺼 프로젝트 자체를 인식못함 
해결방안: jstl jar 필요 라이브러리 추가  + 프로젝트 오른쪽 클린  clean   , Maven 클릭  Maven Clean로 해결 

