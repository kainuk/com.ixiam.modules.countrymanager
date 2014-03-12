

{if $action eq 1 or $action eq 2 or $action eq 8}
   {include file="CRM/Admin/Form/StateProvince.tpl"}
{else}


<div>
    
    {* handle enable/disable actions*}  

 
    <table id="options" class="display">
    <thead>
    <tr>
        <th>{ts}Name{/ts}</th>        
        <th id="nosort">{ts}Description{/ts}</th>
        <th></th>
    </tr>
    </thead>

    {include file="CRM/common/pager.tpl" location="top"} 
    
    {foreach from=$rows item=row}
      <tr  class="{cycle values="odd-row,even-row"} {$row.class} crm-stateProvince ">
        <td class="crm-stateProvince-name">{ts}{$row.name}{/ts}</td>        
        <td>{$row.action|replace:'xx':$row.id}</td>
    </tr>
    {/foreach}
    
    </table>    
    {include file="CRM/common/pager.tpl" location="bottom"}
    {if $action ne 1 and $action ne 2}
    <div class="action-link">
    <a href="{crmURL q="action=add&reset=1"}" class="button"><span><div class="icon add-icon"></div>{ts}State/province Region{/ts}</span></a>
    </div>
    {/if}
</div>

{/if}
