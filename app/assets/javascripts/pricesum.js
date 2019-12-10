$(function(){
  var minPrice = 300;
  var price = $("#jsPrice");
  var taxoutput = $("#jsTax");
  var tax = 0.1;

  price.on("change", function() {
    var str = $(this).val();
    var num = Number(str.replace(/[^0-9]/g, ''));
    if(num == 0 || num < minPrice) {
      num = '';
    }
		$(this).val(num);
		if(num <= 300) {
			var sumtax = num * tax;
			taxoutput.val(sumtax);
		}
  });
});

