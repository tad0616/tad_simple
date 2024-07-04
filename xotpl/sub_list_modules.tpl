<div id="<{$modules_type}>-sort" class="vtb">
    <ul class="vhead">
        <li class="w20 m"><{$modules_txt}><{$smarty.const._TAD_SIMPLE_MODULE}></li>
        <{if $modules_type!='no_menu_modules'}>
            <li class="w30 m"><{$smarty.const._TAD_SIMPLE_BACKEND}><{$smarty.const._TAD_SIMPLE_PAGE}></li>
            <li class="w25 m"><{$smarty.const._TAD_SIMPLE_FRONT}><{$smarty.const._TAD_SIMPLE_PAGE}></li>
        <{else}>
            <li class="w45 m"><{$smarty.const._TAD_SIMPLE_BACKEND}><{$smarty.const._TAD_SIMPLE_PAGE}></li>
            <li class="w10 m"><{$smarty.const._TAD_SIMPLE_FRONT}><{$smarty.const._TAD_SIMPLE_PAGE}></li>
        <{/if}>
        <li class="w10 m"><{$smarty.const._TAD_SIMPLE_SITEPREF}></li>
        <li class="w5 m"><{$smarty.const._TAD_SIMPLE_BLOCK}></li>
        <li class="w10 m"><{$smarty.const._TAD_SIMPLE_FUNCTION}></li>
    </ul>
    <{foreach from=$list_modules item=mod}>
        <{*
                <{foreach from=$mod.info key=k item=v}>
                    <{if $v|is_array}>
                        <div><{$k}>：</div>
                        <{foreach from=$v key=kk item=vv}>
                            <{if $vv|is_array}>
                                <div><{$kk}>：</div>
                                <{foreach from=$vv key=kkk item=vvv}>
                                    <div style="color:red;margin-left:4rem;"><{$kkk}>=<{$vvv}></div>
                                <{/foreach}>
                            <{else}>
                                <div style="color:blue;margin-left:2rem;"><{$kk}>=<{$vv}></div>
                            <{/if}>
                        <{/foreach}>
                    <{else}>
                        <div><{$k}>=<{$v}></div>
                    <{/if}>
                <{/foreach}>
        *}>

        <ul <{if $mod.info.hasMain==1}>id="mids_<{$mod.mid}>"<{/if}> class="<{if !$mod.isactive}>unable<{/if}>">
            <li class="w20 m mobile-title">
                <{if $mod.info.hasAdmin==1}>
                    <a href="<{$mod.link}>" title="<{$mod.title}>" style="display: inline-block;">
                        <img src='<{$mod.icon|default:"$theme_img/modules.png"}>' alt="<{$mod.title}>" style="max-width: 90px;" class="img-fluid img-responsive">
                    </a>
                <{else}>
                    <img src='<{$mod.icon|default:"$theme_img/modules.png"}>' alt="<{$mod.title}>" style="max-width: 90px;" class="img-fluid img-responsive">
                <{/if}>

                <div style="display: inline-block; margin-left: 4px;">
                    <div class="tad_mod_title">
                        <span class="tad-simple-editable enable-color" title="<{$mod.title}>" data-name="title" data-type="text" data-pk="<{$mod.mid}>" data-title="<{$smarty.const._TAD_SIMPLE_MODIFY_MODULE_NAME}>" data-params="{op: 'update_module_title'}"><{$mod.name}></span>
                    </div>
                    <div style="margin-top: 4px;" class="version-color">
                        <{$mod.info.dirname}> <{$mod.version}>
                    </div>
                </div>
            </li>

            <{if $modules_type!='no_menu_modules'}>
                <li class="w30 m" style="line-height: 1.5rem;">
            <{else}>
                <li class="w45 m" style="line-height: 1.5rem;">
            <{/if}>

                <div class="vcell"><{$smarty.const._TAD_SIMPLE_BACKEND}><{$smarty.const._TAD_SIMPLE_PAGE}></div>
                <{if $mod.info.hasAdmin==1}>
                    <{foreach from=$mod.admin_menu item=items}>
                        <{if $items.title!=_MI_TAD_ADMIN_ABOUT && $items.title!=_MI_TAD_ADMIN_HOME}>
                            <a href="<{$xoops_url}>/modules/<{$mod.info.dirname}>/<{$items.link}>" class="btn-my btn-admin"><{$items.title}></a>
                        <{/if}>
                    <{/foreach}>

                <{else}>
                    <{$smarty.const._TAD_SIMPLE_NO}><{$smarty.const._TAD_SIMPLE_BACKEND}>
                <{/if}>
            </li>

                <{if $modules_type!='no_menu_modules'}>
                    <li class="w25 m" style="line-height: 1.5rem;">
                <{else}>
                    <li class="w10 m c" style="line-height: 1.5rem;">
                <{/if}>
                <div class="vcell"><{$smarty.const._TAD_SIMPLE_FRONT}><{$smarty.const._TAD_SIMPLE_PAGE}></div>
                <{if $mod.info.hasMain==1}>
                    <a href="<{$xoops_url}>/modules/<{$mod.info.dirname}>" title="<{$mod.title}><{$smarty.const._TAD_SIMPLE_FRONT}>" class="btn-my btn-page"><{$mod.title}><{$smarty.const._TAD_SIMPLE_FRONT}></a>
                    <{if $mod.interface_menu}>
                        <{foreach from=$mod.interface_menu key=item_name item=item_url}>
                            <a href="<{$xoops_url}>/modules/<{$mod.info.dirname}>/<{$item_url}>" class="btn-my btn-page"><{$item_name}></a>
                        <{/foreach}>

                    <{else}>
                        <{foreach from=$mod.info.sub item=items}>
                            <a href="<{$xoops_url}>/modules/<{$mod.info.dirname}>/<{$items.url}>" class="btn-my btn-page"><{$items.name}></a>
                        <{/foreach}>
                    <{/if}>
                <{else}>
                    <{$smarty.const._TAD_SIMPLE_NO}><{$smarty.const._TAD_SIMPLE_FRONT}>
                <{/if}>
            </li>

            <li class="w10 m ">
                <div class="vcell"><{$smarty.const._TAD_SIMPLE_SITEPREF}></div>
                <{if $mod.info.dirname=="system"}>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=1" title="<{$mod.title}><{$smarty.const._MD_AM_GENERAL}>"><{$smarty.const._MD_AM_GENERAL}></a><br>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=2" title="<{$mod.title}><{$smarty.const._MD_AM_USERSETTINGS}>"><{$smarty.const._MD_AM_USERSETTINGS}></a><br>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=3" title="<{$mod.title}><{$smarty.const._MD_AM_METAFOOTER}>"><{$smarty.const._MD_AM_METAFOOTER}></a><br>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=5" title="<{$mod.title}><{$smarty.const._MD_AM_SEARCH}>"><{$smarty.const._MD_AM_SEARCH}></a><br>
                <{elseif $mod.info.config}>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=showmod&mod=<{$mod.mid}>" title="<{$mod.title}><{$smarty.const._TAD_SIMPLE_SITEPREF}>"><{$smarty.const._TAD_SIMPLE_SITEPREF}> (<{$mod.info.config|@count}>)</a>
                <{else}>
                    <{$smarty.const._TAD_SIMPLE_NO}><{$smarty.const._TAD_SIMPLE_SITEPREF}>
                <{/if}>
            </li>

            <li class="w5 m c">
                <div class="vcell"><{$smarty.const._TAD_SIMPLE_MODULE}><{$smarty.const._TAD_SIMPLE_BLOCK}></div>
                <{if $mod.info.blocks}>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=blocksadmin&op=list&filter=1&selgen=<{$mod.mid}>&selmod=-2&selgrp=-1&selvis=-1" title="<{$mod.title}><{$smarty.const._TAD_SIMPLE_BLOCK}>"><{$mod.info.blocks|@count}><{$smarty.const._TAD_SIMPLE_BLOCK}></a>
                <{else}>
                    <{$smarty.const._TAD_SIMPLE_NO}><{$smarty.const._TAD_SIMPLE_BLOCK}>
                <{/if}>
            </li>

            <li class="w10 m">
                <div class="vcell"><{$smarty.const._TAD_SIMPLE_FUNCTION}></div>
                <{if $mod.info.dirname!='system'}>
                    <{if $mod.isactive}>
                        <a href="<{$xoops_url}>/modules/system/themes/tad_simple/tools.php?op=change_module_status&mid=<{$mod.mid}>&isactive=0" <{$toggle}>="tooltip" title="<{$smarty.const._TAD_SIMPLE_CLICK_TO_UNABLE_MODULE}>"><img class="img-fluid my" src="<{$xoops_url}>/modules/system/images/icons/transition/success.png" alt="<{$smarty.const._TAD_SIMPLE_ENABLE}>" style="width: 24px; vertical-align: middle;"></a>
                    <{else}>
                        <a href="<{$xoops_url}>/modules/system/themes/tad_simple/tools.php?op=change_module_status&mid=<{$mod.mid}>&isactive=1" <{$toggle}>="tooltip" title="<{$smarty.const._TAD_SIMPLE_CLICK_TO_ENABLE_MODULE}>"><img class="img-fluid my" src="<{$xoops_url}>/modules/system/images/icons/transition/cancel.png" alt="<{$smarty.const._TAD_SIMPLE_UNABLE}>" style="width: 24px; vertical-align: middle;"></a>
                    <{/if}>


                    <{if $modules_type=="unable_modules"}>
                        <a href="<{$xoops_url}>/modules/system/admin.php?fct=modulesadmin&op=uninstall&module=<{$mod.info.dirname}>" <{$toggle}>="tooltip" title="<{$smarty.const._TAD_SIMPLE_CLICK_TO_UNINSTALL_MODULE}>"><img class="img-fluid my" src="<{$xoops_url}>/modules/system/images/icons/transition/uninstall.png" alt="<{$smarty.const._TAD_SIMPLE_UNINSTALL}>" style="width: 24px; vertical-align: middle;"></a>
                    <{else}>

                        <{if $mod.info.hasMain==0}>
                        <{elseif $mod.weight}>
                            <a href="<{$xoops_url}>/modules/system/themes/tad_simple/tools.php?op=change_module_display&mid=<{$mod.mid}>&weight=0" <{$toggle}>="tooltip" title="(<{$smarty.const._TAD_SIMPLE_SEQUENCE}> <{$mod.weight}>) <{$smarty.const._TAD_SIMPLE_CLICK_TO_HIDE}>" class="btn-my btn-enable"> <{$mod.weight}> </a>
                        <{else}>
                            <a href="<{$xoops_url}>/modules/system/themes/tad_simple/tools.php?op=change_module_display&mid=<{$mod.mid}>&weight=auto" <{$toggle}>="tooltip" title="<{$smarty.const._TAD_SIMPLE_CLICK_TO_SHOW}>" class="btn-my btn-unable"><{$smarty.const._TAD_SIMPLE_HIDE}></a>
                        <{/if}>
                    <{/if}>

                <{else}>
                    <img class="img-fluid" src="<{$xoops_url}>/modules/system/images/icons/transition/success.png" alt="<{$smarty.const._TAD_SIMPLE_ENABLE}>" style="width: 24px; vertical-align: middle;">
                <{/if}>

                <{if $mod.version!=$mod.info.version}>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=modulesadmin&op=update&module=<{$mod.info.dirname}>&tad_adm_tpl=clean" class="popwin" <{$toggle}>="tooltip" title="<{$mod.version}>!=<{$mod.info.version}> <{$smarty.const._TAD_SIMPLE_CLICK_TO_UPDATE_MODULE}>"><img class="img-fluid my" src="<{$xoops_url}>/modules/system/images/icons/transition/messagebox_warning.png" alt="<{$smarty.const._TAD_SIMPLE_UPDATE}>" style="width: 24px; vertical-align: middle;"></a>
                <{else}>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=modulesadmin&op=update&module=<{$mod.info.dirname}>&tad_adm_tpl=clean" class="popwin" <{$toggle}>="tooltip" title="<{$smarty.const._TAD_SIMPLE_CLICK_TO_RELOAD_MODULE}>"><img class="img-fluid my" src="<{$xoops_url}>/modules/system/images/icons/transition/reload.png" alt="<{$smarty.const._TAD_SIMPLE_RELOAD}>" style="width: 24px; vertical-align: middle;"></a>
                <{/if}>
            </li>
        </ul>
    <{/foreach}>
</div>