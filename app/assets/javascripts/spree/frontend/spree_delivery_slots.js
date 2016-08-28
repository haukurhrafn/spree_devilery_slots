$(function () {
  $('.available-delivery-slot').on('click', function () {
    $('.selected-delivery-slot').removeClass('selected-delivery-slot');

    $(this).addClass('selected-delivery-slot');

    $('#order_delivery_date').val($(this).attr('data-date'));
    $('#order_delivery_slot_id').val($(this).attr('data-slot-id'));
  });
});
