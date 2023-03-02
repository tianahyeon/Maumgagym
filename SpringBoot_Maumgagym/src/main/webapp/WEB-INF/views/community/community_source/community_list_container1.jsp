<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

    
<%@page import="com.maumgagym.dto.PagingDTO"%>
<%@page import="com.maumgagym.dto.BoardTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.maumgagym.dao.CommunityDAO"%>

<%
	String id = (String)session.getAttribute("id");
	
	ArrayList<BoardTO> communityList = (ArrayList) request.getAttribute("communityList"); // 커뮤니티리스트 호출
	int boardCount = (Integer)request.getAttribute("boardCount"); //총데이터갯수
	PagingDTO pto = (PagingDTO)request.getAttribute("pto"); //아래 페이지네이션처리
	
	StringBuilder sbHtml = new StringBuilder();
		 
	for( BoardTO to : communityList){
		
			int seq = to.getSeq();
			String topic = to.getTopic();
			String nickname = to.getNickname();
			String title = to.getTitle();
			String content = to.getContent();
			String date = to.getWrite_date();
			int like_check =  to.getLike_check();
			String status = to.getStatus();
			 
			sbHtml.append("<tr>");
			sbHtml.append("<td>&nbsp;</td>");
			sbHtml.append("<td scope='row'>" + seq + "</td>");
			sbHtml.append("<td class='text-muted'>" + topic + "</td>");
			if(status.equals("3")){
				sbHtml.append("<td class='text-muted'>삭제된 게시물 입니다.</td>&nbsp;"); 
			}
			else {
				sbHtml.append("<td class='text-start fw-bold'>");
				sbHtml.append("<a href='/community/view?seq=" + seq + "' style='text-decoration-line: none;'>" + title + "</a>&nbsp;"); 
				sbHtml.append("</td>");
			}
			sbHtml.append("<td>" + nickname + "</td>");
			sbHtml.append("<td>" + date + "</td>");
			sbHtml.append("<td>" + like_check + "</td>");
			sbHtml.append("<td>&nbsp;</td>");
			sbHtml.append("</tr>");
		}
%>    
      
 
<hr/><br/><br/>
 
 <!--  
<main>
  <div class="container px-3 px-lg-5">
  <br/>
 <p class="h2" style="font-weight: bold;">커뮤니티</p><br/><br/>
    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 text-bg-primary rounded-3">
          <h1>[건강] HOT 여기주목!</h1>
          <p class="h3">2023년 계묘년 뜨는 food! 입맛과 건강을 동시에 챙기고싶으신 부운~</p>
          <button class="btn btn-outline-light" type="button">보러가기</button>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 bg-info border rounded-3">
          <h1>[운동] HOT 여기주목!</h1>
          <p class="h3">2023년, 가장 주목받고 있는 운동은?!</p><br/>
          <button class="btn btn-outline-light" type="button">보러가기</button>
        </div>
      </div>
    </div>
  </div>
</main>
 -->
<div class="container px-3 px-lg-5">
		<p class="h2" style="font-weight: bold;">커뮤니티</p>
		<br/><br/>
		<form class="row domain-search bg-pblue">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="h5">실시간 전체글 <span class="count"><%= boardCount %></span>개</p>
                </div>
                <div class="col-md-2 text-end ">
					 <select class="form-select" name="searchtype" aria-label="Default select example">
						  <option selected>분류 선택</option>
						  <option value="10">운동</option>
						  <option value="11">건강</option>
						  <option value="12">수다</option>
					</select>
				</div>
		        <div class="col-md-4">
		            <div class="input-group">
		                <input type="text" name="keyword" id="keyword" class="form-control" placeholder="키워드로 검색해보세요." >
		                <input type="button" class="btn btn-outline-primary" id="search" value="검색">
		            </div>
		        </div>
		      
            </div>
        </div>
       </form>
		
	    <br/>		
		<table class="table table-hover text-center">
		 <thead class="table-primary">
		<tr>
			<th scope="col">&nbsp;</th>
			<th scope="col">번호</th>
			<th scope="col">분류</th>
			<th scope="col">제목</th>
			<th scope="col">글쓴이</th>
			<th scope="col">등록일</th>
			<th scope="col">좋아요</th>
			<th scope="col">&nbsp;</th>
		</tr>
		</thead>	
		
		<%= sbHtml.toString() %>
	</table>
	<%if( id != null )  {%>
			<div class="text-end">
				   <input type="button" value="쓰기" class="btn btn-primary" style="cursor: pointer;" onclick="location.href='/community/write'"/>
					<input type="hidden" type="nickname"/>
			</div>
	<%} %>
	<br/><br/><br/>
			<nav>
              <ul class='pagination justify-content-center'>
				<c:if test = "${pto.startPage ne 1}"> <!-- startPage가 1이 아니면 &lt;표시가 나타남. -->
					<li class='page-item'><a class='page-link' href='http://localhost:8080/community/list?pageNum=${pto.startPage-1}'> &lt; </a></li>
				</c:if>
				
				<c:forEach var="pageIndex"  begin="${pto.startPage}" end="${pto.endPage}">
					<li class='page-item'><a class='page-link' href='http://localhost:8080/community/list?pageNum=${pageIndex}'>${pageIndex}</a></li>
				</c:forEach>
				
				<c:if test = "${pto.totalPages ne pto.endPage}"> <!-- 전체페이지와 마지막 페이지가 같으면  &gt; 표시가 없어짐 -->
					<li class='page-item'><a class='page-link' href='http://localhost:8080/community/list?pageNum=${pto.endPage+1}'> &gt; </a></li>
				</c:if>
            </ul>
            </nav>
</div>
<!-- 
<script>
	 $(document).ready(function (){
		$('#btn_search').on('click',function(){
				alert('로그인 후 이용해 주세요.');
			});
		 });
	</script>
 -->