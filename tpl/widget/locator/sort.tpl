[{block name="widget_locator_sort"}]
    [{if $oView->showSorting()}]
        [{assign var="_listType" value=$oView->getListDisplayType()}]
        [{assign var="_additionalParams" value=$oView->getAdditionalParams()}]
        [{assign var="_artPerPage" value=$oViewConf->getArtPerPageCount()}]
        [{assign var="_sortColumnVarName" value=$oView->getSortOrderByParameterName()}]
        [{assign var="_sortDirectionVarName" value=$oView->getSortOrderParameterName()}]
        <div class="btn-group">
            <div class="btn btn-default btn-sm dropdown-toggle inner-select-wrapper">
                <strong>[{oxmultilang ident="SORT_BY"}]:</strong>
                <select onchange="window.location.href = $( this ).val();">
                    [{if !$oView->getListOrderBy()}]
                        <option selected="true">[{oxmultilang ident="CHOOSE"}]</option>
                    [{/if}]
                    [{foreach from=$oView->getSortColumns() item=sColumnName}]
                        <option [{if $oView->getListOrderBy() == $sColumnName && $oView->getListOrderDirection() == 'desc'}]selected="true"[{/if}] value="[{$oView->getLink()|oxaddparams:"ldtype=$_listType&amp;_artperpage=$_artPerPage&amp;$_sortColumnVarName=$sColumnName&amp;$_sortDirectionVarName=desc&amp;pgNr=0&amp;$_additionalParams"}]">
                            &#9650; [{oxmultilang ident=$sColumnName|upper}]
                        </option>
                        <option [{if $oView->getListOrderBy() == $sColumnName && $oView->getListOrderDirection() == 'asc'}]selected="true"[{/if}] value="[{$oView->getLink()|oxaddparams:"ldtype=$_listType&amp;_artperpage=$_artPerPage&amp;$_sortColumnVarName=$sColumnName&amp;$_sortDirectionVarName=asc&amp;pgNr=0&amp;$_additionalParams"}]">
                            &#9660; [{oxmultilang ident=$sColumnName|upper}]
                        </option>
                    [{/foreach}]
                </select>
            </div>
        </div>
    [{/if}]
[{/block}]