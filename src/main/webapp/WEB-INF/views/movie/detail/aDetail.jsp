<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/menu.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/movieUserMain.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/uADDetail.css">
<link rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
  integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
  crossorigin="anonymous">

<title>Actor Detail</title>
</head>
<body>

  <jsp:include page="../../menu.jsp" />

  <br>

  <hr>
  <!-- MAIN (Center website) -->
  <div class="main2">
    <br>
    <div class="Center-Container">
      <div class="Absolute-Center">
        <div class="row col-80">
          <div class="top-container">

            <div class="col-100">
              <h3>배우 정보</h3>
              <label for="subject">포스터</label>
            </div>
            <div class="col-50">
              <div id="subject" name="subject"
                style="height: 300px; border: solid 1px; margin-right: 10px;"></div>
            </div>

            <div class="col-50">
              <!-- <div class="col-100"> -->
              <div class="row">
                <div class="col-25">
                  <label for="genre_list">이름</label>
                </div>
                <div class="col-75">
                  <input type="text" id="genre_list" name="genre_list" placeholder="영화의 장르를 적어주세요." readonly>
                </div>
              </div>
              <div class="row">
                <div class="col-25">
                  <label for="rate">성별</label>
                </div>
                <div class="col-75">
                  <input type="text" id="actor_list" name="actor_list" placeholder="출연한 배우들의 이름을 적어주세요"
                    readonly>
                </div>
              </div>
              <div class="row">
                <div class="col-25">
                  <label for="director_list">생년월일</label>
                </div>
                <div class="col-75">
                  <input type="text" id="director_list" name="director_list" placeholder="영화 감독을 적어주세요" readonly>
                </div>
              </div>
              <div class="row">
                <div class="col-25">
                  <label for="actor_list">국가</label>
                </div>
                <div class="col-75">
                  <input type="text" id="actor_list" name="actor_list" placeholder="출연한 배우들의 이름을 적어주세요"
                    readonly>
                </div>
              </div>
              <div class="row trophy">
                <div class="col-25">
                  <label for="open_date">수상이력</label>
                </div>
                <div class="col-75">
                  <input type="text" id="actor_list" name="actor_list" placeholder="출연한 배우들의 이름을 적어주세요"
                    readonly>
                </div>
              </div>
              <!-- </div> -->
            </div>
            
            <hr>
            work activity
            <hr>
            box-office recode(recent 5 movie)
            <hr>
            about
            
          </div><!-- top -->
        </div>

        <div class="bottom-container">Actor who don't let you down rank</div>


      </div>

    </div>
  </div>

</body>
</html>