<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <div class="ft_wrap">
            <div class="ft_logo"><img src="./img/logo.png" alt="하단로고"></div>
            <div class="mid_box">
                <nav class="fnb">
                    <a href="" class="dpc">개인정보 처리 방침</a>
                    <a href="" class="dpc">이용약관</a>
                    <a href="">이메일무단수집거부</a>
                </nav>
                <p class="addr">
                   주)아이아이컴바인드 | 대표자 | 김한국 사업자등록번호:119-86-38589<br>
                    서울특별시 마포구 어울마당로5길 41 | 대표 번호 : 1644-1246 | 이메일 : cs@tamburins.com<br>
                    개인정보 보호 책임자 : 정태호 | 호스팅 서비스 사업자 : Aws | 통신판매업신고번호: 제2014-서울마포-1050호<br>
                    고객님의 안전한 현금자산 거래를 위하여 하나은행과 채무지급보증계약을 체결하여 보장해드리고 있습니다.   
                </p>
                <p class="copyright">COPYRIGHT ⓒ 탬버린즈 대한민국</p>
            </div>
            <div class="sel_box">
                <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
                    <option value="">패밀리 사이트</option>
                    <option value="https://www.gentlemonster.com/kr/stories/haus-dosan">HOUSE-DOSAN</option>
                    <option value="https://www.gentlemonster.com/kr/?gclid=Cj0KCQjwhY-aBhCUARIsALNIC07teDEQrdJs3IGd4txUABRl1yBBbw2ktZRfYeesw68mua8Mmqsc8A8aAmYcEALw_wcB">GENTELMONSTER</option>
                    <option value="https://www.instagram.com/nu_dake/?hl=ko">NUDAKE</option>
                </select>
            </div>
            <script>
            function sel_link(sel){
                location.href = sel.value;
            }
            </script>
        </div>