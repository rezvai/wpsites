<footer> 
    <!-- This is the footer with default 3 divs -->
    <div class="footer__row">
    <div>
      <p style="white-space: nowrap;">Подписаться на нас:</p>
      <?php echo do_shortcode('[DISPLAY_ULTIMATE_SOCIAL_ICONS]'); ?>
    </div>
    <div>    
    
      <?= wp_nav_menu( ['menu' => 'Main'] )?>
    <div class="footerlinks">
      <p class="copyright">"Cultural_event" &copy; Cipyright, 2023</p> 
    </div>
    </div>
    </div>
  </footer>
</div>
<?php
    wp_footer();
?>
</body>
</html>