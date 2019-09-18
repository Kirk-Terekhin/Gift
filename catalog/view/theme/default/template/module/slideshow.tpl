<div class="slideshow"><div class="red_bg">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {

$('#slideshow<?php echo $module; ?>').nivoSlider({

effect: 'fade',

slices: 15,

animSpeed: 500,

pauseTime: 6000,

startSlide: 0,

directionNav: true,

directionNavHide: true,

controlNav: true,

keyboardNav: true,

pauseOnHover: true

});

});

--></script>