{* this template is used for adding/editing Country  *}

<h3>{if $action eq 1}{ts}New Country{/ts}{elseif $action eq 2}{ts}Edit Country{/ts}{else}{ts}Delete Country{/ts}{/if}</h3>
<div class="crm-block crm-form-block crm-contact-type-form-block">
{if $action eq 8}
  <div class="messages status">
    <div class="icon inform-icon"></div>
        {ts}WARNING: {ts}This action cannot be undone.{/ts} {ts}Do you want to continue?{/ts}{/ts}
    </div>
{else}

<table class="form-layout-compressed">
	<tr class="crm-contact-type-form-block-label">
		<td>
			{$form.name.label} {$form.name.html}
		</td>
		<td>
			{$form.region_id.label} {$form.region_id.html}
		</td>

	</tr>
</table>
{/if}

<div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="bottom"}</div>

{if $action ne 1 and $action ne 2 and $action ne 8}
<div class="action-link">
  <a href="{crmURL q="action=add&reset=1"}" class="button"><span><div class="icon add-icon"></div>{ts}Add Region Type{/ts}</span></a>
</div>
{/if}

