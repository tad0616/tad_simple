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


<div class="alert alert-success" style="background: #D9F3E2">
    <div class="row mb-2">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_XOOPS}></label>
        <div class="col-sm-6"><{$xoops_version}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_PHP}></label>
        <div class="col-sm-6"><{$lang_php_vesion}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_MYSQL}></label>
        <div class="col-sm-6"><{$lang_mysql_version}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_WEB}></label>
        <div class="col-sm-6"><{$lang_web_version}></div>
    </div>

    <div class="row mb-2">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_THEME}></label>
        <div class="col-sm-6"><{$theme_set}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6">BootStrap <{$smarty.const._TAD_SIMPLE_VERSION}></label>
        <div class="col-sm-6"><{$smarty.session.bootstrap}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_OS}></label>
        <div class="col-sm-6"><{$lang_os_name}></div>
    </div>

    <div class="row mb-2">
        <label class="col-sm-6">post_max_size</label>
        <div class="col-sm-6"><{$post_max_size}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6">max_input_time</label>
        <div class="col-sm-6"><{$max_input_time}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6">max_execution_time</label>
        <div class="col-sm-6"><{$max_execution_time}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6">memory_limit</label>
        <div class="col-sm-6"><{$memory_limit}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6">upload_max_filesize</label>
        <div class="col-sm-6"><{$upload_max_filesize}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6">sql-mode</label>
        <div class="col-sm-6" style="word-break: break-all;"><{$sql_mode}></div>
    </div>
    <div class="row mb-2">
        <label class="col-sm-6">SERVER IP</label>
        <div class="col-sm-6"><{$server_ip}></div>
    </div>
</div>
