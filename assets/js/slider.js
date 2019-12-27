var slideIndex = 1;
var slideIndex2= 0;
//showDivs(slideIndex);
 carousel();

/*function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("pic1");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
 
}
*/
 function carousel() {
    var i;
    var x = document.getElementsByClassName("pic1");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex2++;
    if (slideIndex2> x.length) {slideIndex2 = 1} 
    x[slideIndex2-1].style.display = "block"; 
    setTimeout(carousel, 3000); 
}