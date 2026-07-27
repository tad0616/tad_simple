
<div id="all-modules">
    <ul class="resp-tabs-list admin-vert">
        <li> <{$smarty.const._TAD_SIMPLE_ENABLE}><{$smarty.const._TAD_SIMPLE_MODULE}> </li>
        <li> <{$smarty.const._TAD_SIMPLE_UNABLE}><{$smarty.const._TAD_SIMPLE_MODULE}> </li>
    </ul>

    <div class="resp-tabs-container admin-vert">
        <div>
            <form action="<{$xoops_url}>/modules/system/themes/tad_simple/tools.php" method="post">
                <{if $modules|default:false}>
                    <{assign var="modules_type" value="modules"}>
                    <{assign var="list_modules" value=$modules|default:''}>
                    <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_FRONT_ENABLE}>
                    <{include file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
                <{/if}>

                <{if $hide_modules|default:false}>
                    <{assign var="modules_type" value="hide_modules"}>
                    <{assign var="list_modules" value=$hide_modules|default:''}>
                    <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_HIDDEN_IN_MENU}>
                    <{include file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
                <{/if}>

                <{if $no_menu_modules|default:false}>
                    <{assign var="modules_type" value="no_menu_modules"}>
                    <{assign var="list_modules" value=$no_menu_modules|default:''}>
                    <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_NO_FRONT}>
                    <{include file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
                <{/if}>

                <div class="text-center mt-3">
                    <button type="submit" name="op" value="module_update" class="btn btn-primary"><{$smarty.const._TAD_SIMPLE_BATCH}><{$smarty.const._TAD_SIMPLE_UPDATE}></button>
                </div>
            </form>
        </div>
        <div>
            <form action="<{$xoops_url}>/modules/system/themes/tad_simple/tools.php" method="post">
                <{if $unable_modules|default:false}>
                    <{assign var="modules_type" value="unable_modules"}>
                    <{assign var="list_modules" value=$unable_modules|default:''}>
                    <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_UNABLE}>
                    <{include file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>

                    <div class="text-center mt-3">
                        <button type="submit" name="op" value="module_update" class="btn btn-primary"><{$smarty.const._TAD_SIMPLE_BATCH}><{$smarty.const._TAD_SIMPLE_UPDATE}></button>
                        <button type="submit" name="op" value="module_uninstall" class="btn btn-danger"><{$smarty.const._TAD_SIMPLE_BATCH}><{$smarty.const._TAD_SIMPLE_UNINSTALL}></button>
                    </div>
                <{else}>
                    <h1 class="text-center mt-3"><{$smarty.const._TAD_SIMPLE_NO}><{$smarty.const._TAD_SIMPLE_UNABLE}><{$smarty.const._TAD_SIMPLE_MODULE}></h1>
                <{/if}>
            </form>
        </div>
    </div>
</div>
