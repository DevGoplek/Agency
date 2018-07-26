<?php
/**
 * Created by PhpStorm.
 * User: developergoplek
 * Date: 31/07/17
 * Time: 18:35
 */

// ---------------------------------------------------------------------
// | Global Variables                                                   |
// ---------------------------------------------------------------------

/*
 * Root Id
 */
$root_id = 0;


/*
 * Home GUID
 */
$home_guid = 'home';


/*
 * Cover GUID
 */
$cover_guid = 'ypwMvarfAx';


/*
 * Us GUID
 */
$us_guid = 's3t6CaVWem';


/*
 * Services GUID
 */
$services_guid = 'yUC1gA5hw3';

/*
 * Row GUID
 */
$row_guid = 'NPqI6eLV2e';

/*
 * Products GUID
 */
$products_guid = 'HjA9dlccKM';

/*
 * List GUID
 */
$list_guid = "3cnyUXjvyY";
/*
 * Contact GUID
 */
$contact_guid = 'u_Iimwg2_2';

// ---------------------------------------------------------------------
// | Fragment Helpers                                                   |
// ---------------------------------------------------------------------

/**
 * Find page by guid.
 * @param {string} $guid
 * @param {Array<Page>} $pages
 * @returns Page|null
 */
function find_page_by_guid($guid, $pages) {
    foreach ($pages as $page) {
        if ($guid === $page->guid)
            return $page;
    }

    return null;
}


/**
 * Find fragments by name.
 * @param $name
 * @param $fragments
 * @return Fragment
 */
function find_fragment_by_name($name, $fragments) {
    foreach ($fragments as $fragment) {
        if ($name === $fragment->name)
            return $fragment;
    }

    return null;
}


/**
 * Find setting by name.
 * @param $name
 * @param $settings
 * @return Setting
 */
function find_setting_by_name($name, $settings) {
    foreach ($settings as $setting) {
        if ($name === $setting->name)
            return $setting;
    }

    return null;
}



/**
 * Get an image tag in string state.
 * @param $image
 * @return string
 */
function get_original_image($image) {
    if ($image) {
        $attrs = Fragment::elementAttributes($image);

        return "<img src='" . $attrs['data-image-original'] . "' alt='' />";
    }

    return "";
}


/**
 * Determine if current page is home.
 * @return boolean
 */
function is_home() {
    global $page, $home_guid;

    return $page->guid === $home_guid;
}


// ---------------------------------------------------------------------
// | Common variables used                                              |
// ---------------------------------------------------------------------

if ($page instanceof Page)
    $is_home = $page->guid === $home_guid;


// ---------------------------------------------------------------------
// | Common pages used                                                  |
// ---------------------------------------------------------------------


// Retrieve root pages.
$result = Page::search(array(
    'idparent'  => $root_id,
    'fragments' => array(
        'img',
        'background',
        'title',
        'desc',
        'stat'
    ),
    'sortBy'    => 'created ASC'
));

$root_pages = $result['records'];
