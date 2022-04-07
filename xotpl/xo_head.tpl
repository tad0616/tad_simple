<div class="container-fluid">
    <div class="row" id="tad_adm_head">
        <div class="col">
            <a href="<{xoAppUrl admin.php}>" <{$toggle}>="tooltip" data-placement="bottom" data-bs-placement="bottom" title="<{$smarty.const._TAD_SIMPLE_ADMINISTRATION}>" class="tad_adm_head_title">
                <img src="<{xoImgUrl img/XOOPS_logo.png}>" alt="<{$smarty.const._TAD_SIMPLE_ADMINISTRATION}>"  class="align-middle">
                <span class="d-none d-sm-inline-block mt-3"><{$modname}></span>
            </a>
        </div>
        <div class="col">
            <div class="text-center">
                <a href="<{xoAppUrl}>">
                    <img src="<{xoImgUrl img/home.png}>" alt="<{$smarty.const._YOURHOME}>" style="width: 50px; margin: 7px auto;" <{$toggle}>="tooltip" data-placement="bottom" data-bs-placement="bottom" title="<{$smarty.const._YOURHOME}>">
                </a>
            </div>
        </div>
        <div class="col">
            <div class="text-right text-end">
                <a href="<{xoAppUrl user.php?op=logout}>">
                    <img src="<{xoImgUrl img/logout.png}>" alt="<{$smarty.const._LOGOUT}>" <{$toggle}>="tooltip" data-placement="bottom" data-bs-placement="bottom" title="<{$smarty.const._LOGOUT}>">
                </a>
            </div>
        </div>
    </div>

    <div class="row mobile-head d-sm-none">
        <a href="<{xoAppUrl admin.php}>" <{$toggle}>="tooltip" data-placement="bottom" data-bs-placement="bottom" title="<{$smarty.const._TAD_SIMPLE_ADMINISTRATION}>" class="tad_adm_head_title">
            <{$modname}>
        </a>
    </div>

</div>