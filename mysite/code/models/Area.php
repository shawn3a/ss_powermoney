<?php

/**
 * Created by PhpStorm.
 * User: xlin
 * Date: 14/07/15
 * Time: 11:05 PM
 */
class Area extends DataObject {

    private static $db = array(
        'Name' => 'Varchar(20)',
        'Name_cn' => 'Varchar(20)',
    );

    private static $has_many = array(
        'PowerPlans' => 'PowerPlan',
        'Suburbs' => 'Suburb'
    );

    public function canView($member=null) {
        return true;
    }

    public function canEdit($member=null) {
        return true;
    }

    public function canDelete($member=null) {
        return true;
    }

    public function canCreate($member=null) {
        return true;
    }
}