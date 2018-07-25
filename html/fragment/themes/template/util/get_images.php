<?php
/**
 * Created by PhpStorm.
 * User: developergoplek
 * Date: 28/02/18
 * Time: 9:53 AM
 */

// Include Fragment.
include_once "../../../latte/releases/fragment/support/actions/fragment_init.php";

/**
 * Get images with filters and paginated.
 * @param array<number> $categories
 * @return array<String>
 * @throws Exception
 */
function get_images($categories = array(432, 433, 434)) {
    $options = array();

    $options['idparent'] = $categories;
    $options['fragments'] = array('galeria');

    $result = Page::search( $options );
    $records = $result['records'];
    $images = array();

    foreach ($records as $record) {
        $fragments = $record->fragments;

        if (is_array($fragments) && count($fragments) > 0) {
            $newImages = array();

            // Add portrait images.
            if (isset($fragments['galeria'])) {
                $newImages = array_merge($newImages, Fragment::findTagsIn('img', $fragments['galeria']->value));
            }


            // Add category to images tag.
            foreach ($newImages as $img) {
                array_push($images, preg_replace('/(<img\b[^<>]*)>/i', '$1 data-category="' . $record->key . '">', $img));
            }

        }
    }

    return $images;
}

