<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_footer
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

//подключаем css-файл модуля
$document =JFactory::getDocument();
$document->addStyleSheet('modules/mod_blocks_ra/tmpl/css/mod_blocks.css');

//подключаем js-файл модуля
$document =JFactory::getDocument();
$document->addScript('modules/mod_blocks_ra/tmpl/js/mod_blocks_ra.js');

//задаем количество блоков в модуле
$qtySlides = 4;

//получение url текущей страницы
$uri = &JFactory::getURI();
$url = $uri->toString(array('path', 'query', 'fragment'));

//получение списка материалов категории
//1.подключение к БД
$db=& JFactory::getDbo();

// Получаем объекты запросов (JDatabaseQuery)
$titleblock = $db->getQuery(true);
$aliasblock = $db->getQuery(true);
$menus = $db->getQuery(true);
$idblock = $db->getQuery(true);
$menusid = $db->getQuery(true);

//запрос в БД на получение id категорий в пунтках меню
$menusid = 'SELECT kqgk0_categories.id FROM kqgk0_categories LEFT JOIN kqgk0_menu ON kqgk0_categories.alias=kqgk0_menu.alias WHERE kqgk0_menu.menutype=1';

$db->setQuery($menusid);
for ($c = 0; $c <= 0; $c++) {
    $menusid = $db->loadColumn($c);
    ?><pre><?php print_r($menusid); ?></pre><?php
}

//составляем запрос в БД на выборку пунктов меню
$menus->select(
    $db->quoteName(
        array('alias')
    ));
$menus->from($db->quoteName('kqgk0_menu'));
$menus->where($db->quoteName('menutype') . ' = 1');

$db->setQuery($menus);
for ($c = 0; $c <= 0; $c++) {
    $menus = $db->loadColumn($c);
    ?><pre><?php print_r($menus); ?></pre><?php
}

//проверка на то, в какой блоке находится пользователь
function proverka($menusid, $menus, $url) {
    $all = array_combine ($menusid, $menus);

    foreach ($all as $value) {
        if ($url === $menus) {
            echo $menusid;
        } else {/*ничего не происходит*/}
    };



    //if ($url == '/'.$menus) {

    //}
};

$arr = array_combine ($menusid, $menus);
?><pre><?php print_r($arr); ?></pre><?php

foreach ($arr as $key => $value) {
    if ($url == $value) {
        echo $key;
    }
};

//составляем запрос в БД на выборку названий и ссылок
    $titleblock->select(
        $db->quoteName(
            array('title')
        ));
    $titleblock->from($db->quoteName('kqgk0_content'));
    $titleblock->where($db->quoteName('catid') . ' = ' . $menusid[3]);

    $aliasblock->select(
        $db->quoteName(
            array('alias')
        ));
    $aliasblock->from($db->quoteName('kqgk0_content'));
    $aliasblock->where($db->quoteName('catid') . ' = ' . $menusid[3]);

    $idblock->select(
        $db->quoteName(
            array('id')
        ));
    $idblock->from($db->quoteName('kqgk0_content'));
    $idblock->where($db->quoteName('catid') . ' = ' . $menusid[3]);


//тестово выводим результаты всех запросов
$db->setQuery($titleblock);
for ($c = 0; $c <= 0; $c++) {
    $titleblock = $db->loadColumn($c);
    ?><pre><?php print_r($titleblock); ?></pre><?php
}

$db->setQuery($aliasblock);
for ($c = 0; $c <= 0; $c++) {
    $aliasblock = $db->loadColumn($c);
    ?><pre><?php print_r($aliasblock); ?></pre><?php
}

$db->setQuery($idblock);
for ($c = 0; $c <= 0; $c++) {
    $idblock = $db->loadColumn($c);
    ?><pre><?php print_r($idblock); ?></pre><?php
}

?>


<?php
//включаем слайдер только на главной странице
if ($url == '/')
{
?>
        <!-- начало "слайдера" -->
        <div id="slider" class="row  slider  col-md-12">
            <img class="img-responsive" id="img-slider" src="<?php echo $params->get('img-sl0'); ?>" />
            <?php for ($i = 0; $i < $qtySlides; $i++) { ?>
                <p class="txt-slider<?php if ($i == 0){echo ' slide-active';} ?>" id="<?php echo 'txt-slider'.$i ?>">
                    <?php echo $params->get('txt-sl'.$i); ?>
                </p>
            <?php } ?>
        </div>

<?php } else {/*тут ничего не должно быть*/} ?>

<?php
if ($url == '/')
{
?>
    <!-- Начало блоков на главной -->
    <div class="block-wrapper col-md-12">
        <?php for ($i = 0; $i < $qtySlides; $i++) { ?>
            <a class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo $params->get('url'.$i); ?>">
                <div class="block-img" id="<?php echo 'block'.$i ?>" style="background-image: url('<?php echo $params->get('img'.$i); ?>');">
                    <div class="block-hover"></div>
                    <p><?php echo $params->get('txt'.$i); ?></p>
                </div>
            </a>
        <?php } ?>
    </div>
<?php } ?>

    <!-- Блоки внутри категорий -->
<?php
for ($vm = 0; $vm < $qtySlides; $vm++) {
    if ($url === '/'.$menus[$vm]) { ?>

        <div class="block-wrapper col-md-12">
            <?php for ($vmi = 0; $vmi < $qtySlides; $vmi++) { ?>
                <a class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo '/'.$menus[$vmi].'/'.$idblock[$vmi].'-'.$aliasblock[$vm]; ?>">
                    <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('<?php echo $params->get('img'.$vmi); ?>');">
                        <div class="block-hover"></div>
                        <p><?php echo $titleblock[$vmi]; ?></p>
                    </div>
                </a>
            <?php } ?>
        </div>
<?php } ?>
<?php } ?>