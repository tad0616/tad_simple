<div class="system_icons my-3">
    <{foreach item=op from=$mod_options}>
        <div class="tad_adm_icon">
            <a href="<{$op.link}>" title="<{$op.desc}>">
                <img src='<{$op.icon|default:"$theme_icons/icon_options.png"}>' alt="<{$op.desc}>">
            </a>
            <div>
                <a href="<{$op.link}>" title="<{$op.desc}>" class="tad_icon_text"><{$op.title}></a>
            </div>
        </div>
    <{/foreach}>

    <div class="tad_adm_icon">
        <a href="<{xoAppUrl modules/system/admin.php}>" title="<{$smarty.const._AM_SYSTEM_CONFIG}>">
            <img src='<{"$theme_icons/configuration.png"}>'>
        </a>
        <div>
            <a href="<{xoAppUrl modules/system/admin.php}>" title="<{$smarty.const._AM_SYSTEM_CONFIG}>" class="tad_icon_text"><{$smarty.const._AM_SYSTEM_CONFIG}></a>
        </div>

    </div>
</div>
