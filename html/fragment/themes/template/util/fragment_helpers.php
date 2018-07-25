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
 * Portfolio GUID
 */
$portfolio_guid = 'Q_W5amrXij';


/*
 * Contact GUID
 */
$contact_guid = '7DyzZP31Jq';


/*
 * Foot GUID
 */
$foot_guid = '1zC_4s8H3Y';


/*
 * Account GUID
 */
$account_guid = '5uL89C3LEv';

/*
 * Artisticas GUID
 */
$artisticas_guid = '2jPMi9PZD9';

/*
 * Clients GUID
 */
$clients_guid = 'mL88nDx-jM';


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
        'heading',
        'intro',
        'body',
        'intro-title',
        'intro-body',
        'rights-text'
    ),
    'sortBy'    => 'created ASC'
));

$root_pages = $result['records'];
