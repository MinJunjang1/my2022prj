<%@ page import="kopo.poly.util.CmmUtil" %>
<%@ page import="kopo.poly.dto.MemberDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    List<MemberDTO> mList = (List<MemberDTO>) request.getAttribute("mList");

//게시판 조회 결과 보여주기
    if (mList == null) {
        mList = new ArrayList<MemberDTO>();

    }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>회원정보</title>

</head>

<body>

<div class="wrapper">
    <div class="wrap">
        <!-- gnv_area -->
        <div class="top_gnb_area">
            <ul class="list">
                <li><a href="/main">메인 페이지</a></li>
                <li><a href="/member/logout.do">로그아웃</a></li>
                <li>고객센터</li>
            </ul>
        </div>
        <!-- top_subject_area -->
        <div class="admin_top_wrap">
            <span>관리자 페이지</span>

        </div>
        <!-- contents-area -->
        <div class="admin_wrap">
            <!-- 네비영역 -->
            <div class="admin_navi_wrap">
                <ul>
                    <li >
                        <a class="admin_list_01" href="/admin/goodsEnroll">상품 등록</a>
                    </li>
                    <li>
                        <a class="admin_list_02" href="/admin/goodsManage">상품 관리</a>
                    </li>
                    <lI>
                        <a class="admin_list_03" href="/admin/authorEnroll">작가 등록</a>
                    </lI>
                    <lI>
                        <a class="admin_list_04" href="/admin/authorManage">작가 관리</a>
                    </lI>
                    <lI>
                        <a class="admin_list_05">회원 관리</a>
                    </lI>
                </ul>
            </div>
            <div class="admin_content_wrap">
                <div class="admin_content_subject"><span>작가 등록</span></div>
            </div>
            <div class="clearfix">
                <table border="1">
                    <tr>
                        <th>번호</th>
                        <th>아이디</th>
                        <th>비밀번호</th>
                        <th>이메일</th>
                        <th>주소</th>
                        <th>회원가입일</th>
                    </tr>
                    <%
                        for (int i = 0; i < mList.size(); i++) {
                            MemberDTO rDTO = mList.get(i);

                            if (rDTO == null) {
                                rDTO = new MemberDTO();
                            }
                    %>

                    <tr>
                        <th><%=String.valueOf(rDTO.getUser_seq())%></th>
                        <th><a href="/info?user_id=<%=CmmUtil.nvl(rDTO.getUser_id()) %>"/><%=CmmUtil.nvl(rDTO.getUser_id()) %></th>
                        <th><%=CmmUtil.nvl(rDTO.getUser_pw()) %></th>
                        <th><%=CmmUtil.nvl(rDTO.getUser_email()) %></th>
                        <th><%=CmmUtil.nvl(rDTO.getUser_addr2()) %></th>
                        <th><%=(rDTO.getUser_dt()) %></th>
                    </tr>

                    <%
                        }
                    %>

                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
