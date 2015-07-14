<?php

/**
 * Created by PhpStorm.
 * User: xlin
 * Date: 14/07/15
 * Time: 11:01 PM
 */
class PowerPlan extends DataObject {

    private static $db = array(
        'Name' => 'Varchar(50)',
        'Name_cn' => 'Varchar(50)',
        'DailyCharge' => 'Currency',
        'Rate' => 'Currency',
        'RateWithGas' => 'Currency',
        'GST' => 'Percentage',
        'PPD' => 'Percentage',
        'Special' => 'Text',
        'Special_cn' => 'Text'
    );

    private static $has_one = array(
        'Area' => 'Area',
        'Company' => 'Company'
    );
}