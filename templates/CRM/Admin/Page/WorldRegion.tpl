
{if $action eq 1 or $action eq 2 or $action eq 8}
   {include file="CRM/Admin/Form/WorldRegion.tpl"}
{else}

<div>
    {strip}
    {* handle enable/disable actions*}

    <table id="options" class="display">
    <thead>
    <tr>
        <th>{ts domain='com.ixiam.modules.countrymanager'}Name{/ts}</th>
        <th id="nosort">{ts domain='com.ixiam.modules.countrymanager'}Description{/ts}</th>
        <th></th>
    </tr>
    </thead>

    {foreach from=$rows item=row}
        <tr id="row_{$row.id}" class="{cycle values="odd-row,even-row"} {$row.class} crm-worldRegion ">
        <td class="crm-worldRegion-name">{ts domain='com.ixiam.modules.countrymanager'}{$row.name}{/ts}</td>
        <td>{$row.action|replace:'xx':$row.id}</td>
    </tr>
    {/foreach}

    </table>
    {/strip}
    {if $action ne 1 and $action ne 2}
    <div class="action-link">
  <a href="{crmURL q="action=add&reset=1"}" class="button"><span><div class="icon add-icon"></div>{ts domain='com.ixiam.modules.countrymanager'}Add World Region{/ts}</span></a>
    </div>
    {/if}
</div>

{/if}
