
<div id="all-modules">
    <ul class="resp-tabs-list admin-vert">
        <li> <{$smarty.const._TAD_SIMPLE_ENABLE}><{$smarty.const._TAD_SIMPLE_MODULE}> </li>
        <li> <{$smarty.const._TAD_SIMPLE_UNABLE}><{$smarty.const._TAD_SIMPLE_MODULE}> </li>
    </ul>

    <div class="resp-tabs-container admin-vert">
        <div>
            <{if $modules}>
                <{assign var="modules_type" value="modules"}>
                <{assign var="list_modules" value=$modules}>
                <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_FRONT_ENABLE}>
                <{includeq file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
            <{/if}>

            <{if $hide_modules}>
                <{assign var="list_modules" value=$hide_modules}>
                <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_HIDDEN_IN_MENU}>
                <{includeq file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
            <{/if}>

            <{if $no_menu_modules}>
                <{assign var="list_modules" value=$no_menu_modules}>
                <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_NO_FRONT}>
                <{includeq file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
            <{/if}>
        </div>
        <div>
            <{if $unable_modules}>
                <{assign var="modules_type" value="unable_modules"}>
                <{assign var="list_modules" value=$unable_modules}>
                <{assign var="modules_txt" value=$smarty.const._TAD_SIMPLE_UNABLE}>
                <{includeq file="$xoops_rootpath/modules/system/themes/tad_simple/xotpl/sub_list_modules.tpl"}>
            <{/if}>
        </div>
    </div>
</div>
