document.addEventListener('DOMContentLoaded', function () {
    let steps = document.querySelectorAll('.step-bar ul li');

    // Primer paso
    document.querySelector('.firstNext').addEventListener('click', function (e) {
        setTimeout(function () {
            steps[1].querySelector('.number').classList.add('active');
        }, 1000);

        steps[1].querySelector('.line').classList.add('line-active');
        document.querySelector('.account-setup').style.left = '-4000px';
        document.querySelector('.user-details').style.left = 'calc(50% - 175px)';
    });

    // Segundo paso
    document.querySelector('.secondNext').addEventListener('click', function (e) {
        setTimeout(function () {
            steps[2].querySelector('.number').classList.add('active');
        }, 1000);

        steps[2].querySelector('.line').classList.add('line-active');
        document.querySelector('.user-details').style.left = '-4000px';
        document.querySelector('.finish-step').style.left = 'calc(50% - 175px)';
    });

    document.querySelector('.firstPrev').addEventListener('click', function (e) {
        steps[1].querySelector('.number').classList.remove('active');
        steps[1].querySelector('.line').classList.remove('line-active');
        document.querySelector('.user-details').style.left = '4000px';
        document.querySelector('.account-setup').style.left = 'calc(50% - 175px)';
    });

    // Último paso
    document.querySelector('.secondPrev').addEventListener('click', function (e) {
        steps[2].querySelector('.number').classList.remove('active');
        steps[2].querySelector('.line').classList.remove('line-active');
        document.querySelector('.finish-step').style.left = '4000px';
        document.querySelector('.user-details').style.left = 'calc(50% - 175px)';
    });
});