// Get DOM elements
var product_total_amt = document.getElementById('product_total_amt');
var shipping_charge = document.getElementById('shipping_charge');
var total_cart_amt = document.getElementById('total_cart_amt');
var discountCode = document.getElementById('discount_code1');

// Function to decrease the quantity and update prices
const decreaseNumber = (incdec, itemprice) => {
  var itemval = document.getElementById(incdec);
  var itempriceElem = document.getElementById(itemprice);
  var itemprice = parseFloat(itempriceElem.innerHTML);

  if (itemval.value <= 0) {
    itemval.value = 0;
    alert('Negative quantity not allowed');
  } else {
    itemval.value = parseInt(itemval.value) - 1;
    itemval.style.backgroundColor = '#fff'
    itemval.style.color = '#000'
    itemprice -= 15;
    itempriceElem.innerHTML = itemprice;
    product_total_amt.innerHTML = itemprice;
    updateCartTotal();
  }
};

// Function to increase the quantity and update prices
const increaseNumber = (incdec, itemprice) => {
  var itemval = document.getElementById(incdec);
  var itempriceElem = document.getElementById(itemprice);
  var itemprice = parseFloat(itempriceElem.innerHTML);

  if (itemval.value >= 5) {
    itemval.value = 5;
    alert('Maximum 5 allowed');
    itemval.style.backgroundColor = 'red'
    itemval.style.color = '#fff'
  } else {
    itemval.value = parseInt(itemval.value) + 1;
    itemprice += 15;
    itempriceElem.innerHTML = itemprice;
    product_total_amt.innerHTML = itemprice;
    updateCartTotal();
  }
};

// Function to update the cart total
const updateCartTotal = () => {
  var productTotal = parseFloat(product_total_amt.innerHTML);
  var shippingCharge = parseFloat(shipping_charge.innerHTML);

  productTotal = 0;

  // Calculate product total by summing item prices
  var itemPrices = document.querySelectorAll('.item-price');
  itemPrices.forEach(function (item) {
    productTotal += parseFloat(item.innerHTML);
  });

  // Update total cart amount
  total_cart_amt.innerHTML = productTotal + shippingCharge;
};

// Function to apply discount code
const applyDiscountCode = () => {
  var totalamtcurr = parseFloat(total_cart_amt.innerHTML);
  var error_trw = document.getElementById('error_trw');

  if (discountCode.value === 'Himanshu') {
    var newtotalamt = totalamtcurr - 15;
    total_cart_amt.innerHTML = newtotalamt;
    error_trw.innerHTML = "Hurray! Code is valid";
  } else {
    error_trw.innerHTML = "Try Again! Valid code is 'thapa'";
  }
};
