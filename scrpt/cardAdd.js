$(document).ready(function () {
  var $id = $('.product_title').attr('data-id');
  var $totalPrice = parseInt($('#to').val());
  var $quantity = 1;
  $(function () {
    $(".add_to").on('click', function () {

      $.ajax({
        url: "/../models/card.php",
        type: "POST",
        data: {
          "id": $id,
          "total": $totalPrice,
          "quantity": $quantity
        },
        cache: false,
        success: function (res) {
         if (res === 0) {
              alert('The product has already been added');
          }else{}
        }
      });
    });
  });
 $(function () {
    $(".order_button").on('click', function () {
        var $email = $('input[type=email]').val();
         var $surname = $('input[name=surname]').val();
          var $name = $('input[name=name]').val();
          $.ajax({
        url: "/../models/order.php",
        type: "POST",
        data: {
          "email": $email,
          "surname": $surname,
          "name": $name
        },
        cache: false,
        success: function (res) {
         if (res) {
          $('.modal-overlay').find('.close-modal').remove();
            $('.modal-content').empty();
            $('.modal-content').append(res);
            $('.modal-content').append('<a href="index.php?c=page&act=deleteAll" class="closed">Ok</a>');
          }else{
              alert('This e-mail is already taken!');
          }
        }
      });

    });
  });  

 $(function () {
    $('.cancel_button').on('click', function () {
    var $order = $(this).attr('data-order');
    var $in = $(this).parents('.body_table').find('.staus_text');
    $.ajax({
            url: "/../public/index.php?c=admin&act=Cancel",
            type: "GET",
            data: {"order": $order},
            cache: false,
            success: function (response) {
                if (response == 0) {
                    alert("Отмена не возможна!");
                } else {
                  $in.text('Отменен');
                }
            }
        });
    });
  });  
 $(function () {
    $('.order_info').on('click', function () {
    var $order = $(this).parents('.body_table').find('.cancel_button').attr('data-order');
    var $in = $(this).parents('.body_table').find('.staus_text').text();
    $('.order_d').text('Order № '+$order);
   $('.selected').text($in);
      $.ajax({
            url: "/../models/order.details.php",
            type: "POST",
            data: {"order": $order},
            cache: false,
            success: function (response) {
                if (response == 0) {
                    alert("Отмена!");
                } else {
                    $('.modal-content').children('ul').html(response);
                }
            }
        });
    });
  });
 $(function () {
    $('input[name="select"]').on('click', function () {
      var $id = parseInt($('.order_d').text().replace(/[^\d\.]/g, ""));
      var $selected = $('#selected').val();
      var $orderId = $('[data-order="'+$id+'"]').parents('.body_table').find('.staus_text');
      if($selected==null){
        alert('no option selected');
      }else{
        $.ajax({
            url: "/../public/index.php?c=admin&act=change",
            type: "GET",
            data: {"id": $id, "selected": $selected

          },
            cache: false,
            success: function (response) {
                if (response) {
                    var $res = $('#selected option:selected').text();
                    $orderId.text($res);
                    $('.selected').text($res);
                }  
            }
        });
      }
      
    });
  });
});


