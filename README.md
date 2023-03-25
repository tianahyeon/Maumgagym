## 프로젝트 명 : Maumgagym Project
![logo_1](https://user-images.githubusercontent.com/97826058/222347079-02b0743f-df12-487e-9518-a8302dc32b5d.jpg)
 
<br>
 
## 개발인원 및 참여기여도 
#### 개발인원 : 4명 / 참여 기여도 : 25% 

<br>

## 수행기간
#### 2023. 1. 16 ~ 2023. 2. 15

<br>

## 프로젝트 목표
#### - 미션: 
실내운동시설의 가격정보와 시설정보를 공개하고,
종목이나 장소의 제약없이 운동할 수 있는 회원권 서비스를 제공

#### - 목표: 
(1)  운동시설 통합검색 - 지역명/카테고리/센터명 키워드 검색<br>
(2)  카테고리 검색 -  헬스, 요가 등을 포함한 9종류의 운동시설 검색<br>
(3)  커뮤니티 게시판 - 운동, 건강, 일상을 주제로 한 커뮤니티 게시판<br>
(4)  회원권 관리 - 회원권의 결제, 등록, 환불, 정지, 재개<br>

<br>

## 개발환경 및 개발 언어
![스크린샷 2023-03-02 160406](https://user-images.githubusercontent.com/97826058/222355459-e7754ceb-95c0-4fa4-9d27-b695d9ce0cf2.png)
#### 개발환경:
(1) 개발도구 - Eclipse IDE<br>
(2) 프레임워크 - Spring boot <br>
(3) 운영체제 - Windows10<br> 
(4) 데이터베이스 - MariaDB<br>
(5) 라이브러리 Bootstrap, jQuery, ajax <br>
(6) 오픈API - 카카오 로그인, 카카오 지도, TAWK.TO(채팅서비스), PortOne(결제서비스), summernote(editor)<br>
<br>
#### 개발 언어: 
Java, HTML/CSS, JavaScript, JSP

<br>

## 주요 구현 기능
(1) 분화된 정보 통합 -> ‘메인 페이지’<br>
▶ 마음가짐 추천 운동, 운동시설 종류, 최신글을 데이터 베이스에서 가져와 메인페이지에서 한눈에 확인이 되도록 구현<br>
<br>
(2) 내 주변 운동시설 -> ‘운동시설’<br>
▶ 카카오 지도 API를 활용하여 회원의 위치를 파악 후 주변의 운동시설을 검색 및 확인할 수 있도록 구현<br>
<br>
(3) 회원 간 커뮤니티 형성 -> ‘커뮤니티 게시판’<br>
▶ 댓글 쓰기, 삭제 기능을 Ajax를 통해서 구현<br>
▶ ’좋아요’ 기능을 Ajax를 통해서 구현 및 게시글에 총 좋아요수 표시<br>
▶ 해당 키워드와 일치하는 분류+제목 으로 ‘검색’ 가능<br>
▶ 페이지네이션<br>
<br>
(4) 1:1 실시간 채팅 서비스 -> ‘고객센터’<br>
▶ 마음가짐 서비스 관련 기본적인 문의사항 클릭 시 해당되는 구간으로 이동되도록 Bootstrap을 통해 구현<br>
▶ TAWK.TO(채팅서비스)를 통해 1:1 채팅을 통해 즉각적인 회원과의 소통이 가능하도록 구현<br>
<br>
(5) 개인정보 수정 및 회원권 결제 -> ‘마이페이지’<br>
▶ 마이페이지에서 개인 정보 수정 가능<br>
▶ 회원이 찜한 운동시설의 회원권을 결제API를 통해(PortOne) 실제 결제 가능하도록 구현<br>

<br>
[마음가짐프로젝트_기술설명서.docx](https://github.com/tianahyeon/Maumgagym/files/11069177/_.docx)<
[마음가짐_최종발표자료.pdf](https://github.com/tianahyeon/Maumgagym/files/10904059/_.pdf)

