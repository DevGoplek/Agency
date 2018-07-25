<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><?= SITE_NAME ?></title>
<meta name="description" content="<?= SITE_DESCRIPTION ?>">
<meta name="keywords" content="<?= SITE_KEYWORDS ?>">
<meta name="author" content="Goplek">
<!--<meta name="robots" content="INDEX, FOLLOW, ARCHIVE">-->
<meta name="robots" content="NOINDEX, NOFOLLOW, NOARCHIVE">

<!-- Href lang -->
<link rel="alternate" hreflang="es" href="<?= SITE_URL ?>" />

<!-- Favicons -->
<link rel="icon" href="<?= FAVICONS_PATH ?>favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" sizes="72x72" href="<?= FAVICONS_PATH ?>apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="<?= FAVICONS_PATH ?>apple-touch-icon-114x114.png">

<!-- Schema properties -->
<meta itemprop="name" content="<?= SITE_NAME ?>">
<meta itemprop="description" content="<?= SITE_DESCRIPTION ?>">
<meta itemprop="url" content="<?= SITE_URL ?>">
<meta itemprop="image" content="<?= SITE_SOCIAL_IMAGE ?>">

<!-- Open Graph properties -->
<!-- <meta property="fb:app_id" content="app-id"> -->
<meta property="og:site_name" content="<?= SITE_NAME ?>">
<meta property="og:title" content="<?= SITE_NAME ?>">
<meta property="og:description" content="<?= SITE_DESCRIPTION ?>">
<meta property="og:url" content="<?= SITE_URL ?>">
<meta property="og:image" content="<?= SITE_SOCIAL_IMAGE ?>">
<meta property="og:type" content="website">

<!-- Twitter integration -->
<meta name="twitter:title" content="<?= SITE_NAME ?>">
<meta name="twitter:url" content="<?= SITE_URL ?>">
<meta name="twitter:image" content="<?= SITE_SOCIAL_IMAGE ?>">
<meta name="twitter:card" content="summary">

<!-- Sets whether a web application runs in full-screen mode. -->
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Chrome, Firefox OS and Opera -->
<meta name="theme-color" content="#f1f1f1">
<!-- Windows Phone -->
<meta name="msapplication-navbutton-color" content="#f1f1f1">
<!-- iOS Safari -->
<meta name="apple-mobile-web-app-capable" content="yes">
<!-- <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"> -->

<!-- Disable automatic detection of possible phone numbers in a webpage in Safari on iOS. -->
<meta name="format-detection" content="telephone=no">

<?php include_once "styles.php"; ?>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Google Analytics -->
<!-- <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-XXXXX-X', 'auto');
    ga('send', 'pageview');
</script> -->