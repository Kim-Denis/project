<?php
/**
* @version		$Id: mod_alogin.php 07/06/2010 19.53
* @package		Joomla - Auser Manager
* @copyright	Copyright (C) 2005 - 2009 Alikonweb.it All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

$params->def('greeting', 1);

$type 	= modaLoginHelper::getType();
$return	= modaLoginHelper::getReturnURL($params, $type);

$user =& JFactory::getUser();

require(JModuleHelper::getLayoutPath('mod_alogin'));