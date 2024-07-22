<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="../중프/css/장바구니.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
body {
    font-family: "Noto Sans KR";  
  }
  .jang {
      width: 100%;
      padding-top: 100px;
  }
  .step {
    margin: auto;
    background-color: #004393;
    height: 124.5px;
    width: 1076px;
    text-align: center;
    display: flex;
    justify-content: center;
  }
  .step > li {
    display:inline-block;
    position: relative;
  }
  .step00 {
    color: white;
    font-size: 18px;
  }
  .step03 {
    color: #4d7cb4;
    font-size: 18px;
  }
  .step01 {
    color: white;
    font-size: 25px;
  }
  .step02 {
    color: #4d7cb4;
    font-size: 25px;
  }
  .on {
    float: left;
    margin: 40px 60px;
  }
  ul {
      text-align: center;
  }
  .gt {
    color: white;
    font-size: 35px;
  }
  .orderList table {
    border-top: 2px solid #004393;
    vertical-align: middle;
    width: 100%;
  }
  .orderList {
    width: 1076px;
    margin: auto;
  }
  .table thead th{
    font-weight: bold;
    text-align: center;
    font-size: 16px;
    color: #004393;
    border-top: 1px solid #004393;
    border-bottom: 1px solid #ddd;
    padding: 10px 6px 10px;
  }
  .itemJang {
    height: 150px;
  }
  .itemJang img{
    height: 120px;
    width: 120px;
  }
  .itemJang td {
    vertical-align: middle;
    border-bottom: 1px solid #ddd;
  }
  .cen {
    text-align: center;
  }
  .one {
    width: 100%;
    height: 100%;
    font-size: 13px;
    padding: 2px 2px 2px 2px;
  }
  .ordlist {
    font-size: 20px;
  }
  .titl {
    padding-left: 10px;
  }
  .itemCount {
    width: 50%;
  }
  .amount02 {
    margin-top: 5px;
  }
  .updateam {
    color: white;
    background-color: #004393;
    width: 130px;
    height: 28px;
    border-radius: 5px;
    border: none;
  }
  .inst {
    border-bottom: 1px solid #ddd;
    height: 35px;
    color: #666;
  }
  .instr {
  /* padding: 10px; */
  }
  .mon {
    margin-left:450px;
  }
  .jumon {
    margin-left:30px;
    color: #004393;
    font-weight: bold;
  }
  .but {
    margin: 50px 10px 100px 10px;
  }
  .cho {
    margin-right: 20px;
    height: 42px;
    width: 140px;
    font-size: 17px;
    color: white;
    background-color: #004393;
    border: none;
  }
  .ch {
    margin-right: 20px;
    height: 42px;
    width: 140px;
    font-size: 17px;
    color: #004393;
    background-color: white;
    border-color: #004393;
  }
  .orderAll {
    margin: 50px 10px 50px 10px;
    width: 1076;
    height: 165px;
    border: 1px solid #ddd;
  }
  .totalOrder {
    display: inline-block;
    display: flex;
    justify-content: space-between;
    
  }
  dt {
    padding-bottom: 20px;
    font-size: 20px;
    color: #000;
    font-weight: 500;
  }
  dd {
    font-size: 20px;
    color: #004393;
    font-weight: 500;
    display: inline-block;
  }
  .allOrder {
    margin-right: 40px;
    padding: 50px 30px 30px 30px;
  }
  .onebl {
    width: 100%;
    height: 100%;
    font-size: 13px;
    padding: 2px 2px 2px 2px;
    color: #004393;
    font-weight: bold;
  }
  .pluList {
    font-size: 60px;
    color: #666;
  }
  .totalRight {
    background-color: #d4effa;
    height: 85px;
    width: 180px;
    padding: 50px 30px 30px 30px;
    margin-left: 30px;
  }
  .commitOrder {
    height: 50px;
    width: 260px;
    background-color: #004393;
    border: none;
    color: white;
    font-size: 17px;
  }
  .com {
    text-align: center;
  }
    </style>
</head>
<body>
    <div class="jang">
        <div class="step">
            <ul>
                <li class="on">
                    <span class="step00">STEP 01</span>
                    <p class="step01">장바구니</p>
                </li>
                <li class="on">
                    <span class="gt">〉</span>
                </li>
                <li class="on">
                    <span class="step03">STEP 02</span>
                    <p class="step02">주문/결제</p>
                </li>
            </ul>
        </div>
        
        <br><br><br><br><br><br><br>
        <div class="orderList">
            <table class="table order">
                <colgroup>
                    <col width="30px">
                    <col width="140px">
                    <col>
                    <col width="150px">
                    <col width="150px">
                    <col width="150px">
                </colgroup>
                <thead>
                    <th class="first">
                        <input type="checkbox" id="checkbox" name="checkbox" class="checkAll" style="margin-left: 5px;">
                    </th>
                    <th>전체선택</th>
                    <th>주문 상품 정보</th>
                    <th>상품가격</th>
                    <th>수량</th>
                    <th>합계</th>
                </thead>
                <tbody>
                    <tr class="itemJang">
                        <td class="cen">
                            <input type="checkbox" id="itemId" name="itemId" class="itemId" style="margin-left: 5px;">
                        </td>
                        <td class="cen">
                            <img src="images/3 (3).jpg" alt="연어">
                        </td>
                        <td>
                            <span class="titl">바다사나이 노르웨이 생연어필렛500g</span>
                        </td>
                        <td class="cen ordlist">
                            <span>28,900</span><span class="one">원</span>
                        </td>
                        <td class="cen">
                            <div class="amount01">
                                <button type="button">-</button>
                                <input type="text" class="itemCount" name="" id="" readonly>
                                <button type="button" >+</button>
                            </div>
                            <div class="amount02">
                                <input type="button" class="updateam" value="수정">
                            </div>
                        </td>
                        <td class="cen ordlist">
                            <span>28,900</span><span class="one">원</span>
                        </td>
                    </tr>
                    <tr class="itemJang">
                        <td class="cen">
                            <input type="checkbox" id="itemId" name="itemId" class="itemId" style="margin-left: 5px;">
                        </td>
                        <td class="cen">
                            <img src="images/3 (3).jpg" alt="연어">
                        </td>
                        <td>
                            <span class="titl">바다사나이 노르웨이 생연어필렛500g</span>
                        </td>
                        <td class="cen ordlist">
                            <span>28,900</span><span class="one">원</span>
                        </td>
                        <td class="cen">
                            <div class="amount01">
                                <button type="button">-</button>
                                <input type="text" class="itemCount" name="" id="" readonly>
                                <button type="button" >+</button>
                            </div>
                            <div class="amount02">
                                <input type="button" class="updateam" value="수정">
                            </div>
                        </td>
                        <td class="cen ordlist">
                            <span>28,900</span><span class="one">원</span>
                        </td>
                    </tr>
                    
                    <tr class="inst">
                        <td class="instr" colspan="6">
                            <span>*배송비 3,500원 (유료배송)</span>
                            <span class="mon">상품금액 :  28,900원 + 배송비 : 3,500원</span>
                            <span class="jumon">주문 합계 : 32,400</span>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="but">
                <input type="button" class="cho" value="선택상품 주문">
                <input type="button" class="ch del1" value="선택상품 삭제">
                <input type="button" class="ch del2" value="장바구니 비우기">
            </div>

            <div class="orderAll">
                <ul class="totalOrder">
                    <li class="allOrder">
                        <div class="totalLeft">
                            <dt>총 상품 합계금액</dt>
                            <dd>28,900</dd><span class="onebl">원</span>
                        </div>
                    </li>
                    <li class="allOrder pluList">
                        <span class="plu">+</span>
                    </li>
                    <li class="allOrder">
                        <div class="totalLeft">
                            <dt>배송비 합계금액</dt>
                            <dd>3,500</dd><span class="onebl">원</span>
                        </div>
                    </li>
                    <li class="allOrder pluList">
                        <span>=</span>
                    </li>
                    <li>
                        <div class="totalRight">
                            <dt>총 주문 합계금액</dt>
                            <dd>32,400</dd><span class="onebl">원</span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="but com">
                <input type="button" class="commitOrder" value="전체상품 주문하기">
            </div>

        </div>
    </div>
<script>
$('.cho').on('click', function({
	console.log('ㅎㅇ')
}); 
</script>
</body>
</html>