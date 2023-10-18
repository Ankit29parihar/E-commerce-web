function changeImage(element) {

    var main_prodcut_image = document.getElementById('main_product_image');
    main_prodcut_image.src = element.src;
}

var rangeSlider = document.getElementById("range4");
var amountElement = document.getElementById("amount");
var month1Button = document.getElementById("month1");
var month2Button = document.getElementById("month2");
var month3Button = document.getElementById("month3");
var cancelInsuranceButton = document.getElementById("cancelInsurance");

// Store the initial amount
var initialAmount = parseFloat(amountElement.textContent.replace(/[^\d.]/g, ''));

// Initialize variables to keep track of selected insurance amounts
var insuranceAmount = 0;

// Function to handle change event of the range slider
function handleRangeChange() {
    var currentValue = parseInt(rangeSlider.value); // Get the current value

    // Calculate the new amount based on the current value and selected insurance amount
    var newAmount;
    if (currentValue <= 1) {
        newAmount = initialAmount;
    } else {
        newAmount = initialAmount * Math.pow(2, currentValue - 1);
    }

    // Add the selected insurance amount
    newAmount += insuranceAmount;

    // Update the amount element with the new value
    amountElement.textContent = "\u20B9 " + newAmount.toFixed(2);
}

// Function to handle insurance button clicks
function handleInsuranceClick(amountToAdd) {
    insuranceAmount = amountToAdd;
    handleRangeChange();
    cancelInsuranceButton.style.display = "inline"; // Show cancel button
}

// Function to handle cancel insurance button click
function handleCancelInsurance() {
    insuranceAmount = 0; // Reset insurance amount
    handleRangeChange();
    cancelInsuranceButton.style.display = "none"; // Hide cancel button
}

// Add an event listener to listen for changes in the range slider
rangeSlider.addEventListener("input", handleRangeChange);

// Add event listeners to insurance buttons
month1Button.addEventListener("click", function () {
    handleInsuranceClick(50);
});

month2Button.addEventListener("click", function () {
    handleInsuranceClick(150);
});

month3Button.addEventListener("click", function () {
    handleInsuranceClick(200);
});

// Add event listener to cancel insurance button
cancelInsuranceButton.addEventListener("click", function () {
    handleCancelInsurance();
});
//  "Read More" code section 
const content = document.querySelector('.read-more');
var readmore = document.querySelector('.toggle-content');
var flag =0
// Add a click event listener to toggle the content
readmore.addEventListener('click', function () {
  if (flag==0) {
    content.style.display = 'block'
    readmore.innerText = 'See less'
    flag=1
  }
  else{
    content.style.display = 'none'
    readmore.innerText = 'See More'
    flag=0
  }
})






// }
// // Range slider element ko select karen
// var rangeSlider = document.getElementById("range4");

// // Range slider par input event listener add karen
// rangeSlider.addEventListener("input", function() {
//   // Range slider ke current value ko prapt karen
//   var value = rangeSlider.value;
//   rangeSlider.style.background = "red";

//   // Range slider ka color ko change karen based on value
//   if (value == 1) {
//     rangeSlider.style.background = "red"; // Red color
//   } else if (value == 2) {
//     rangeSlider.style.background = "orange"; // Orange color
//   } else if (value == 3) {
//     rangeSlider.style.background = "green"; // Green color
//   }
// });
 