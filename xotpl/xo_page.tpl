<div class="container-fluid">
    <div class="row">
        <{if $modules|default:false || $hide_modules|default:false || $no_menu_modules|default:false || $unable_modules|default:false}>
            <div class="col-lg-9 col-md-8">
                <{include file="$theme_tpl/xo_modules.tpl"}>
            </div>
            <div class="col-lg-3 col-md-4">
                <{include file="$theme_tpl/xo_chk.tpl"}>
                <{include file="$theme_tpl/xo_tools.tpl"}>
                <{include file="$theme_tpl/xo_accordion.tpl"}>
                <{include file="$theme_tpl/xo_icons.tpl"}>
                <{include file="$theme_tpl/xo_info.tpl"}>
            </div>
        <{elseif $xoops_contents|default:''}>
            <div class="col-sm-12">
                <{*Display Admin menu*}>
                <{if $xo_system_menu|default:false}><{$xo_system_menu|default:''}><{/if}>
                <{$xoops_contents}>
            </div>
        <{/if}>
    </div>
</div>
