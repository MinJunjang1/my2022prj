<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>회원가입1</title>

</head>
<style>
    *{
        margin: 0;
        padding:0;
    }

    /* 화면 전체 렙 */
    .wrapper{
        width: 1900px;
    }

    /* content 랩 */
    .wrap{
        width : 800px;
        margin: auto;
    }
    /* 페이지 제목 */
    .subjecet{
        width: 100%;
        height: 120px;
        background-color: #8EC0E4;
    }
    .subjecet span{
        margin-left: 31px;
        font-size: 80px;
        font-weight: 900;
        color: white;
    }

    /* 아이디 영역 */
    .id_wrap{
        width: 100%;
        margin-top: 20px;
    }
    .id_name{
        font-size: 25px;
        font-weight: bold;
    }
    .id_input_box{
        border: 1px solid black;
        height:31px;
        padding: 10px 14px;

    }
    .id_input{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }

    /* 비밀번호 영역 */
    .pw_wrap{
        width: 100%;
        margin-top: 20px;
    }
    .pw_name{
        font-size: 25px;
        font-weight: bold;
    }
    .pw_input_box{
        border: 1px solid black;
        height:31px;
        padding: 10px 14px;

    }
    .pw_input{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }

    /* 비밀번호 확인 영역 */
    .pwck_wrap{
        width: 100%;
        margin-top: 20px;
    }
    .pwck_name{
        font-size: 25px;
        font-weight: bold;
    }
    .pwck_input_box{
        border: 1px solid black;
        height:31px;
        padding: 10px 14px;

    }
    .pwck_input{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }

    /* 이름 영역 */
    .user_wrap{
        width: 100%;
        margin-top: 20px;
    }
    .user_name{
        font-size: 25px;
        font-weight: bold;
    }
    .user_input_box{
        border: 1px solid black;
        height:31px;
        padding: 10px 14px;

    }
    .user_input{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }

    /* 메일 영역 */
    .mail_wrap{
        width: 100%;
        margin-top: 20px;
    }
    .mail_name{
        font-size: 25px;
        font-weight: bold;
    }
    .mail_input_box{
        border: 1px solid black;
        height:31px;
        padding: 10px 14px;

    }
    .mail_input{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }
    .mail_check_wrap{
        margin-top: 20px;
    }
    .mail_check_input_box{
        border: 1px solid black;
        height: 31px;
        padding: 10px 14px;
        width: 61%;
        float: left;
    }
    .mail_check_input{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }
    .mail_check_button{
        border: 1px solid black;
        height: 51px;
        width: 30%;
        float: right;
        line-height: 50px;
        text-align: center;
        font-size: 30px;
        font-weight: 900;
        background-color: #ececf7;
        cursor: pointer;
    }

    /* 주소 영역 */
    .address_wrap{
        width: 100%;
        margin-top: 20px;
    }
    .address_name{
        font-size: 25px;
        font-weight: bold;
    }
    .address_input_1_box{
        border: 1px solid black;
        height: 31px;
        padding: 10px 14px;
        width: 61%;
        float: left;
    }
    .address_input_1{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }
    .address_button{
        border: 1px solid black;
        height: 51px;
        width: 30%;
        float: right;
        line-height: 50px;
        text-align: center;
        font-size: 30px;
        font-weight: 900;
        background-color: #ececf7;
        cursor: pointer;
    }
    .address_input_2_wrap{
        margin-top: 20px;
    }
    .address_input_2_box{
        border: 1px solid black;
        height:31px;
        padding: 10px 14px;

    }
    .address_input_2{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }

    .address_input_3_wrap{
        margin-top: 20px;
    }
    .address_input_3_box{
        border: 1px solid black;
        height:31px;
        padding: 10px 14px;

    }
    .address_input_3{
        width:100%;
        height:100%;
        border:none;
        font-size:28px;
    }

    /* 가입하기 버튼 */
    .join_button_wrap{
        margin-top: 40px;
        text-align: center;
    }
    .join_button{
        width: 100%;
        height: 80px;
        background-color: #6AAFE6;
        font-size: 40px;
        font-weight: 900;
        color: white;
    }

    /* float 속성 해제 */
    .clearfix{
        clear: both;
    }
    .id_input_re_1{
        color : green;
        display: none;
    }
    .id_input_re_2{
        color : red;
        display: none;
    }

</style>
<body>
<div class="wrapper">
    <form action="">
        <div class="wrap">
            <div class="subjecet">
                <span>회원가입</span>
            </div>
            <div class="id_wrap">
                <div class="id_name">아이디</div>
                <div class="id_input_box">
                    <input class="id_input" name="user_id">
                </div>
                <span class="id_input_re_1">사용가능한 아이디입니다</span>
                <span class="id_input_re_2">아이디가 이미존대합니다</span>
            </div>
            <div class="pw_wrap">
                <div class="pw_name">비밀번호</div>
                <div class="pw_input_box">
                    <input class="pw_input">
                </div>
            </div>
            <div class="pwck_wrap">
                <div class="pwck_name">비밀번호 확인</div>
                <div class="pwck_input_box">
                    <input class="pwck_input">
                </div>
            </div>
            <div class="user_wrap">
                <div class="user_name">이름</div>
                <div class="user_input_box">
                    <input class="user_input">
                </div>
            </div>
            <div class="mail_wrap">
                <div class="mail_name">이메일</div>
                <div class="mail_input_box">
                    <input class="mail_input">
                </div>
                <div class="mail_check_wrap">
                    <div class="mail_check_input_box">
                        <input class="mail_check_input">
                    </div>
                    <div class="mail_check_button">
                        <span>인증번호 전송</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="address_wrap">
                <div class="address_name">주소</div>
                <div class="address_input_1_wrap">
                    <div class="address_input_1_box">
                        <input class="address_input_1">
                    </div>
                    <div class="address_button">
                        <span>주소 찾기</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class ="address_input_2_wrap">
                    <div class="address_input_2_box">
                        <input class="address_input_2">
                    </div>
                </div>
                <div class ="address_input_3_wrap">
                    <div class="address_input_3_box">
                        <input class="address_input_3">
                    </div>
                </div>
            </div>
            <div class="join_button_wrap">
                <input type="button" class="join_button" value="가입하기">
            </div>
        </div>
    </form>
</div>
<script>
    $('.id_input').on("propertychange change keyup paste input", function(){

        console.log("keyup 테스트");

    });// function 종료
</script>
</body>
</html>