[{assign var="_additionalParams" value=$oView->getAdditionalParams()}]
[{assign var="listType" value=$oView->getListDisplayType()}]

<div class="btn-group">
    <div class="btn btn-default btn-sm dropdown-toggle inner-select-wrapper">
        <strong>[{oxmultilang ident="PRODUCTS_PER_PAGE"}]</strong>
        <select onchange="window.location.href = $( this ).val();">
            [{if !$oViewConf->getArtPerPageCount()}]
                <option selected="true">[{oxmultilang ident="CHOOSE"}]</option>
            [{/if}]
            [{foreach from=$oViewConf->getNrOfCatArticles() item=iItemsPerPage}]
                <option value="[{$oView->getLink()|oxaddparams:"ldtype=$listType&amp;_artperpage=$iItemsPerPage&amp;pgNr=0&amp;$_additionalParams"}]" [{if $oViewConf->getArtPerPageCount() == $iItemsPerPage}]selected="true"[{/if}]>[{$iItemsPerPage}]</option>
            [{/foreach}]
        </select>
    </div>
</div>