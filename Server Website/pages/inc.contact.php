<?php

        // ===================================================================================================
        // Package      : pkoSite
        // File         : inc.contact.php
        // Version      : 1.0.0
        // Author       : Momo
        // ===================================================================================================
        // Disclaimer   : To make it short - if you steal code you're a pathetic, little loser :-)
        // ===================================================================================================

        // Prevent people from calling this file directly! Normally it doesn't matter but its always better
        // being save than being sorry.

        if (!defined('PKOSITE'))
                die('Go away!');

        // ===================================================================================================

        // Here Comes what should be done by the Server ;)

        // Build breadcrumb-navigation

        $breadcrumbs    = array();

        $breadcrumbs[]  = array( 'caption'      => 'Home',
                                 'url'          => ''   );

        $oSmarty->assign('breadcrumbs',         $breadcrumbs);

        // Display page

        $oSmarty->display('file:pages/site_contact.tpl');