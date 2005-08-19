<?php
/*

    Footer PHP script
    Chip Cuccio <chipster@norlug.org>
    $Id: footer_inc.php 703 2005-06-26 02:39:11Z chipster $

*/
?>
  <div id="footer">
    <br class="doNotDisplay doNotPrint" />

    <div class="left">
      <strong>[ <a href="#top">Back to Top ^</a> ]</strong><br />
      [ <a href="http://validator.w3.org/check?uri=http://<?php
      print("$SERVER_NAME"."$REQUEST_URI"); ?>"
      class="footLink">Valid XHTML</a>&nbsp;|&nbsp;<a href=
      "http://jigsaw.w3.org/css-validator/validator?uri=http://<?php
      print("$SERVER_NAME"."$REQUEST_URI"); ?>"
      class="footLink">Valid CSS</a> ]
    </div>
    <div class="right">
      <address>
        Linux&reg; is a registered trademark of <a href=
        "http://www.linuxmark.org">Linus Torvalds</a><br />
        Slackware&reg; is a registered trademark of <a href=
        "http://slackware.com/trademark/trademark.php">Patrick
        Volkerding</a>
      </address>
    </div>
    <script type="text/javascript" src="/js/awstats_misc_tracker.js"></script>
    <img src="/js/awstats_misc_tracker.js?nojs=y" height="0"
    width="0" style="display: none; border-width: 0px;" alt="" />
  </div>
</body>
</html>

