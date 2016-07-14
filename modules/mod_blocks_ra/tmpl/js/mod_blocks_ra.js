window.onload = function () {

    //считаем, на какой именно блок наведен курсор
    jQuery('.block-img').mouseenter(
        function () {
            var number = jQuery(this).closest('.item').index();

            var notxtNumber = [];
            var ln = jQuery('.block-img').length;

            for (var i=0; i<ln; i++) {
                if (i != number) {
                    notxtNumber.push(i);
                } else {
                    //тут ничего не должно быть.
                }
            }

            //изменяем картинку на слайдере в зависимости от того, на какой последний блок был наведен курсор
            document.getElementById('img-slider').src='/images/blocks/big-img/slide'+number+'.png';

            //изменяем текст на слайдере в зависимости от того, на какой блок наведен курсор
            var location = jQuery('.txt-slider');

            location.removeClass('slide-active');
            location.eq(number).addClass('slide-active');
        }
    );

    //скрываем блок если у него нет текстового описания
    var obsh = document.getElementsByClassName('titleblock'); //создание массива

    for (var o=0; o <= obsh.length; o++) {
        if (obsh[o].textContent == "") {
            document.getElementById('ablock' + o).style.display='none';
        }
    }
};