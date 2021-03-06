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
$uri = JFactory::getURI();
$url = $uri->toString(array('path', 'query', 'fragment'));


//получение списка материалов категории
//1.подключение к БД
$db= JFactory::getDbo();

// Получаем объекты запросов (JDatabaseQuery)
$titleblock = $db->getQuery(true);
$introtext = $db->getQuery(true);
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
    $titleblock->where($db->quoteName('catid') . ' = 9');

    $introtext->select(
            $db->quoteName(
                array('introtext')
            ));
    $introtext->from($db->quoteName('kqgk0_content'));
    $introtext->where($db->quoteName('catid') . ' = 9');

    $aliasblock->select(
        $db->quoteName(
            array('alias')
        ));
    $aliasblock->from($db->quoteName('kqgk0_content'));
    $aliasblock->where($db->quoteName('catid') . ' = 9');

    $idblock->select(
        $db->quoteName(
            array('id')
        ));
    $idblock->from($db->quoteName('kqgk0_content'));
    $idblock->where($db->quoteName('catid') . ' = 9');


//собираем результаты всех запросов
$db->setQuery($titleblock);
for ($c = 0; $c <= 0; $c++) {
    $titleblock = $db->loadColumn($c);
}



$db->setQuery($introtext);
for ($c = 0; $c <= 0; $c++) {
    $introtext = $db->loadColumn($c);
}

$db->setQuery($aliasblock);
for ($c = 0; $c <= 0; $c++) {
    $aliasblock = $db->loadColumn($c);
}

$db->setQuery($idblock);
for ($c = 0; $c <= 0; $c++) {
    $idblock = $db->loadColumn($c);
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

    <!-- Блоки внутри категорий -->
<?php
    if ($url == '/svarnye-metallopolimernye-truby-i-fitingi-deepipe') { ?>
        <div class="block-wrapper col-md-12">
            <?php for ($vmi = 0; $vmi < $qtySlides; $vmi++) { ?>
                <a id="<?php echo 'ablock'.$vmi?>" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/'.$idblock[$vmi].'-'.$aliasblock[$vmi]; ?>">
                    <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('<?php echo $params->get('img'.$vmi); ?>');">
                        <div class="block-hover"></div>
                        <p class="titleblock" id="titleblock"><?php echo $titleblock[$vmi]; ?></p>
                        <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
                    </div>
                </a>
            <?php } ?>
        </div>
<?php } elseif ($url == '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/8-modulnye-fitingi-deepipe-elements') { ?>
        <!-- Начало блоков в первом блоке -->
        <div class="block-wrapper col-md-12">
		          <a id="ablock0" class="item col-xs-12  col-sm-6  col-md-3" href="http://www.deepipe.ru/advans/files/doc/deepipe_element_link.pdf ">
		            <div class="block-img" id="block0" style="background-image: url('/images/blocks/block1.png');">
		              <div class="block-hover"></div>
		              <p class="titleblock" id="titleblock"><?php echo 'Таблица сборки'; ?></p>
		              <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
		            </div>
		          </a>
		          <a id="ablock1" class="item col-xs-12  col-sm-6  col-md-3" href="http://www.deepipe.ru/advans/files/doc/booklet_3-2-1.pdf
">
		            <div class="block-img" id="block1" style="background-image: url('/images/blocks/block2.png');">
		              <div class="block-hover"></div>
		              <p class="titleblock" id="titleblock"><?php echo 'Общая таблица модульных элементов'; ?></p>
		              <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
		            </div>
		          </a>
            <?php for ($vmi = 2; $vmi < $qtySlides; $vmi++) { ?>
                <a id="<?php echo 'ablock'.$vmi ?>" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/'.$idblock[$vmi].'-'.$aliasblock[$vmi]; ?>">
                    <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('<?php echo $params->get('img'.$vmi); ?>');">
                        <div class="block-hover"></div>
                        <p class="titleblock" id="titleblock"><?php echo $titleblock[$vmi]; ?></p>
                        <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
                    </div>
                </a>
            <?php } ?>
        </div>
    <?php } elseif ($url == '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/9-scw-svarka') { ?>
        <!-- Начало блоков в первом блоке -->
        <div class="block-wrapper col-md-12">
		          <a id="ablock0" class="item col-xs-12  col-sm-6  col-md-3" href="http://www.deepipe.ru/advans/files/doc/deepipe_element_link.pdf ">
		            <div class="block-img" id="block0" style="background-image: url('/images/blocks/block1.png');">
		              <div class="block-hover"></div>
		              <p class="titleblock" id="titleblock"><?php echo 'Таблица сборки'; ?></p>
		              <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
		            </div>
		          </a>
		          <a id="ablock1" class="item col-xs-12  col-sm-6  col-md-3" href="http://www.deepipe.ru/advans/files/doc/booklet_3-2-1.pdf
">
		            <div class="block-img" id="block1" style="background-image: url('/images/blocks/block2.png');">
		              <div class="block-hover"></div>
		              <p class="titleblock" id="titleblock"><?php echo 'Общая таблица модульных элементов'; ?></p>
		              <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
		            </div>
		          </a>
            <?php for ($vmi = 2; $vmi < $qtySlides; $vmi++) { ?>
                <a id="<?php echo 'ablock'.$vmi ?>" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/'.$idblock[$vmi].'-'.$aliasblock[$vmi]; ?>">
                    <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('<?php echo $params->get('img'.$vmi); ?>');">
                        <div class="block-hover"></div>
                        <p class="titleblock" id="titleblock"><?php echo $titleblock[$vmi]; ?></p>
                        <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
                    </div>
                </a>
            <?php } ?>
        </div>
    <?php }  elseif ($url == '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/21-pochemu-deepipe') { ?>
<!-- Начало блоков в первом блоке -->
        <div class="block-wrapper col-md-12">
		          <a id="ablock1" class="item col-xs-12  col-sm-6  col-md-3" href="http://www.deepipe.ru/advans/files/doc/deepipe_element_link.pdf ">
		            <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('/images/blocks/block1.png');">
		              <div class="block-hover"></div>
		              <p class="titleblock" id="titleblock"><?php echo 'Таблица сборки'; ?></p>
		              <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
		            </div>
		          </a>
		          <a id="ablock2" class="item col-xs-12  col-sm-6  col-md-3" href="http://www.deepipe.ru/advans/files/doc/booklet_3-2-1.pdf
">
		            <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('/images/blocks/block2.png');">
		              <div class="block-hover"></div>
		              <p class="titleblock" id="titleblock"><?php echo 'Общая таблица модульных элементов'; ?></p>
		              <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
		            </div>
		          </a>
            <?php for ($vmi = 2; $vmi < $qtySlides; $vmi++) { ?>
                <a id="<?php echo 'ablock'.$vmi ?>" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/'.$idblock[$vmi].'-'.$aliasblock[$vmi]; ?>">
                    <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('<?php echo $params->get('img'.$vmi); ?>');">
                        <div class="block-hover"></div>
                        <p class="titleblock" id="titleblock"><?php echo $titleblock[$vmi]; ?></p>
                        <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
                    </div>
                </a>
            <?php } ?>
        </div>
<?php } elseif ($url == '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/7-kompozitnye-metallopolimernye-truby-deepipe-composite') { ?>
      <!-- Начало блоков в первом блоке -->
      <div class="block-wrapper col-md-12">
        <?php for ($vmi = 0; $vmi < $qtySlides; $vmi++) { ?>
          <a id="<?php echo 'ablock'.$vmi ?>" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo '/svarnye-metallopolimernye-truby-i-fitingi-deepipe/'.$idblock[$vmi].'-'.$aliasblock[$vmi]; ?>">
            <div class="block-img" id="<?php echo 'block'.$vmi ?>" style="background-image: url('<?php echo $params->get('img'.$vmi); ?>');">
              <div class="block-hover"></div>
              <p class="titleblock" id="titleblock"><?php echo $titleblock[$vmi]; ?></p>
              <p class="introtext" id="introtext"><?php echo $introtext[$vmi]; ?></p>
            </div>
          </a>
        <?php } ?>
      </div>
    <?php } else { ?>
    <!-- Начало блоков на главной -->
    <div class="block-wrapper col-md-12">
        <?php for ($i = 0; $i < $qtySlides; $i++) { ?>
            <a id="<?php echo 'ablock'.$i ?>" class="item col-xs-12  col-sm-6  col-md-3" href="<?php echo $params->get('url'.$i); ?>">
                <div class="block-img" id="<?php echo 'block'.$i ?>" style="background-image: url('<?php echo $params->get('img'.$i); ?>');">
                    <div class="block-hover"></div>
                    <p class="titleblock"><?php echo $params->get('txt'.$i); ?></p>
                </div>
            </a>
        <?php } ?>
    </div>
<?php } ?>
