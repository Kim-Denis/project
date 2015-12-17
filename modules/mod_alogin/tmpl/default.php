<?php // no direct access 07/06/2010 19.56
defined('_JEXEC') or die('Restricted access'); ?>


<?php if($type == 'logout') : ?>
<form action="index.php" method="post" name="login" id="form-login">
<?php if ($params->get('greeting')) : ?>
	<div><?php echo JText::sprintf( 'HINAME', $user->get('name') ); ?></div>
<?php endif; ?>
	<div align="center">
		<input type="submit" name="Submit" class="button" value="<?php echo JText::_( 'BUTTON_LOGOUT'); ?>" />
	</div>

	<input type="hidden" name="option" value="com_auser" />
	<input type="hidden" name="task" value="logout" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
</form>
<?php else : 
$langScript = 	'var desc = new Array();'.
			' desc[0] = \''.JText::_( 'FREQUIRED' ).'\';'.
		  ' desc[1] = \''.JText::_( 'FALPHA' ).'\';'.
			' desc[2] = \''.JText::_( 'FALPHANUM' ).'\';'.
			' desc[3] = \''.JText::_( 'FNODIGIT' ).'\';'.
			' desc[4] = \''.JText::_( 'FDIGIT' ).'\';'.
			' desc[5] = \''.JText::_( 'FDIGITMIN' ).'\';'.
			' desc[6] = \''.JText::_( 'FDIGITLTD' ).'\';'.
		  ' desc[7] = \''.JText::_( 'FNUMBER' ).'\';'.
			' desc[8] = \''.JText::_( 'FEMAIL' ).'\';'.
			' desc[9] = \''.JText::_( 'FPHONE' ).'\';'.
			' desc[10] = \''.JText::_( 'FURL' ).'\';'.
			' desc[11] = \''.JText::_( 'FCONFIRM' ).'\';'.
			' desc[12] = \''.JText::_( 'FDIFFERS' ).'\';'.
			' desc[13] = \''.JText::_( 'FLENGTH_STR' ).'\';'.
			' desc[14] = \''.JText::_( 'FLENGTHMAX' ).'\';'.
			' desc[15] = \''.JText::_( 'FLENGTHMIN' ).'\';'.
			' desc[16] = \''.JText::_( 'FCHECKBOX' ).'\';'.
			' desc[17] = \''.JText::_( 'FRADIOS' ).'\';'.
			' desc[18] = \''.JText::_( 'FSELECT' ).'\';';
		$document = &JFactory::getDocument();
		$document->addScriptDeclaration( $langScript );
    $link_url    = JURI::base().'components/com_auser/';
    JHTML::script('formcheck.js', $link_url, true);    
    JHTML::stylesheet('formcheck.css', $link_url, null);
?>    
<script>

window.addEvent('domready', function(){

	check = new FormCheck('form-login', {
					display : {
						errorsLocation : 3,
						showErrors :1,
            indicateErrors : 2         												
					},
					alerts : {
      			required : desc[0], 
      			alpha    : desc[1], 
      			alphanum : desc[2], 
      			nodigit  : desc[3], 
      			digit    : desc[4], 
      			digitmin : desc[5], 
      			digitltd : desc[6], 
      			number   : desc[7], 
      			email    : desc[8], 
      			phone    : desc[9], 
      			URL      : desc[10],
      			confirm  : desc[11],
      			differs  : desc[12],
      			length   : desc[13],
      			lengthmax: desc[14],
      			lengthmin: desc[15],
      			Checkbox : desc[16],
      			radios   : desc[17],
      			select   : desc[18] 
				}
			})

	
});

window.addEvent("domready",function(){

            var fx=new Fx.Style($("console-login-module-username"), "background-color", {duration:2000});
            $("modlgn_username").addEvent("change",function(){
            	
            	if ($('modlgn_username').value.length > 2){
            		                            
              $("console-login-module-username").empty().addClass("ajax-loading");
                var url="index.php?option=com_auser&format=raw&task=chkUsername&from=login&username="+this.getValue()
                var a=new Ajax(url,{
                    method:"get",
                    onComplete: function(response){
                        var resp=Json.evaluate(response);
                        if (resp.msg==='false'){
                         $("modlgn_username").value='';
                         $("modlgn_username").focus();
                        }
                        $("console-login-module-username").removeClass("ajax-loading").setHTML(resp.html);
                 
                        $("console-login-module-username").setHTML(resp.html);
                      
                    }
                }).request();
              } //la if  
            });
          //
          $("modlgn_passwd").addEvent("change",function(){
            	
            if (($('modlgn_passwd').value.length > 2) && ($('modlgn_username').value.length > 2)){
            		                            
              $("console-login-module-password").empty().addClass("ajax-loading");
                var url="index.php?option=com_auser&format=raw&task=chkUserpsw&from=login&username="+$('modlgn_username').value+"&password="+$('modlgn_passwd').value
                 var a1=new Ajax(url,{
                    method:"get",
                    onComplete: function(response){
                        var resp=Json.evaluate(response);
                        if (resp.msg==='false'){
                         $("modlgn_passwd").value='';
                         $("modlgn_passwd").focus();
                        }
                        $("console-login-module-password").removeClass("ajax-loading").setHTML(resp.html);
                 
                        $("console-login-module-password").setHTML(resp.html);
                      
                    }
                }).request();
              } //la if  
            });
          //
        });
      
        /**/
        

</script>		
<?php if(JPluginHelper::isEnabled('authentication', 'openid')) :
		$lang->load( 'plg_authentication_openid', JPATH_ADMINISTRATOR );
		$langScript = 	'var JLanguage = {};'.
						' JLanguage.WHAT_IS_OPENID = \''.JText::_( 'WHAT_IS_OPENID' ).'\';'.
						' JLanguage.LOGIN_WITH_OPENID = \''.JText::_( 'LOGIN_WITH_OPENID' ).'\';'.
						' JLanguage.NORMAL_LOGIN = \''.JText::_( 'NORMAL_LOGIN' ).'\';'.
						' var modlogin = 1;';
		$document = &JFactory::getDocument();
		$document->addScriptDeclaration( $langScript );
		JHTML::_('script', 'openid.js');

 

endif; ?>
<form action="<?php echo JRoute::_( 'index.php', true, $params->get('usesecure')); ?>" method="post" name="login" id="form-login" >
	<?php echo $params->get('pretext'); ?>
	
	<p id="form-login-username">
		<label for="modlgn_username"><?php echo JText::_('Username') ?></label><br />
		<input id="modlgn_username" type="text" name="username" class="validate['required','alphanum','length[3,-1]']" alt="username" size="18" />
		<div  id="console-login-module-username"> 
    </div>
	</p>
	<p id="form-login-password">
		<label for="modlgn_passwd"><?php echo JText::_('Password') ?></label><br />
		<input id="modlgn_passwd" type="password" name="passwd" class="validate['required','alphanum','length[3,-1]']" size="18" alt="password" />
		<div  id="console-login-module-password"> 
    </div>
	</p>
	<?php if(JPluginHelper::isEnabled('system', 'remember')) : ?>
	<p id="form-login-remember">
		<label for="modlgn_remember"><?php echo JText::_('Remember me') ?></label>
		<input id="modlgn_remember" type="checkbox" name="remember" class="inputbox" value="yes" alt="Remember Me" />
	</p>
	<?php endif; ?>
	<?php if(JPluginHelper::isEnabled('alikonweb', 'alikonweb.captchabot')) : ?>
	<?php if ($params->get('usesecureform')) : ?>
	<?php if	(JRequest::getCmd('option')!='com_auser'): ?>
    
			 <p id="com-form-login-secure">						
			<?php	
			//  echo 'default form';
			 jimport( 'joomla.plugin.plugin' );
			 global $mainframe;
			 JPluginHelper::importPlugin( 'alikonweb' );
			 $dispatcher =& JDispatcher::getInstance();			 
			 $results = $dispatcher->trigger( 'onView',array('mod' ) );			
			?>			
	  	
	  	</p>
	<?php endif; ?>
	<?php endif; ?>
	<?php endif; ?>
	<input id="manda" type="submit" name="Submit" class="button" value="<?php echo JText::_('LOGIN') ?>" />

	<ul>
		<li>
			<a href="<?php echo JRoute::_( 'index.php?option=com_auser&view=reset' ); ?>">
			<?php echo JText::_('FORGOT_YOUR_PASSWORD'); ?></a>
		</li>
		<li>
			<a href="<?php echo JRoute::_( 'index.php?option=com_auser&view=remind' ); ?>">
			<?php echo JText::_('FORGOT_YOUR_USERNAME'); ?></a>
		</li>
		<?php
		$usersConfig = &JComponentHelper::getParams( 'com_auser' );
		if ($usersConfig->get('allowUserRegistration')) : ?>
		<li>
			<a href="<?php echo JRoute::_( 'index.php?option=com_auser&view=register' ); ?>">
				<?php echo JText::_('REGISTER'); ?></a>
		</li>
		<?php endif; ?>
	</ul>
	<?php echo $params->get('posttext'); ?>
  <input type="hidden" name="override" value="<?php echo intval($params->get('usesecureform'))+1; ?>" />
	<input type="hidden" name="option" value="com_auser" />
	<input type="hidden" name="task" value="login" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
<?php endif; ?>