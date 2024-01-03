var navbar = document.getElementsByClassName('nav-link');

navbar.addEventListener('click',function(){
    navbar.classList.add('active');
    console.log("berhasil");
});

function handleCardClick(card) {
    var checkbox = card.querySelector('input[type="checkbox"]');

    if (card.classList.contains('card-clicked')) {
        card.classList.remove('card-clicked');
        checkbox.checked = false;
    } else {
        var allCards = document.querySelectorAll('.card');
        allCards.forEach(function (otherCard) {
            if (otherCard !== card) {
                otherCard.classList.remove('card-clicked');
            }
            var otherCheckbox = otherCard.querySelector('input[type="checkbox"]');
            otherCheckbox.checked = false;
        });

        card.classList.add('card-clicked');
        checkbox.checked = true;
    }
}
