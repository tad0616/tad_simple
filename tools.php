<?php
use Xmf\Request;
use XoopsModules\Tadtools\Utility;

// include_once "../../../../mainfile.php";
require_once dirname(dirname(dirname(dirname(__DIR__)))) . '/include/cp_header.php';
$op = Request::getString('op');
$v = Request::getString('v');
$tad_adm_mid = Request::getInt('tad_adm_mid');

$pk = Request::getString('pk');
$name = Request::getString('name');
$value = Request::getString('value');
$mid = Request::getInt('mid');
$weight = Request::getString('weight');
$isactive = Request::getInt('isactive');
$mids = Request::getArray('mids');

switch ($op) {

    case "change_module_display":
        change_module_display($mid, $weight);
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "change_module_status":
        change_module_status($mid, $isactive);
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "sort_modules":
        sort_modules($mids);
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "update_module_title":
        update_module_title($pk, $value);
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "debug_mode":
        debug_mode($v);
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "clear_cache":
        clear_cache();
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "clean_templates":
        clean_templates();
        clear_cache();
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "auto_templates":
        auto_templates();
        header("location: " . XOOPS_URL . "/admin.php");
        exit;
    case "theme_in_allowed":
        theme_in_allowed();
        header("location: " . XOOPS_URL . "/admin.php");
        exit;
    case "auth_method_xoops":
        auth_method_xoops();
        header("location: " . XOOPS_URL . "/admin.php");
        exit;
    case "tad_adm_power":
        tad_adm_power($tad_adm_mid);
        header("location: " . XOOPS_URL . "/admin.php");
        exit;

    case "sql_mode":
        sql_mode();
        header("location: " . XOOPS_URL . "/admin.php");
        exit;
}

// 顯示或隱藏模組
function change_module_display($mid, $weight)
{
    global $xoopsDB;
    if ($weight == 'auto') {
        $sql = "select max(`weight`)+1 from " . $xoopsDB->prefix('modules') . "  where `isactive`='1'";
        $result = $xoopsDB->query($sql) or Utility::web_error($sql, __FILE__, __LINE__);
        list($weight) = $xoopsDB->fetchRow($result);
    }
    $sql = "update " . $xoopsDB->prefix('modules') . " set `weight`='$weight' where `mid`='$mid'";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

// 啟動或關閉模組
function change_module_status($mid, $isactive)
{
    global $xoopsDB;
    $sql = "update " . $xoopsDB->prefix('modules') . " set `isactive`='$isactive' where `mid`='$mid'";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

// 修改模組標題
function update_module_title($mid, $name)
{
    global $xoopsDB;
    $sql = "update " . $xoopsDB->prefix('modules') . " set `name`='$name' where `mid`='$mid'";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

function sql_mode()
{
    global $xoopsDB;
    $sql = "SET GLOBAL sql_mode = 'NO_ENGINE_SUBSTITUTION '; SET SESSION sql_mode = 'NO_ENGINE_SUBSTITUTION ';";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

function tad_adm_power($tad_adm_mid)
{
    global $xoopsDB;
    $sql = 'insert into ' . $xoopsDB->prefix('group_permission') . " (gperm_itemid, gperm_groupid, gperm_modid, gperm_name) values('{$tad_adm_mid}', 3, 1, 'module_read')";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

function auth_method_xoops()
{
    global $xoopsDB;
    $sql = 'update ' . $xoopsDB->prefix('config') . " set conf_value='xoops' where conf_name='auth_method'";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

// 把預設佈景加入可選佈景
function theme_in_allowed()
{
    global $xoopsConfig, $xoopsDB;

    $xoopsConfig['theme_set_allowed'][] = $xoopsConfig['theme_set'];
    $theme_set_allowed = serialize($xoopsConfig['theme_set_allowed']);

    $sql = 'update ' . $xoopsDB->prefix('config') . " set conf_value='{$theme_set_allowed}' where conf_name='theme_set_allowed'";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);

}

//清除樣板
function clean_templates($dirs = array(), $files = array())
{
    global $xoopsConfig;

    $isWin = strtoupper(substr(PHP_OS, 0, 3)) === 'WIN' ? true : false;

    $theme_name = $xoopsConfig['theme_set'];
    $all_dir = array();
    $dir = XOOPS_ROOT_PATH . "/themes/{$theme_name}/modules/";
    if (is_dir($dir)) {
        if ($dh = opendir($dir)) {
            while (($file = readdir($dh)) !== false) {

                if (substr($file, 0, 1) == '.' or $file == 'system' or $file == 'pm' or $file == 'profile') {
                    continue;
                }

                if (is_dir($dir . $file)) {
                    $mod_dir = $isWin ? iconv("Big5", "UTF-8", $dir . $file) : $dir . $file;
                    delete_directory($mod_dir, true);
                } else {
                    continue;
                }
            }
            closedir($dh);
        }
    }
}

//清除快取
function clear_cache()
{
    $dirnames[] = XOOPS_VAR_PATH . "/caches/smarty_cache";
    $dirnames[] = XOOPS_VAR_PATH . "/caches/smarty_compile";
    $dirnames[] = XOOPS_VAR_PATH . "/caches/xoops_cache";
    foreach ($dirnames as $dirname) {
        if (is_dir($dirname)) {
            delete_directory($dirname);
            $fp = fopen("{$dirname}/index.html", 'w');
            fwrite($fp, '<script>history.go(-1);</script>');
            fclose($fp);
        }
    }
}

//刪除目錄檔案
function delete_directory($dirname, $rmdir = false)
{
    if (is_dir($dirname)) {
        $dir_handle = opendir($dirname);
    }

    if (!$dir_handle) {
        return false;
    }

    while ($file = readdir($dir_handle)) {
        if ($file != "." && $file != "..") {
            if (!is_dir($dirname . "/" . $file)) {
                unlink($dirname . "/" . $file);
            } else {
                delete_directory($dirname . '/' . $file, $rmdir);
            }
        }
    }
    closedir($dir_handle);
    if ($rmdir) {
        rmdir($dirname);
    }
    return true;
}

//修改除錯模式
function debug_mode($v = 0)
{
    global $xoopsDB;

    $sql = "update " . $xoopsDB->prefix("config") . " set conf_value='$v' where conf_name='debug_mode'";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

//修改自動編譯
function auto_templates()
{
    global $xoopsDB;

    $sql = "update " . $xoopsDB->prefix("config") . " set conf_value='1' where conf_name='theme_fromfile'";
    $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

//修改自動編譯
function sort_modules($mids = [])
{
    global $xoopsDB;
    $sort = 1;
    foreach ($mids as $mid) {
        $sql = "update " . $xoopsDB->prefix("modules") . " set `weight`='{$sort}' where `mid`='{$mid}'";
        $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
        $sort++;
    }
    echo "排序完成 (" . date("Y-m-d H:i:s") . ")";
}
