window.ready = function () {

    //считаем, на какой именно блок наведен курсор
    jQuery('.block-img').mouseenter(
        function numbers() {
            var number = jQuery(this).closest('.item').index() + 1;

            //изменяем картинку на слайдере в зависимости от того, на какой последний блок был наведен курсор
            document.getElementById('img-slider').src='/images/blocks/big-img/slide'+number+'.png';

            //изменяем картинку на слайдере в зависимости от того, на какой последний блок был наведен курсор
            document.p.getElementById('txt-slider').style.display = '';
        }
    );
};