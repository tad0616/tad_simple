
<div id="all-modules">
    <ul class="resp-tabs-list admin-vert">
        <li> <{$smarty.const._TAD_SIMPLE_ENABLE}><{$smarty.const._TAD_SIMPLE_MODULE}> </li>
        <li> <{$smarty.const._TAD_SIMPLE_UNABLE}><{$smarty.const._TAD_SIMPLE_MODULE}> </li>
    </ul>

    <div class="resp-tabs-container admin-vert">
        <div>
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
        </div>
        <div>
            <{if $unable_modules|default:false}>
                <{assign var="modules_type" value="unable_modules"}>
                <{assign var="list_modules" value=$unable_modules|default:''}>
                <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_UNABLE}>
                <{include file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
            <{/if}>
        </div>
    </div>
</div>
