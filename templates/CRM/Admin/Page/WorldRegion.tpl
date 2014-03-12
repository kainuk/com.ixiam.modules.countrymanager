

{if $action eq 1 or $action eq 2 or $action eq 8}
   {include file="CRM/Admin/Form/WorldRegion.tpl"}
{else}


<div>
    {strip}
    {* handle enable/disable actions*}  

    
    <table id="options" class="display">
    <thead>
    <tr>
        <th>{ts}Name{/ts}</th>        
        <th id="nosort">{ts}Description{/ts}</th>
        <th></th>
    </tr>
    </thead>
    {foreach from=$rows item=row}
      <tr id="row_{$row.id}" class="{cycle values="odd-row,even-row"} {$row.class} crm-contactType ">
        <td class="crm-worldRegion-name">{ts}{$row.name}{/ts}</td>
        <td class="crm-worldRegion-name">{ts}{$row.id}{/ts}</td>        
        
        <td>{$row.action|replace:'xx':$row.id}</td>
    </tr>
    {/foreach}
    </table>
    {/strip}
    {if $action ne 1 and $action ne 2}
    <div class="action-link">
  <a href="{crmURL q="action=add&reset=1"}" class="button"><span><div class="icon add-icon"></div>{ts}Add World Region{/ts}</span></a>
    </div>
    {/if}
</div>

{/if}
