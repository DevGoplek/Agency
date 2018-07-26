
<?php
include_once 'globals.php';
include_once 'util/fragment_helpers.php';
include_once 'util/get_images.php';

// region cover
$cover_section = find_page_by_guid($cover_guid, $root_pages);
// endregion

// region us
$us_section = find_page_by_guid($us_guid, $root_pages);
// endregion

//region services
$services_section = find_page_by_guid($services_guid, $root_pages);
$result = Page::search(array(
    'idparent'  => $services_section->idpage,
    'fragments' => array('desc','title'),
    'sortBy'    => 'created ASC'
));
$services_child = $result['records'];
// endregion

//region row
$row_section = find_page_by_guid($row_guid, $root_pages);
$result = Page::search(array(
    'idparent'  => $row_section->idpage,
    'fragments' => array('desc','stat'),
    'sortBy'    => 'created ASC'
));
$row_child = $result['records'];
// endregion

//region products
$products_section = find_page_by_guid($products_guid, $root_pages);
$result = Page::search(array(
    'idparent'  => $products_section->idpage,
    'fragments' => array('img'),
    'sortBy'    => 'created ASC'
));
$products_child = $result['records'];
// endregion

//region list
$list_section = find_page_by_guid($list_guid, $root_pages);
$result = Page::search(array(
    'idparent'  => $products_section->idpage,
    'fragments' => array('item'),
    'sortBy'    => 'created ASC'
));
$list_child = $result['records'];
// endregion

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" itemscope itemtype="http://schema.org/Thing" lang="es-MX">
    <head>
        <?php include_once 'partials/head.php'; ?>
    </head>
    <body>

        <!-- Navigation -->
        <?php include_once 'partials/navigation.php'; ?>
        <!-- Outer wrapper -->
        <div class="outer-wrapper">
            <!-- Outer wrapper -->

            <section class="block cover"  id="cover" >
                <?php
                $image_attrs= Fragment::elementAttributes($cover_section->fragments['background']->value);
                $src = $image_attrs['src']; ?>
                        <div class="content  callout large"style="background: url('<?=$src?>')">
                            <div class="row column text-center">
                                <h1><?= $cover_section->fragments['title']->value?></h1>
                                <p class="lead"><?= $cover_section->fragments['desc']->value?></p>
                                <a href="#" class="button large">Learn More</a>
                                <a href="#" class="button large hollow">Learn Less</a>
                            </div>
                        </div>

            </section>

            <article class="grid-container">
                <!-- Block Us -->
                <section class="block us" id="nosotros">
                    <?php
                    $image_attrs= Fragment::elementAttributes($us_section->fragments['img']->value);
                    $src = $image_attrs['src']; ?>
                    <div class="grid-x grid-margin-x">
                            <div class="medium-6 cell small-order-2 medium-order-1">
                                <!-- Block Header -->
                                <h2><?= $us_section->fragments['title']->value?></h2>
                                <p><?= $us_section->fragments['desc']->value?></p>
                            </div>
                            <div class="content medium-6 cell small-order-1 medium-order-2">
                                <!-- Block Content -->
                                <img class="thumbnail" src="<?=$src?>">
                            </div>
                    </div>
                </section>
                <!-- /. -->

                <!-- Block  -->
                <section class="block " id="">
                    <div class="grid-x grid-margin-x">
                        <?php
                        foreach($services_child as $page){
                        ?>
                            <div class="medium-4 cell">
                                <h3><?= $page->fragments['title']->value?></h3>
                                <p><?= $page->fragments['desc']->value?></p>
                            </div>
                       <?php }?>
                    </div>
                </section>
                <!-- /. -->
                <hr>

                <section class="block " id="">
                    <div class="row column">
                        <ul class="vertical medium-horizontal menu expanded text-center">
                            <?php
                            foreach($row_child as $page){
                            ?>
                                <li><a href="#"><div class="stat"><?= $page->fragments['stat']->value?></div><span><?= $page->fragments['desc']->value?></span></a></li>
                            <?php }?>
                        </ul>
                    </div>
                </section>
                <hr>
                <!-- Block  -->
                <section class="block " id="">
                    <div class="header">
                        <div class="row column">
                            <h3><?= $products_section->fragments['title']->value?></h3>
                        </div>
                    </div>
                    <div class="content">
                        <div class="grid-x grid-margin-x medium-up-3 large-up-4">
                            <?php
                            foreach($products_child as $page){
                                $image_attrs= Fragment::elementAttributes($page ->fragments['img']->value);
                                $src = $image_attrs['src'];
                            ?>
                                <div class="cell">
                                    <img class="thumbnail" src="<?=$src?>">
                                </div>
                            <?php }?>
                        </div>
                    </div>
                </section>
                <!-- /. -->
                <hr>
            </article>
            <article class="grid-container">
                <div class="row column">
                    <ul class="menu">
                        <?php
                        foreach($list_child as $page){
                        ?>
                        <li><a href="#"><?=$page->fragments['item']->value?></a></li>
                        <?php } ?>
                    </ul>
                </div>
            </article>
            <!-- Block Contact -->
            <section class="block contact" id="contacto">
                <div class="grid-x grid-margin-x">
                    <div class="medium-6 cell">
                        <h3>Contact Me</h3>
                        <p>Vivamus hendrerit arcu sed erat molestie vehicula. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse dictum feugiat nisl ut dapibus. Mauris iaculis porttitor.</p>
                        <ul class="menu">
                            <li><a href="#">Dribbble</a></li>
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Yo</a></li>
                        </ul>
                    </div>
                    <div class="medium-6 cell">
                        <label>Name
                            <input type="text" placeholder="Name">
                        </label>
                        <label>Email
                            <input type="text" placeholder="Email">
                        </label>
                        <label>
                            Message
                            <textarea placeholder="holla at a designer"></textarea>
                        </label>
                        <input type="submit" class="button expanded" value="Submit">
                    </div>
                </div>
            </section>
            <!-- /.Contact -->

            <!-- Footer -->

            <?php include_once 'partials/footer.php'; ?>
        </div>

        <?php include_once 'partials/scripts.php'; ?>

    </body>
</html>
