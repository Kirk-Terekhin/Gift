<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/modal.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/jquery.jbcallme.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.jbcallme.min.js"></script>
<script type="text/javascript">
	$(function() {
    $('.z_order').jbcallme({
        postfix: 'service_order', // идентификатор окна
        // поля tel и name установлены по-умолчанию. Отключаются добавлением no_tel:true и no_name:true
        //no_tel: true, // не выводить стандартное поле телефона
        no_name: true,
        no_submit: true, // не выводить стандартную кнопку
        title: "Заказ подарков", // заголовок окна
        action_url: "/postmaster.php", // путь к обработчику запрсов
        success: "Заказ принят и будет рассмотрен в ближайшее время", 
        fail: "Сообщение не доставлено. Извините за неудобство!", 
        fields: { // добавление полей	
            company: {
                required: true, // обязательное ли
                placeholder: "Ваша Компания", 
                type: "text",
            },
            email: {
                required: true, // обязательное ли
                placeholder: "Ваш e-mail", 
                type: "email",
            },
            list: {
                placeholder: "Количество товара",
                type: "text",
            },
            artist: {
                label: "Наименование товара",
                type: "text", // или "hidden", чтобы не выводилось в форме
            },
            intro: {
                label: "Дополнительно",
                type: "textarea",
            },
            action: { // невидимое поле, передющее тип формы
                type: "hidden",
                value: "service_order",
            },
            send: {
                type: "submit",
                value: "Заказать",
            },
        },
    }); 
});
$(function() {
    $('.feedback').jbcallme();
});
</script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript">
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
</script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo isset($this->request->get['route']) ? str_replace('/', '-', $this->request->get['route']) : 'common-home'; ?>" >

    <div id="container">
<div id="header">

<div class="social_home">
	<span class="float"><a href="index.php"><img alt="" src="catalog/view/theme/default/image/fb.png" /></a><a href="index.php"><img alt="" src="catalog/view/theme/default/image/ok.png" /></a><span>Заказ подарков по телефону: +996 (312) 455 122</span></span>
	<span class="feedback">
		<a href="#" class="feedback">Заказать обратный звонок</a>
	</span>
	 <?php echo $cart; ?>
	</div>

<div id="top">
	<div class="no-menu">
		<a href="index.php">Главная</a><a href="/index.php?route=product/category&amp;path=59">Каталог</a><a href="/index.php?route=information/information&amp;information_id=7">Оплата и доставка</a><a href="/index.php?route=information/information&information_id=9">Документы</a><a href="/index.php?route=information/information&information_id=8">Наши клиенты</a><a href="/index.php?route=information/information&amp;information_id=6">Контакты</a>
    </div>
</div>
</div>
</div>
