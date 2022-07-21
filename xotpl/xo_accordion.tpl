<div class="row">
    <div class="col-sm-12">
        <div class="alert alert-warning mb-2" style="background: #FAF3DD">

            <div class="tad_tools_icon">
                <a href="<{$theme_url}>/tools.php?op=clear_cache" title=" <{$smarty.const._TAD_SIMPLE_CLEAR_CACHE}> (<{$filecount}> files)">
                    <img src='<{$theme_img}>/sweeping-person.png' alt="<{$smarty.const._TAD_SIMPLE_CLEAR_CACHE}> (<{$filecount}> files)">
                </a>
                <div>
                    <a href="<{$theme_url}>/tools.php?op=clear_cache" title="<{$smarty.const._TAD_SIMPLE_CLEAR_CACHE}> (<{$filecount}> files)" class="tad_icon_text"> <{$smarty.const._TAD_SIMPLE_CLEAR_CACHE}></a>
                </div>
            </div>

            <div class="tad_tools_icon">
                <{if $debug!="1"}>
                    <a href="<{$theme_url}>/tools.php?op=debug_mode&v=1" title="<{$smarty.const._TAD_SIMPLE_DEBUG_UNABLE}>">
                        <img src='<{$theme_img}>/debug_unable.png' alt="<{$smarty.const._TAD_SIMPLE_DEBUG_ENABLE}>">
                    </a>
                    <div>
                        <a href="<{$theme_url}>/tools.php?op=debug_mode&v=1" title="<{$smarty.const._TAD_SIMPLE_DEBUG_UNABLE}>" class="tad_icon_text"> <{$smarty.const._TAD_SIMPLE_DEBUG_ENABLE}></a>
                    </div>
                <{else}>
                    <a href="<{$theme_url}>/tools.php?op=debug_mode&v=0" title=" <{$smarty.const._TAD_SIMPLE_DEBUG_UNABLE}>">
                        <img src='<{$theme_img}>/debug.png' alt="<{$smarty.const._TAD_SIMPLE_DEBUG_UNABLE}>">
                    </a>
                    <div>
                        <a href="<{$theme_url}>/tools.php?op=debug_mode&v=0" title="<{$smarty.const._TAD_SIMPLE_DEBUG_UNABLE}>" class="tad_icon_text"> <{$smarty.const._TAD_SIMPLE_DEBUG_UNABLE}></a>
                    </div>
                <{/if}>
            </div>

            <div class="tad_tools_icon">
                <a href="<{$xoops_url}>/modules/tad_adm/pma.php?server=<{$XOOPS_DB_HOST}>&db=<{$XOOPS_DB_NAME}>" target="_blank" title=" <{$smarty.const._TAD_SIMPLE_DATABASE}>">
                    <img src='<{$theme_img}>/server.png' alt="<{$smarty.const._TAD_SIMPLE_DATABASE}>">
                </a>
                <div>
                    <a href="<{$xoops_url}>/modules/tad_adm/pma.php?server=<{$XOOPS_DB_HOST}>&db=<{$XOOPS_DB_NAME}>" target="_blank" title="<{$smarty.const._TAD_SIMPLE_DATABASE}>" class="tad_icon_text"> <{$smarty.const._TAD_SIMPLE_DATABASE}></a>
                </div>
            </div>

            <div class="tad_tools_icon">
                <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=1" title=" <{$smarty.const._TAD_SIMPLE_SYS_CONFIG}>">
                    <img src='<{$theme_img}>/mechanical-gears-.png' alt="<{$smarty.const._TAD_SIMPLE_SYS_CONFIG}>">
                </a>
                <div>
                    <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=1" title="<{$smarty.const._TAD_SIMPLE_SYS_CONFIG}>" class="tad_icon_text"> <{$smarty.const._TAD_SIMPLE_SYS_CONFIG}></a>
                </div>
            </div>
            <{if $clean_templates}>
                <div class="tad_tools_icon">
                    <a href="<{$theme_url}>/tools.php?op=clean_templates" title=" <{$smarty.const._TAD_SIMPLE_CLEAR_TEMPLATES}>">
                        <img src='<{$theme_img}>/vacuum-cleaner.png' alt="<{$smarty.const._TAD_SIMPLE_CLEAR_TEMPLATES}>">
                    </a>
                    <div>
                        <a href="<{$theme_url}>/tools.php?op=clean_templates" title="<{$smarty.const._TAD_SIMPLE_CLEAR_TEMPLATES}>" class="tad_icon_text"> <{$smarty.const._TAD_SIMPLE_CLEAR_TEMPLATES}></a>
                    </div>
                </div>
            <{/if}>
        </div>
    </div>
</div>
