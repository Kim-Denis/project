<?php

// no direct access
defined('_JEXEC') or die('Go Away');

$moneyb_email       = $params->get('moneyb_email');
$moneyb_notif       = $params->get('moneyb_notif');
$moneybcur_val      = $params->get('moneybcur_val');
$logo               = $params->get('logo');
$logo_on            = $params->get('logo_on');
$logowidth          = $params->get('logowidth');
$logoheight         = $params->get('logoheight');
$moneybval_button   = $params->get('moneybval_button');
$moneyb_amount   = $params->get('moneyb_amount');
$moneyb_description = $params->get('moneyb_description');

echo "<div id=\"moneyb_logo\">";
if ($logo_on == 0) {
  echo "<img src=\"$logo\" width=\"".$logowidth."\" height=\"".$logoheight."\" alt=\"MoneyBookers\" />";
}
elseif ($logo_on == 1) {
  echo $logo;
}
echo "</div>\n";
echo $moneybcur_val." ".$moneyb_amount;
echo "<form action=\"https://www.moneybookers.com/app/payment.pl\" method=\"post\"  target=\"_blank\">";
echo "<input type=\"hidden\" name=\"pay_to_email\" value=\"".$moneyb_email."\"/>";
echo "<input type=\"hidden\" name=\"status_url\" value=\"".$moneyb_email."\"/>";
echo "<input type=\"hidden\" name=\"language\" value=\"EN\"/>";
echo "<input type=\"hidden\" name=\"amount\" value=\"".$moneyb_amount."\"/>";
echo "<input type=\"hidden\" name=\"currency\" value=\"".$moneybcur_val."\"/>";
echo "<input type=\"hidden\" name=\"detail1_description\" value=\"".$moneyb_description."\"/>";
echo "<input type=\"hidden\" name=\"detail1_text\" value=\"".$moneyb_description."\"/>";
echo "<input type=\"submit\" value=\"".$moneybval_button."\"/>";

echo "</form>";

if ($params->get('link') == 1)
{
?>   
echo "<a href=\"http://www.dart-creations.com\" style=\"font-size:1px;display:none;\">DC MoneyBookers Joomla Payment Module</a>";
<?php
}
?>