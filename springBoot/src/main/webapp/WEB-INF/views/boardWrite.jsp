<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        $(document).ready(function(){
              
            });
        </script>
</head>

<body>

    <div class="container">
    
        <h1 class="my-3">글작성</h1>
        
        <form action="/board/write" method="POST" enctype="multipart/form-data">
	        <div class="btn-group float-right">
	            <button class="btn btn-danger" id="write">작성</button>
	        </div>
	
	        <div class="clearfix my-3"></div>
	
	        <div class="form-group ">
	            <label for="title">제목</label>
	            <input type="text" class="form-control" id="title" name="title">
	        </div>
	
	        <div class="form-group">
	            <label for="id">작성자</label>
	            <input type="text" class="form-control" id="id" name="id">
	        </div>
	
	        <div class="form-group ">
	            <label for="content">내용</label>
	            <textarea class="form-control" rows="10" id="content" name="content"></textarea>
	        </div>
	        
	        <div class="custom-file">
	        	<input type="file" class="custom-file-input" id="files" name="files" multiple>
	        	<label class="custom-file-label" for="files">업로드</label>
	        </div>
	        
	        <input type="hidden" name="no" value="${board.no }">
	        <input type="hidden" name="gno" value="${board.gno }">
	        <input type="hidden" name="step" value="${board.step }">
	        <input type="hidden" name="indent" value="${board.indent }">
        </form>
    </div>
</body>
</html>