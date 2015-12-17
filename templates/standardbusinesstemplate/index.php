<?php defined( '_JEXEC' ) or die( 'Restricted access' ); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >

<head>
    <jdoc:include type="head" />
    <?php require("head_includes.php"); ?>
</head>

<body>
    <div id="wrapper"><div class="inner">
        <div id="sl"><div id="sr"><div id="display"><div class="inner">
        
        <div id="top"><div class="inner">
            <div id="header"><div class="inner">
                <div id="logo"><div class="inner"></div></div>
                <div id="date"><div class="inner"><?php echo $tag, $monate[$monat],"&nbsp;", $jahr; ?></div></div>
            </div></div>
            <div class="clear"></div>
            <?php if($this->countModules('user3')) : ?>
            <div id="user3"><div class="inner"><jdoc:include type="modules" name="user3" style="xhtml" /></div></div>
            <?php endif; ?>
        </div></div>
        
        <div id="middle"><div class="inner">
            <div id="left"><div class="inner"><jdoc:include type="modules" name="left" style="xhtml" /></div></div>
             
            <div id="main"><div class="inner">
            <div id="banner<?php echo $bannerheight; ?>"><div class="inner"><div id="banner<?php echo $bannerheight; ?>_in">
            	  <?php if($this->countModules('newsflash')) : ?>                      
                      <div id="newsflash_out"><div id="newsflash"><div class="inner"><jdoc:include type="modules" name="newsflash" style="xhtml" />
                      </div></div></div>
                  <?php endif; ?>
            </div></div></div>
            <?php if($this->countModules('right')) : ?>
            <div id="right"><div class="inner">
            	<jdoc:include type="modules" name="right" style="xhtml" />
            </div></div>
            <?php endif; ?>
            <div class="componentheading"><?php echo $pTitle; ?></div>
            <div id="component<?php echo $contentwidth; ?>"><div class="inner">
            	<jdoc:include type="component" />
            </div></div>
            <div class="clear"></div>
            </div></div>
        </div></div>
        <div class="clear"></div>
        <div id="bottom"><div class="inner">
        <?php if($this->countModules('footer')) : ?>
        <div id="footer"><div class="inner"><jdoc:include type="modules" name="footer" style="xhtml" /></div></div>
        <?php endif; ?>
        <div id="copy"><div class="inner">Template by <a href="http://www.impisi.de">impisi</a></div></div>
        </div></div>
        
        
        
        </div></div></div></div>
    </div></div>
</body>
</html>
