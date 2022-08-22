<div class="container-fluid">
    <div class="row">
        <{if $modules || $unable_modules}>
            <div class="col-lg-9 col-md-8">
                <{includeq file="$theme_tpl/xo_modules.tpl"}>
            </div>
            <div class="col-lg-3 col-md-4">
                <{includeq file="$theme_tpl/xo_chk.tpl"}>
                <{includeq file="$theme_tpl/xo_tools.tpl"}>
                <{includeq file="$theme_tpl/xo_accordion.tpl"}>
                <{includeq file="$theme_tpl/xo_icons.tpl"}>
                <{includeq file="$theme_tpl/xo_info.tpl"}>
            </div>
        <{elseif $xoops_contents}>
            <div class="col-sm-12">
                <{*Display Admin menu*}>
                <{if $xo_system_menu}><{$xo_system_menu}><{/if}>
                <{$xoops_contents}>
            </div>
        <{/if}>
    </div>
</div>
