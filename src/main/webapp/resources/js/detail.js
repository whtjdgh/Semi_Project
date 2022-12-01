
$(document).ready(function () {
    let h_o_top = $('.header').offset().top;



    $(window).scroll(function () {
        let s_top = $(window).scrollTop();


        if (s_top > h_o_top) {
            $('.header').css({
                background: '#FFFEEB',
                border: 'none'
            })
            $('.logo > a').css({
                color: '#ffbf00'
            })
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
                background: 'url(../포폴/포폴_img/세미_자료/장바구니_black.png)no-repeat center / 20px'
            })
            $('.search').css({
                background: 'url(../포폴/포폴_img/세미_자료/h_검색.png)no-repeat center / 20px'
            })
        }
        else if (s_top == h_o_top) {
            $('.header').css({
                background: 'transparent',
                borderBottom: '1px solid rgb(137, 137, 137)'
            })
            $('.logo > a').css({
                color: 'white'
            })
            $('.nav > a').css({
                color: 'white'
            })
            $('.h_menu > a').css({
                color: 'white'
            })
            $('.h_menu::after').css({
                borderRight: '1px solid white'
            })
            $('.shopping').css({
                background: 'url(../포폴/포폴_img/세미_자료/장바구니_white.png)no-repeat center / 20px'
            })
            $('.search').css({
                background: 'url(../포폴/포폴_img/세미_자료/h_검색2.png)no-repeat center / 20px'
            })
        }


    });

});
function view() {
    const img = document.querySelectorAll('.info_img');
    const winTop = document.documentElement.scrollTop;


    img.forEach((i) => {
        const imgTop = i.offsetTop - 800;

        if (imgTop <= winTop)
            i.classList.add('on')
        else
            i.classList.remove('on')

    });
}

window.addEventListener('scroll', () => {
    view();

})