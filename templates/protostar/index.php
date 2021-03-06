<?php
    /**
     * @package     Joomla.Site
     * @subpackage  Templates.protostar
     *
     * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
     * @license     GNU General Public License version 2 or later; see LICENSE.txt
     */

    defined('_JEXEC') or die;

    $app             = JFactory::getApplication();
    $doc             = JFactory::getDocument();
    $user            = JFactory::getUser();
    $this->language  = $doc->language;
    $this->direction = $doc->direction;

    // Getting params from template
    $params = $app->getTemplate(true)->params;

    // Detecting Active Variables
    $option   = $app->input->getCmd('option', '');
    $view     = $app->input->getCmd('view', '');
    $layout   = $app->input->getCmd('layout', '');
    $task     = $app->input->getCmd('task', '');
    $itemid   = $app->input->getCmd('Itemid', '');
    $sitename = $app->get('sitename');

    // Output as HTML5
    $doc->setHtml5(true);

    if($task == "edit" || $layout == "form" )
    {
        $fullWidth = 1;
    }
    else
    {
        $fullWidth = 0;
    }

    // Logo file or site title param
    if ($this->params->get('logoFile'))
    {
        $logo = '<img src="' . JUri::root() . $this->params->get('logoFile') . '" alt="' . $sitename . '" />';
    }
    elseif ($this->params->get('sitetitle'))
    {
        $logo = '<span class="site-title" title="' . $sitename . '">' . htmlspecialchars($this->params->get('sitetitle')) . '</span>';
    }
    else
    {
        $logo = '<span class="site-title" title="' . $sitename . '">' . $sitename . '</span>';
    }

$menu = JSite::getMenu();

$active = $menu->getActive();

$active_pageclass_sfx = '';

if (is_object($active)){

    $active_pageclass_sfx = $active->params->get('pageclass_sfx');

}

    ?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
    	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<jdoc:include type="head" />

	<!-- Bootstrap -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<?php // Use of Google Font ?>
	<?php if ($this->params->get('googleFont')) : ?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->params->get('googleFontName'); ?>' rel='stylesheet' type='text/css' />
		<style type="text/css">
			h1,h2,h3,h4,h5,h6,.site-title{
				font-family: '<?php echo str_replace('+', ' ', $this->params->get('googleFontName')); ?>', sans-serif;
			}
		</style>
	<?php endif; ?>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:200,400,600,800&subset=cyrillic" rel="stylesheet">

    <!--[if lt IE 9]>
		<script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script>
	<![endif]-->

	<!-- CSS -->
	<link rel="stylesheet" href="/templates/protostar/css/template.css">
</head>

<body class="body<?php echo $active_pageclass_sfx; ?>">
	<div class="container">

		<div class="row  header">
			<div class="name  col-xs-12  col-md-6  col-md-push-3">
				<a href="<?php echo $this->baseurl; ?>/">
						<?php echo $logo;?>
                </a>
			</div>

			<div class="phone  col-xs-12  col-sm-8  col-md-3  col-md-pull-6">
				<jdoc:include type="modules" name="phone" style="none" />
			</div>

			<div class="logo  hidden-xs  col-sm-4  col-md-3">
                <a href="<?php echo $this->baseurl; ?>/">
						<img class="img-responsive" src="/images/logo.png" />
                </a>
            </div>
		</div>

        <div class="row  content">
            <div>
				            <?php
				            $app = JFactory::getApplication();
				            $menu = $app->getMenu();
				            if ($menu->getActive() != $menu->getDefault())
				            {
				             echo '   <jdoc:include type="modules" name="position-2" style="xhtml" /> <jdoc:include type="component" />';
		            } ?>

		                  <jdoc:include type="modules" name="sqr-block" style="xhtml" />

            </div>
        </div>
        <div class="clearfix"></div>

		<div class="row  footer">
			<div class="hidden-xs  col-sm-4  col-md-3  inform">
                <iframe src="http://www.nbrb.by/publications/wmastersd.asp?
lnkcolor=Maroon&amp;bgcolor=e6e6dc&amp;brdcolor=dcdccd" scrolling="no" width="260" height="86" frameborder="0">
</iframe>
            </div>

			<div class="col-sm-3  col-md-3  contacts">
                <jdoc:include type="modules" name="foot-contact" style="none" />
            </div>

			<div class="col-sm-5  col-md-6  copyright">
                <p>Разработка сайта - <a href="http://www.medialine.by" target="_blank">Медиа Лайн</a></p>
            </div>
		</div>

	</div>

<div class="main-menu  hidden-xs  hidden-sm">
    <jdoc:include type="modules" name="main-menu" style="none" />
</div>
</body>
</html>