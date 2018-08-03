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
$cover_guid = 'B6GifS7Pd9';


/*
 * Us GUID
 */
$us_guid = 'A4OBWlZM3z';


/*
 * Services GUID
 */
$services_guid = '4q408dMdBJ';

/*
 * Row GUID
 */
$row_guid = 'LOv1Eth8Jv';

/*
 * Products GUID
 */
$products_guid = '0ERS-J3b7d';

/*
 * List GUID
 */
$list_guid = "jUOtN-x2OX";
/*
 * Contact GUID
 */
$contact_guid = 'OMU72XLyBC';

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

