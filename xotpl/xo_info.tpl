<div class="alert alert-success" style="background: #D9F3E2">
    <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_XOOPS}></label>
        <div class="col-sm-6"><{$xoops_version|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_PHP}></label>
        <div class="col-sm-6"><{$lang_php_vesion|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_MYSQL}></label>
        <div class="col-sm-6"><{$lang_mysql_version|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_VERSION_WEB}></label>
        <div class="col-sm-6"><{$lang_web_version|default:''}></div>
    </div>

     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_THEME}></label>
        <div class="col-sm-6"><{$theme_set|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">BootStrap <{$smarty.const._TAD_SIMPLE_VERSION}></label>
        <div class="col-sm-6"><{$bootstrap|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6"><{$smarty.const._TAD_SIMPLE_OS}></label>
        <div class="col-sm-6"><{$lang_os_name|default:''}></div>
    </div>

     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">post_max_size</label>
        <div class="col-sm-6"><{$post_max_size|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">max_input_time</label>
        <div class="col-sm-6"><{$max_input_time|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">max_execution_time</label>
        <div class="col-sm-6"><{$max_execution_time|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">memory_limit</label>
        <div class="col-sm-6"><{$memory_limit|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">upload_max_filesize</label>
        <div class="col-sm-6"><{$upload_max_filesize|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">sql-mode</label>
        <div class="col-sm-6" style="word-break: break-all;"><{$sql_mode|default:''}></div>
    </div>
     <div class="row" style="margin-bottom: 0.5rem;">
        <label class="col-sm-6">SERVER IP</label>
        <div class="col-sm-6"><{$server_ip|default:''}></div>
    </div>
    <div class="row" style="margin-bottom: 0.5rem;">
       <label class="col-sm-6">REMOTE IP</label>
       <div class="col-sm-6"><{$remote_ip|default:''}></div>
   </div>
   <div class="row" style="margin-bottom: 0.5rem;">
      <label class="col-sm-6">HTTP_X_FORWARDED_FOR</label>
      <div class="col-sm-6"><{$forwarded_ip|default:''}></div>
  </div>
</div>
