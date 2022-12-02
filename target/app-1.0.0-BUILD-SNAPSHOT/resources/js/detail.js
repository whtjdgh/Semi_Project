

$(document).ready(function() {

    $('.menu_basket_btn').click(function(){
        $('.popup_outer_box').css({
            display : 'block',
        })
    })
    $('#cancel').click(function(){
        $('.popup_outer_box').css({
            display : 'none',
        })
    })
    $('#put').click(function(){
        $('.popup_outer_box').css({
            display : 'none',
        })
        $('.basket_popup').css({
            display : 'block'
        })
    })
    $('#contiune').click(function(){
        $('.basket_popup').css({
            display : 'none',
        })
    })
    $('#check').click(function(){
        $('.basket_popup').css({
            display : 'none',
        })
    })


    
})
const plusBtn = document.querySelector('#plus');
const minusBtn = document.querySelector('#minus');
let pmTxt = document.querySelector('#pm_txt')
let count = 0;
function plus(){
    count = +pmTxt.value + 1;
    pmTxt.value = count;
    total(count);
}
function minus(){
    if (count > 1) {
        count--;
        pmTxt.value = count;

        total(count);
    }
}
function total(count){
    let o_price = document.querySelector('.o_price');
    o_price = +o_price.innerText.replace(",","").replace("원",""); // "10000원"-> "10000"
    let f_price = o_price * count;
    document.querySelector('.total_price').innerText = f_price.toLocaleString("ko") +"원"
}