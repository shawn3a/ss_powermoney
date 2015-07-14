<?php

/**
 * Created by PhpStorm.
 * User: xlin
 * Date: 14/07/15
 * Time: 11:05 PM
 */
class GasPlan extends DataObject {

    private static $db = array(
        'Name' => 'Varchar(50)',
        'Name_cn' => 'Varchar(50)',
        'DailyCharge' => 'Currency',
        'Rate' => 'Currency',
        'GST' => 'Percentage',
        'PPD' => 'Percentage'
    );

    private static $has_one = array(
        'Company' => 'Company'
    );
}