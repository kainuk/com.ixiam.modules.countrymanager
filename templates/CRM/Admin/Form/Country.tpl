{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.3                                                |
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC (c) 2004-2013                                |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM.                                    |
 |                                                                    |
 | CiviCRM is free software; you can copy, modify, and distribute it  |
 | under the terms of the GNU Affero General Public License           |
 | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
 |                                                                    |
 | CiviCRM is distributed in the hope that it will be useful, but     |
 | WITHOUT ANY WARRANTY; without even the implied warranty of         |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License and the CiviCRM Licensing Exception along                  |
 | with this program; if not, contact CiviCRM LLC                     |
 | at info[AT]civicrm[DOT]org. If you have questions about the        |
 | GNU Affero General Public License or the licensing of CiviCRM,     |
 | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
 +--------------------------------------------------------------------+
*}
{* this template is used for adding/editing Country  *}

<h3>{if $action eq 1}{ts}New Country{/ts}{elseif $action eq 2}{ts}Edit Country{/ts}{else}{ts}Delete Country{/ts}{/if}</h3>
<div class="crm-block crm-form-block crm-contact-type-form-block">
{if $action eq 8}
  <div class="messages status">
    <div class="icon inform-icon"></div>
        {ts}WARNING: {ts}This action cannot be undone.{/ts} {ts}Do you want to continue?{/ts}{/ts}
    </div>
{else}
<div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="top"}</div>
<table class="form-layout-compressed">
	<tr class="crm-contact-type-form-block-label">
		<td>
			{$form.name.label} {$form.name.html}
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

