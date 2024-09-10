<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
    <head>
        <{include file="$theme_tpl/xo_metas.tpl"}>
        <{assign var="toggle" value="data-bs-toggle"}>
        <{assign var="placement" value="data-bs-placement"}>
        <script>
            $(document).ready(function(){
                $('.hide').removeClass('hide').css('display','none');
                $('.tad-simple-editable').editable({'url': '<{$xoops_url}>/modules/system/themes/tad_simple/tools.php'});
                $('.popwin').colorbox({iframe: true, width:"1160", height:"560",
                onClosed  :function () {
                    window.location.reload();
                }
                });

                $('[<{$toggle}>="tooltip"]').tooltip();
                $('#modules-sort').sortable({ opacity: 0.6, cursor: 'move', update: function() {
                    var order = $(this).sortable('serialize')+'&op=sort_modules';
                    $.post('<{$xoops_url}>/modules/system/themes/tad_simple/tools.php', order, function(theResponse){
                        window.location.reload();
                    });
                }
                });
                $('#all-modules').easyResponsiveTabs({
                    tabidentify: 'admin-vert',
                    type: 'default',
                    width: 'auto',
                    fit: true,
                    closed: false
                });
            });

            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
            var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl)
            });
        </script>
    </head>
    <body id="<{$xoops_dirname}>" class="<{$xoops_langcode}>">
    <{if $clean_mode==1}>
        <{include file="$theme_tpl/xo_page.tpl" }>
    <{else}>
        <!-- 頁首 -->
        <{include file="$theme_tpl/xo_head.tpl"}>
        <{include file="$theme_tpl/xo_page.tpl"}>
        <{include file="$theme_tpl/xo_footer.tpl"}>
    <{/if}>

    </body>
</html>