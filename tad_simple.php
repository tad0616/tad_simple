<?php
/*
You may not change or alter any portion of this comment or credits
of supporting developers from this source code or any supporting source code
which is considered copyrighted (c) material of the original comment or credit authors.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

xoops_load('gui', 'system');
// use XoopsModules\Tadtools\ScrollTable;
use XoopsModules\Tadtools\Utility;

if (!class_exists('XoopsModules\Tadtools\Utility')) {
    include XOOPS_ROOT_PATH . '/modules/tadtools/preloads/autoloader.php';
}

class TadSimpleGui extends XoopsSystemGui
{
    public function __construct()
    {

    }

    public function header()
    {
        parent::header();

        global $xoopsConfig, $xoopsUser, $xoopsModule, $xoTheme, $xoopsDB;
        $tpl = &$this->template;

        // $ScrollTable = new ScrollTable();
        // $ScrollTable_js = $ScrollTable->render('#modules_table', 1, 1, 500, 12);
        // $tpl->assign('ScrollTable_js', $ScrollTable_js);

        //檢查舊樣板
        $theme_name = $xoopsConfig['theme_set'];
        $clean_templates = false;
        $dir = XOOPS_ROOT_PATH . "/themes/{$theme_name}/modules/";
        if (is_dir($dir)) {
            if ($dh = opendir($dir)) {
                while (($file = readdir($dh)) !== false) {
                    if (substr($file, 0, 1) == '.' or $file == 'system' or $file == 'pm' or $file == 'profile') {
                        continue;
                    }
                    if (is_dir($dir . $file)) {
                        $clean_templates = true;
                    } else {
                        continue;
                    }
                }
                closedir($dh);
            }
        }

        $tpl->assign('bootstrap', $_SESSION['bootstrap']);
        $tpl->assign('clean_templates', $clean_templates);
        $tpl->assign('debug', $xoopsConfig['debug_mode']);
        $tpl->assign('theme_fromfile', $xoopsConfig['theme_fromfile']);

        $tpl->assign('theme_set', $theme_name);
        $tpl->assign('theme_in_allowed', in_array($theme_name, $xoopsConfig['theme_set_allowed']));

        $sql = "select conf_value from " . $xoopsDB->prefix("config") . " where conf_name='auth_method'";
        $result = $xoopsDB->queryF($sql) or web_error($sql);
        list($auth_method) = $xoopsDB->fetchRow($result);
        $tpl->assign('auth_method', $auth_method);

        $sql = "select mid from " . $xoopsDB->prefix("modules") . " where dirname='tad_adm'";
        $result = $xoopsDB->queryF($sql) or web_error($sql);
        list($tad_adm_mid) = $xoopsDB->fetchRow($result);
        $tpl->assign('tad_adm_mid', $tad_adm_mid);
        $sql = "select gperm_id from " . $xoopsDB->prefix("group_permission") . " where gperm_itemid='$tad_adm_mid' and gperm_groupid='3' and gperm_modid='1' and gperm_name='module_read'";
        $result = $xoopsDB->queryF($sql) or web_error($sql);
        list($tad_adm_gperm_id) = $xoopsDB->fetchRow($result);
        $tpl->assign('tad_adm_gperm_id', $tad_adm_gperm_id);

        $dirname = XOOPS_VAR_PATH . "/caches/smarty_compile/";
        if (glob($dirname . "*.php") != false) {
            $filecount = count(glob($dirname . "*.php"));
            $tpl->assign('filecount', $filecount);
        }

        $clean_mode = 0;
        if (isset($_REQUEST['tad_adm_tpl']) and $_REQUEST['tad_adm_tpl'] == "clean") {
            $clean_mode = 1;
        }
        $tpl->assign('clean_mode', $clean_mode);

        $xoTheme->addScript('browse.php?Frameworks/jquery/jquery.js');

        $xoTheme->addStylesheet(XOOPS_URL . "/modules/tadtools/jquery/themes/base/jquery.ui.all.css");
        $xoTheme->addScript(XOOPS_URL . "/modules/tadtools/jquery/ui/jquery-ui.js");
        $xoTheme->addScript(XOOPS_URL . "/modules/tadtools/jquery/jquery.ui.touch-punch.min.js");

        // $xoTheme->addScript(XOOPS_ADMINTHEME_URL . '/tad_simple/js/styleswitch.js');
        // $xoTheme->addScript(XOOPS_ADMINTHEME_URL . '/tad_simple/js/formenu.js');

        $xoTheme->addScript(XOOPS_URL . '/modules/tadtools/bootstrap' . $_SESSION['bootstrap'] . '/js/bootstrap.bundle.min.js');
        $xoTheme->addStylesheet(XOOPS_URL . "/modules/tadtools/bootstrap{$_SESSION['bootstrap']}-editable/css/bootstrap-editable.css");
        $xoTheme->addScript(XOOPS_URL . "/modules/tadtools/bootstrap{$_SESSION['bootstrap']}-editable/js/bootstrap-editable.js");

        $xoTheme->addStylesheet(XOOPS_URL . "/modules/tadtools/Easy-Responsive-Tabs/css/easy-responsive-tabs.css");
        $xoTheme->addScript(XOOPS_URL . "/modules/tadtools/Easy-Responsive-Tabs/js/easyResponsiveTabs.js");

        $xoTheme->addStylesheet(XOOPS_URL . "/modules/tadtools/colorbox/colorbox.css");
        $xoTheme->addScript(XOOPS_URL . "/modules/tadtools/colorbox/jquery.colorbox.js");

        $xoTheme->addStylesheet(XOOPS_URL . '/modules/tadtools/css/fonts.css');
        $xoTheme->addStylesheet(XOOPS_ADMINTHEME_URL . '/tad_simple/css/style.css');
        $xoTheme->addStylesheet(XOOPS_ADMINTHEME_URL . '/tad_simple/css/vtb.css');

        $xoTheme->addStylesheet(XOOPS_URL . "/modules/tadtools/css/font-awesome/css/font-awesome.css");

        $tpl->assign('lang_cp', _CPHOME);
        //start system overview
        //$tpl->assign('lang_xoops_version', XOOPS_VERSION);
        $tpl->assign('lang_php_vesion', PHP_VERSION);

        $sql = "select version()";
        $result = $xoopsDB->queryF($sql);
        list($ver) = $xoopsDB->fetchRow($result);
        $tpl->assign('lang_mysql_version', $ver);

        $tpl->assign('lang_web_version', $_SERVER['SERVER_SOFTWARE']);

        $sql = "select @@sql_mode";
        $result = $xoopsDB->queryF($sql);
        list($sql_mode) = $xoopsDB->fetchRow($result);
        $tpl->assign('sql_mode', $sql_mode);

        $tpl->assign('lang_server_api', PHP_SAPI);
        $tpl->assign('lang_os_name', PHP_OS);
        $tpl->assign('post_max_size', ini_get('post_max_size'));
        $tpl->assign('max_input_time', ini_get('max_input_time'));
        $tpl->assign('output_buffering', ini_get('output_buffering'));
        $tpl->assign('max_execution_time', ini_get('max_execution_time'));
        $tpl->assign('memory_limit', ini_get('memory_limit'));
        $tpl->assign('file_uploads', ini_get('file_uploads') ? 'On' : 'Off');
        $tpl->assign('upload_max_filesize', ini_get('upload_max_filesize'));
        $tpl->assign('xoops_sitename', $xoopsConfig['sitename']);
        $tpl->assign('server_ip', $_SERVER['SERVER_ADDR']);
        $tpl->assign('remote_ip', $_SERVER['REMOTE_ADDR']);
        $forwarded_ip = isset($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : '';
        $tpl->assign('forwarded_ip', $forwarded_ip);

        //add SYSTEM  Menu items
        include __DIR__ . '/menu.php';
        if (empty($xoopsModule) || 'system' === $xoopsModule->getVar('dirname', 'n')) {
            $modpath = XOOPS_URL . '/admin.php';
            $modname = _TAD_SIMPLE_SYSOPTIONS;
            $modid = 1;
            $moddir = 'system';

            $mod_options = $adminmenu;
            foreach (array_keys($mod_options) as $item) {
                $mod_options[$item]['link'] = empty($mod_options[$item]['absolute']) ? XOOPS_URL . '/modules/' . $moddir . '/' . $mod_options[$item]['link'] : $mod_options[$item]['link'];
                // echo "<div>{$mod_options[$item]['icon']}</div>";
                $mod_options[$item]['icon'] = empty($mod_options[$item]['icon']) ? '' : XOOPS_ADMINTHEME_URL . '/tad_simple/' . $mod_options[$item]['icon'];
                unset($mod_options[$item]['icon_small']);
            }
        } else {
            $moddir = $xoopsModule->getVar('dirname', 'n');
            $modpath = XOOPS_URL . '/modules/' . $moddir . '/admin/';
            $modname = $xoopsModule->getVar('name');
            $modid = $xoopsModule->getVar('mid');

            $mod_options = $xoopsModule->getAdminMenu();
            foreach (array_keys($mod_options) as $item) {
                $mod_options[$item]['link'] = empty($mod_options[$item]['absolute']) ? XOOPS_URL . "/modules/{$moddir}/" . $mod_options[$item]['link'] : $mod_options[$item]['link'];

                //mb for direct URL access to icons in modules Admin
                $mod_options[$item]['icon'] = empty($mod_options[$item]['icon']) ? '' : (filter_var($mod_options[$item]['icon'], FILTER_VALIDATE_URL) ? $mod_options[$item]['icon'] : (XOOPS_URL . "/modules/{$moddir}/" . $mod_options[$item]['icon']));
            }
        }

        $tpl->assign('mod_options', $mod_options);
        $tpl->assign('modpath', $modpath);
        $tpl->assign('modname', $modname);
        $tpl->assign('modid', $modid);
        $tpl->assign('moddir', $moddir);
        $tpl->assign('XOOPS_DB_HOST', XOOPS_DB_HOST);
        $tpl->assign('XOOPS_DB_NAME', XOOPS_DB_NAME);

        // add MODULES  Menu items
        $module_handler = xoops_getHandler('module');
        $criteria = new CriteriaCompo();
        $criteria->setOrder('weight');
        // $criteria->add(new Criteria('hasadmin', 1));
        // $criteria->add(new Criteria('isactive', 1));
        $criteria->setSort('mid');
        $mods = $module_handler->getObjects($criteria);

        $moduleperm_handler = xoops_getHandler('groupperm');

        if (is_object($xoopsModule) || !empty($_GET['xoopsorgnews'])) {
            if (is_object($xoopsModule) && file_exists($file = XOOPS_ROOT_PATH . '/modules/' . $xoopsModule->getVar('dirname') . '/' . $xoopsModule->getInfo('adminmenu'))) {
                include $file;
            }

            return null;
        }

        foreach ($mods as $mod) {
            $sadmin = $moduleperm_handler->checkRight('module_admin', $mod->getVar('mid'), $xoopsUser->getGroups());
            if ($sadmin) {
                $rtn = array();
                $info = $mod->getInfo();
                $rtn['mid'] = $mod->getVar('mid');
                $rtn['hasmain'] = $mod->getVar('hasmain');
                $rtn['isactive'] = $mod->getVar('isactive');
                // $rtn['version'] = round($mod->getVar('version') / 100, 2);
                $rtn['version_int'] = Utility::get_version($info['dirname'], $mod->getVar('version'));
                $rtn['version'] = $mod->getVar('version');
                $rtn['weight'] = $mod->getVar('weight');
                if (!empty($info['adminindex'])) {
                    $rtn['link'] = XOOPS_URL . "/modules/{$info['dirname']}/{$info['adminindex']}";
                } else {
                    $rtn['link'] = XOOPS_URL . '/modules/system/admin.php?fct=preferences&amp;op=showmod&amp;mod=' . $mod->getVar('mid');
                }
                $rtn['title'] = htmlspecialchars($info['name'], ENT_QUOTES);
                $rtn['name'] = htmlspecialchars($mod->getVar('name'), ENT_QUOTES);
                $rtn['description'] = $mod->getInfo('description');
                $rtn['absolute'] = 1;
                if (isset($info['icon_big'])) {
                    $rtn['icon'] = XOOPS_URL . "/modules/{$info['dirname']}/{$info['icon_big']}";
                } elseif (isset($info['image'])) {
                    $rtn['icon'] = XOOPS_URL . "/modules/{$info['dirname']}/{$info['image']}";
                }
                $rtn['info'] = $info;
                $adminmenu = isset($info['adminmenu']) ? $info['adminmenu'] : null;
                $rtn['admin_menu'] = $this->adminmenu(XOOPS_ROOT_PATH . "/modules/{$info['dirname']}/", $adminmenu);
                $rtn['interface_menu'] = $this->interface_menu($info['dirname']);

                if ($rtn['isactive']) {
                    if ($rtn['hasmain']) {
                        if ($rtn['weight']) {
                            $tpl->append('modules', $rtn);
                        } else {
                            $tpl->append('hide_modules', $rtn);
                        }
                    } else {
                        $tpl->append('no_menu_modules', $rtn);
                    }
                } else {
                    $tpl->append('unable_modules', $rtn);
                }
            }
        }
    }

    private function adminmenu($path, $menu)
    {
        if (!empty($menu) && file_exists($path . $menu)) {
            include $path . $menu;
            return $adminmenu;
        }
    }

    private function interface_menu($dirname)
    {
        if (file_exists(XOOPS_ROOT_PATH . "/uploads/menu_{$dirname}.txt")) {
            $interface_menu = [];
            $json = file_get_contents(XOOPS_ROOT_PATH . "/uploads/menu_{$dirname}.txt");
            $menu_arr = json_decode($json, true);

            foreach ($menu_arr as $name => $url) {

                if (strpos($url, 'admin/') === false && $url != 'index.php') {
                    $interface_menu[$name] = $url;
                }
            }
            return $interface_menu;
        }
    }

}

$ver = Utility::get_version('xoops');
if ($ver >= 20509) {
    class XoopsGuiTad_simple extends TadSimpleGui
    {

        public static function validate()
        {

            xoops_load('XoopsFormRendererBootstrap5');
            XoopsFormRenderer::getInstance()->set(new XoopsFormRendererBootstrap5());

            return true;
        }
    }
} else {
    class XoopsGuiTad_simple extends TadSimpleGui
    {
        public static function validate()
        {
            return true;
        }
    }
}
