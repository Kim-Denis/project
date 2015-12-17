<meta http-equiv="Content-Type" content="text/html; <?php echo _ISO; ?>" />
<link href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template?>/css/template.css" rel="stylesheet" type="text/css" />
<style type="text/css">
* html #main, * html #component, * html #left { height: 1%; }
</style>
<?php 
$monate = array(
				1=>"Januar",
				2=>"Februar",
				3=>"M&auml;rz",
				4=>"April",
				5=>"Mai",
				6=>"Juni",
				7=>"Juli",
				8=>"August",
				9=>"September",
				10=>"Oktober",
				11=>"November",
				12=>"Dezember"
				);
				$tag = date("j.");
				$monat = date("n");
                $jahr = date("Y");
?>

<?php 
if(!$this->countModules("newsflash")){ $bannerheight="48";}
if($this->countModules("newsflash")){ $bannerheight="250";}
if(!$this->countModules("right")){ $contentwidth="sin";}
if($this->countModules("right")){ $contentwidth="con";}
?>
<?
global $mainframe;
$pTitle =  $mainframe->getPageTitle();
?>
<!--copy
author:Wolf Schleevoigt
mail:ich@impisi.de
url:http://www.impisi.de
-->