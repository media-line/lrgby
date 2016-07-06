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
$document =& JFactory::getDocument();
$document->addStyleSheet('modules/mod_blocks_ra/tmpl/css/mod_blocks.css');

//задаем количество блоков в модуле
$qtySlides = 4;

?>

<div class="block-wrapper">
	<?php for ($i = 1; $i <= $qtySlides; $i++) { ?>
			<div class="item  col-md-3" id="<?php echo 'block'.$i ?>">
				<p><?php echo $params->get('txt'.$i); ?></p>
				<img src="<?php echo $params->get('img'.$i); ?>" alt="">
			</div>
	<?php } ?>
</div>