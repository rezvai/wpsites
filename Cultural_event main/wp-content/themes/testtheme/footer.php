	
  
<footer> 
    <div class="footer__row">
      <div>
        <p style="color: black;">Подписаться на нас:</p>
        <?php echo do_shortcode('[DISPLAY_ULTIMATE_SOCIAL_ICONS]'); ?>
      </div>
      <div>
        <?php wp_nav_menu(['menu' => 'Main']); ?>
      </div>
    </div>
    
    <p class="copyright">«Cultural_event» &copy; Copyright, 2023</p>
  </footer>
</div>
    <?php
        wp_footer();
    ?>
</body>
</html>