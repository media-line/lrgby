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
}

//проверка на то, в какой блоке находится пользователь
/*объединение массивов с id и с url категорий*/
$all = array_combine ($menusid, $menus);
/**/?><!--<pre>массив id и url категорий<br/><?php /*print_r($all); */?></pre>--><?php
/*определение id категории блока в котором находится пользователь*/
$finishmenuid = 0;
while (list($menuid, $menuurl) = each($all)){
    if ('/'.$menuurl == $url) {
        //echo '<pre> id категории в которой находится пользователь<br/>'.$menuid.'</pre>';
        $finishmenuid = $menuid;
    }
}


//составляем запрос в БД на выборку названий и ссылок
    $titleblock->select(
        $db->quoteName(
            array('title')
        ));
    $titleblock->from($db->quoteName('kqgk0_content'));
    $titleblock->where($db->quoteName('catid') . ' = ' . $finishmenuid);

    $aliasblock->select(
        $db->quoteName(
            array('alias')
        ));
    $aliasblock->from($db->quoteName('kqgk0_content'));
    $aliasblock->where($db->quoteName('catid') . ' = ' . $finishmenuid);

    $idblock->select(
        $db->quoteName(
            array('id')
        ));
    $idblock->from($db->quoteName('kqgk0_content'));
    $idblock->where($db->quoteName('catid') . ' = ' . $finishmenuid);


//тестово выводим результаты всех запросов
$db->setQuery($titleblock);
for ($c = 0; $c <= 0; $c++) {
    $titleblock = $db->loadColumn($c);
    /**/?><!--<pre>название блоков подкатегорий<br/><?php /*print_r($titleblock); */?></pre>--><?php
}

$db->setQuery($aliasblock);
for ($c = 0; $c <= 0; $c++) {
    $aliasblock = $db->loadColumn($c);
    /**/?><!--<pre>ссылки блоков подкатегорий<br/><?php /*print_r($aliasblock); */?></pre>--><?php
}

$db->setQuery($idblock);
for ($c = 0; $c <= 0; $c++) {
    $idblock = $db->loadColumn($c);
    /**/?><!--<pre>id материалов блоков подкатегорий<br/><?php /*print_r($idblock); */?></pre>--><?php
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
            <a id="ablock" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo $params->get('url'.$i); ?>">
                <div class="block-img" id="<?php echo 'block'.$i ?>" style="background-image: url('<?php echo $params->get('img'.$i); ?>');">
                    <div class="block-hover"></div>
                    <p class="titleblock"><?php echo $params->get('txt'.$i); ?></p>
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
                <a id="ablock<?php echo $vmi?>" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo '/'.$menus[$vmi].'/'.$idblock[$vmi].'-'.$aliasblock[$vm]; ?>">
                    <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('<?php echo $params->get('img'.$vmi); ?>');">
                        <div class="block-hover"></div>
                        <p class="titleblock" id="titleblock"><?php echo $titleblock[$vmi]; ?></p>
                    </div>
                </a>
            <?php } ?>
        </div>
<?php } ?>
<?php } ?>