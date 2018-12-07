$(document).ready(function () {
    var elements = $('.modal-overlay, .modal');

    $('.orderNow').click(function () {
        elements.addClass('active');
    });
    $('.order_info').click(function () {
        elements.addClass('active');
    });
    $('.close-modal').click(function () {
        elements.removeClass('active');
    });
    $("#imgLoad").hide();
    $('.minus').on("click", function () {
        var $input = $(this).parents('.product-cart').find('.quantity');
        var $to = $(this).parents('.product-cart').find('#to');
        var $price = $(this).parents('.product-cart').find('#pr');
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        if (isNaN(count)) {
            $to.text($price.text());
            count = 1;
        }
        $input.val(count);

        var $tsum = parseInt($to.text());
        if ($tsum > parseInt($price.text())) {
            $tsum -= parseInt($price.text());
            $to.text($tsum + '$');
            var $cid = $(this).parents('.product-cart').attr('data-cart-id');
            var $qu = $('.quantity').val();
            var $price = $('#to').text();
            $.ajax({
                url: "/../models/card.php",
                type: "POST",
                data: {
                    "cid": $cid,
                    "qu": $qu,
                    "price": $price
                },
                cache: false,
                success: function (res) {
                    if (res) {
                        $('.content_cart').empty();
                        $('.content_cart').text(res);
                        var $rr = $('.content_cart').text();
                        $('.total_cart').text($rr.split(" ", 1));
                      }
                   }
               });
            }
        });

    $('.plus').on("click", function () {
        var $sum = 0;
        var $input = $(this).parents('.product-cart').find('.quantity');
        var $to = $(this).parents('.product-cart').find('#to');
        var $price = $(this).parents('.product-cart').find('#pr');
        var count = parseInt($input.val()) + 1;
        if (isNaN(count)) {
            count = 1;
        }
        $input.val(count);
        $sum += parseInt($price.text()) * count;
        $to.text($sum + '$');
        var $cid = $(this).parents('.product-cart').attr('data-cart-id');
        var $qu = $(this).parents('.product-cart').find('.quantity').val();
        var $price = $(this).parents('.product-cart').find('#to').text();
        $.ajax({
            url: "/../models/card.php",
            type: "POST",
            data: {
                "cid": $cid,
                "qu": $qu,
                "price": $price
            },
            cache: false,
            success: function (res) {
                if (res) {
                    $('.content_cart').empty();
                    $('.content_cart').text(res);
                    var $rr = $('.content_cart').text();
                    $('.total_cart').text($rr.split(" ", 1));
                    ;
                }
            }
        });
    });
    var $rr = $('.content_cart').text();
    $('.total_cart').text($rr.split(" ", 1));
});
var num = 4;
$(function () {
    $("#load div").on('click', function () {
        $("#imgLoad").show();
        $.ajax({
            url: "/../models/loader.php",
            type: "GET",
            data: {"num": num},
            cache: false,
            success: function (response) {
                if (response == 0) {
                    alert("Товаров больше нет!");
                    $("#imgLoad").hide();
                } else {
                    $(".main_gal").append(response);
                    num = num + 4;
                    $("#imgLoad").hide();
                }
            }
        });
        $('html, body').animate({
            scrollTop: $(".main_gal li:last-child").offset().top
        }, 1000);
    });
});
$(function () {
    $(".info_form").on('click', function () {
        var $val = $('input[name="findOrder"]').val();
       $.ajax({
        url: "/../public/index.php?c=page&act=findThis&",
        type: "GET",
        data:{"val": $val},
        cache:false,
        success:function(res){
            if (res) {
                $('body').html(res);
                } else {
                     
                }

        }
       });
    });
});