// search bar 
const icon = document.querySelector(".search-icon");
const search = document.querySelector("#search");

icon.addEventListener("click", function(){
    search.style.display = "inline-block"
})


// JavaScript code for making the buttons sticky
window.addEventListener("scroll", function() {
    var buttons = document.querySelector(".sticky-buttons");
    var rect = buttons.getBoundingClientRect();

    if (rect.top >= 0) {
        buttons.style.position = "fixed";
    } else {
        buttons.style.position = "absolute";
    }
});


 // add products to cart
 const addToCart = document.getElementsByClassName('add-to-cart');
 const productRow = document.getElementsByClassName('product-row');
 
 for (var i = 0; i < addToCart.length; i++){
   button = addToCart[i];
   button.addEventListener('click', addToCartClicked)
 }
 
 function addToCartClicked (event) {
   button = event.target;
   var cartItem = button.parentElement;
   var price = cartItem.getElementsByClassName('product-price')[0].innerText;
   
   var imageSrc = cartItem.getElementsByClassName('product-image')[0].src;
   addItemToCart (price, imageSrc);
   updateCartPrice()
 }
 
 function addItemToCart (price, imageSrc) {
   var productRow = document.createElement('div');
   productRow.classList.add('product-row');
   var productRows = document.getElementsByClassName('product-rows')[0];
   var cartImage = document.getElementsByClassName('cart-image');
   
   for (var i = 0; i < cartImage.length; i++){
     if (cartImage[i].src == imageSrc){
       alert ('This item has already been added to the cart')
       return;
     }
   }
   
   var cartRowItems = `
   <div class="product-row">
         <img class="cart-image" src="${imageSrc}" alt="">
         <span class ="cart-price">${price}</span>
         <input class="product-quantity" type="number" value="1">
         <button class="remove-btn">Remove</button>
         </div>
         
       `
   productRow.innerHTML = cartRowItems;
   productRows.append(productRow);
   productRow.getElementsByClassName('remove-btn')[0].addEventListener('click', removeItem)
   productRow.getElementsByClassName('product-quantity')[0].addEventListener('change', changeQuantity)
   updateCartPrice()
 }
