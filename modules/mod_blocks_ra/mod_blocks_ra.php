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

?>

<!-- включаем слайдер только на главной странице -->
<?php
$app = JFactory::getApplication();
$menu = $app->getMenu();
if ($menu->getActive() == $menu->getDefault())
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

<?php } ?>


<!-- Начало блоков -->
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