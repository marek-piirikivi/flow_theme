[{assign var="listType" value=$oView->getListDisplayType()}]
[{assign var="_additionalParams" value=$oView->getAdditionalParams()}]
[{assign var="_artPerPage" value=$oViewConf->getArtPerPageCount()}]

[{if $oView->canSelectDisplayType()}]
    <div class="btn-group hidden-xs">
            <div class="btn btn-default btn-sm dropdown-toggle inner-select-wrapper">
                <strong>[{oxmultilang ident="LIST_DISPLAY_TYPE"}]</strong>
                <select onchange="window.location.href = $( this ).val();">
                        <option value="[{$oView->getLink()|oxaddparams:"ldtype=infogrid&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" [{if $listType eq 'infogrid'}]selected="true"[{/if}]>[{oxmultilang ident="infogrid"}]</option>
                        <option value="[{$oView->getLink()|oxaddparams:"ldtype=grid&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" [{if $listType eq 'grid'}]selected="true"[{/if}]>[{oxmultilang ident="grid"}]</option>
                        <option value="[{$oView->getLink()|oxaddparams:"ldtype=line&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" [{if $listType eq 'line'}]selected="true" [{/if}]>[{oxmultilang ident="line"}]</option>
                </select>
            </div>
        </div>
[{/if}]