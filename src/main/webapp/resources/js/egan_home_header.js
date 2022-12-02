
// 헤더 기능
$(document).ready(function(){
    let hd_scroll = $('.header').offset().top;
    // // 최상단으로부터 헤더의 위치 값
    $(window).scroll(function(){
        let s_top = $(window).scrollTop();
        console.log(`hd_scroll : ${hd_scroll} s_top : ${s_top}`)
        // 최상단으로 부터 현재의 스크롤 위치 값

        //스크롤 내리면 헤더 불투명
        if(s_top === 0 ) {
            $('.header').css({
                background :'#FFFEEB'
            })

            // $('.logo > a').css({
            //     color: '#ffbf00'
            // })

            $('.nav > a').css({
                color: 'black'
            })
            $('.h_menu > a').css({
                color: 'black'
            })
            $('.h_menu::after').css({
                borderRight: '1px solid black'
            })
            $('.shopping').css({
                background: 'url(../img/장바구니_black.png)no-repeat center / 20px'
            })
            $('.search').css({
                background: 'url(../img/header_search_black.png)no-repeat center / 20px'
            })
            
        }  // 헤더 위치와 브라우저 스크롤 위취 값 같으면 헤더 투명
        else if (s_top > 0 ) {
            $('.header').css({
                background :'transparent'
            })
            // $('.logo > a').css({
            //     color: 'white'
            // })
            $('.nav > a').css({
                color: '#ffbf00'
            })
            $('.h_menu > a').css({
                color: '#ffbf00'
            })
            $('.h_menu::after').css({
                borderRight: '1px solid ffbf00'
            })
            $('.shopping').css({
                background: 'url(../img/장바구니_yellow.png)no-repeat center / 20px'
            })
            $('.search').css({
                background: 'url(../img/header_search_yellow.png)no-repeat center / 20px'
            })
        }
    })
})


