
{if $action eq 1 or $action eq 2 or $action eq 8}
   {include file="CRM/Admin/Form/StateProvince.tpl"}
{else}

<div>

    {* handle enable/disable actions*}


    <table id="options" class="display">
    <thead>
    <tr>
        <th>{ts domain='com.ixiam.modules.countrymanager'}Name{/ts}</th>
        <th id="nosort">{ts domain='com.ixiam.modules.countrymanager'}Description{/ts}</th>
        <th></th>
    </tr>
    </thead>

    {include file="CRM/common/pager.tpl" location="top"}

    {foreach from=$rows item=row}
      <tr  class="{cycle values="odd-row,even-row"} {$row.class} crm-stateProvince ">
        <td class="crm-stateProvince-name">{ts domain='com.ixiam.modules.countrymanager'}{$row.name}{/ts}</td>
        <td>{$row.action|replace:'xx':$row.id}</td>
    </tr>
    {/foreach}

    </table>
    {include file="CRM/common/pager.tpl" location="bottom"}
    {if $action ne 1 and $action ne 2}
    <div class="action-link">
    <a href="{crmURL q="action=add&reset=1"}" class="button"><span><div class="icon add-icon"></div>{ts domain='com.ixiam.modules.countrymanager'}State/province Region{/ts}</span></a>
    </div>
    {/if}
</div>

{/if}
{if $pager and ( $pager->_totalPages > 1 )}
{literal}
<script type="text/javascript">
  var totalPages = {/literal}{$pager->_totalPages}{literal};
  cj( function ( ) {
    cj("#crm-container .crm-pager input.form-submit").click( function( ) {
      submitPagerData( this );
    });
  });

  function submitPagerData( el ) {
      var urlParams= '';
      var jumpTo   = cj(el).parent( ).children('input[type=text]').val( );
      if ( parseInt(jumpTo)== "Nan" ) jumpTo = 1;
      if ( jumpTo > totalPages ) jumpTo = totalPages;
      {/literal}
      {foreach from=$pager->_linkData item=val key=k }
      {if $k neq 'crmPID' && $k neq 'force' && $k neq 'q' }
      {literal}
        urlParams += '&{/literal}{$k}={$val}{literal}';
      {/literal}
      {/if}
      {/foreach}
      {literal}
      urlParams += '&crmPID='+parseInt(jumpTo);
      var submitUrl = {/literal}'{crmURL p="civicrm/admin/stateprovince" reset="1" action="browse"}'{literal};
      document.location = submitUrl+urlParams;
  }
</script>
{/literal}
{/if}