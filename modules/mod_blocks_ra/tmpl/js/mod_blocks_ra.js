window.onload = function () {
    //делаем видимым первый текст на слайдре по умолчанию
    document.getElementById('txt-slider1').style.display='block';

    //считаем, на какой именно блок наведен курсор
    jQuery('.block-img').mouseenter(
        function () {
            var number = jQuery(this).closest('.item').index() + 1;

            var txtNumber = new Array(0, 1, 2, 3, 4);
            var notxtNumber = [];
            var ln = txtNumber.length;

            for (var i=1; i<ln; i++) {
                if (i == number) {
                    var focus = i;
                } else {
                    notxtNumber.push(i);
                }
            }

            //изменяем картинку на слайдере в зависимости от того, на какой последний блок был наведен курсор
            document.getElementById('img-slider').src='/images/blocks/big-img/slide'+number+'.png';

            //изменяем текст на слайдере в зависимости от того, на какой блок наведен курсор
            document.getElementById('txt-slider'+notxtNumber[0]).style.display='none';
            document.getElementById('txt-slider'+notxtNumber[1]).style.display='none';
            document.getElementById('txt-slider'+notxtNumber[2]).style.display='none';
            document.getElementById('txt-slider'+number).style.display='block';
        }
    );
};