<div class="container-fluid">
    <div class="row" id="tad_adm_head">
        <div class="col col-xs-4">
            <a href="<{$xoops_url}>/admin.php" <{$toggle|default:''}>="tooltip" <{$placement|default:''}>="bottom" title="<{$smarty.const._TAD_SIMPLE_ADMINISTRATION}>" class="tad_adm_head_title">
                <img src="<{$xoops_url}>/modules/system/themes/tad_simple/img/XOOPS_logo.png" alt="<{$smarty.const._TAD_SIMPLE_ADMINISTRATION}>"  class="align-middle">
            </a>
            <span class="d-none d-sm-inline-block hidden-xs">
            <a href="<{$modpath|default:''}>" <{$toggle|default:''}>="tooltip" <{$placement|default:''}>="bottom" title="<{$smarty.const._TAD_SIMPLE_ADMINISTRATION}>" class="tad_adm_head_title" style="margin-top: 1rem;"><{$modname|default:''}>
            </a>
            </span>
        </div>
        <div class="col col-xs-4">
            <div class="text-center">
                <a href="<{$xoops_url}>" style="z-index:10000;position: relative;">
                    <img src="<{$xoops_url}>/modules/system/themes/tad_simple/img/home.png" alt="<{$smarty.const._YOURHOME}>" style="width: 50px; margin: 7px auto;" <{$toggle|default:''}>="tooltip" <{$placement|default:''}>="bottom" title="<{$smarty.const._YOURHOME}>">
                </a>
            </div>
        </div>
        <div class="col col-xs-4">
            <div class="text-right text-end">
                <a href="<{$xoops_url}>/user.php?op=logout">
                    <img src="<{$xoops_url}>/modules/system/themes/tad_simple/img/logout.png" alt="<{$smarty.const._LOGOUT}>" <{$toggle|default:''}>="tooltip" <{$placement|default:''}>="bottom" title="<{$smarty.const._LOGOUT}>">
                </a>
            </div>
        </div>
    </div>

    <div class="row mobile-head d-sm-none visible-xs">
        <a href="<{$xoops_url}>/admin.php" <{$toggle|default:''}>="tooltip" <{$placement|default:''}>="bottom" title="<{$smarty.const._TAD_SIMPLE_ADMINISTRATION}>" class="tad_adm_head_title">
            <{$modname|default:''}>
        </a>
    </div>

</div>