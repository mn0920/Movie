<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
div{
margin: 0px;
padding: 0px;
border:solid 1px black;
display: inline-block;
}
.left{
width: 180px;
height: 232px;
display: inherit;
}
.right{
width: 297px;
height: 232px;
}
</style>

<title>add Actor</title>
</head>
<body>
<div style="width:487px; height: 232px;">
<!-- left box -->
<div class="left">
<input type="file">
</div>
<!-- right box -->
<div class="right">
<label> 이름:
<input type="text" class="info" id="name" name="name"></label>
<label for="birth">생년월일</label>
            <div class="col-25">
              <select id="birth" name="yyyy">
                <option value="">YYYY</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1950</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1960</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1970</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1980</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">1990</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
                <option value="2011">2011</option>
                <option value="2012">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
              </select>
            </div>
            <div class="col-25">
              <select id="birth" name="mm">
                <option value="">MM</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
            </div>
            <div class="col-25">
              <select id="birth" name="dd">
                <option value="">dd</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
            </div>
</div>
</div>
</body>
</html>