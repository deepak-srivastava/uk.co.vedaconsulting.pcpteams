<div class="view-content">

  {if $pcpInfo}
    <div id="ltype">
      {strip}

      <table class="selector">
        <tr class="columnheader">
          <th>{ts}Pcp Title{/ts}</th>
          <th>{ts}Support of{/ts}</th>
          <th>{ts}Goal{/ts}</th>
          <th>{ts}Amount Raised{/ts}</th>
          <th>{ts}Action{/ts}</th>
        </tr>

        {foreach from=$pcpInfo item=row}
        <tr class="{cycle values="odd-row,even-row"} {$row.class}">
              <td class="bold">
                {if $row.page_url}
                  <a  href="{$row.page_url}" title="{ts}Preview your Personal Campaign Page{/ts}">{$row.title}</a>
                {else}
                  {$row.title}
                {/if}
              </td>
              <td>{$row.page_title}</td>
              <td align="right">{$row.goal_amount|crmMoney}</td>
              <td align="right">{$row.amount_raised|crmMoney}</td>
              <td>{$row.action|replace:'xx':$row.pcpId}</td>
        </tr>
        {/foreach}
      </table>
    {/strip}
    </div>
  {else}
    <div class="messages status no-popup">
      <div class="icon inform-icon"></div>
      {ts}You do not have any active fundraising pages yet.{/ts}
    </div>
  {/if}

</div>
