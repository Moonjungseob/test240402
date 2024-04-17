

let slideIndex = 1;
// changeSlide(1)
// showSlides(slideIndex);

function changeSlide(n) {
    console.log("n : " + n)
    showSlides(slideIndex += n);
}

function showSlides(n) {
    let i;
    var slides = document.getElementsByClassName("slide");
    console.log("slides : " + slides.length)
    if (n > slides.length) {
        console.log("showSlides 안, n > slides.length")
        slideIndex = 1;
        slides.length = 5;
    }
    if (n < 1) {
        console.log("showSlides 안, n < 1")
        slideIndex = slides.length;
    }
    console.log("slides.length 의 길이 : " + slides.length)
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[slideIndex - 1].style.display = "flex";
}