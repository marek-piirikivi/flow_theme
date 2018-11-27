[{assign var="oSelections" value=$oSelectionList->getSelections()}]

[{if $oSelections}]
    <div class="selectbox dropDown">
        [{if !$blHideLabel}]
            <p class="variant-label"><strong>[{$oSelectionList->getLabel()}][{oxmultilang ident="COLON"}]</strong></p>
        [{/if}]
            [{assign var="oActiveSelection" value=$oSelectionList->getActiveSelection()}]
            [{if $editable !== false}]
                <div class="[{$sJsAction}] variant-dropdown-menu-wrapper">
                    <select class="btn btn-default btn-sm dropdown-toggle variant-dropdown-menu">
                        <option value="">
                        [{if $sFieldName == "sel"}]
                            [{oxmultilang ident="PLEASE_CHOOSE"}]
                        [{else}]
                            [{$oSelectionList->getLabel()}] [{oxmultilang ident="CHOOSE_VARIANT"}]
                        [{/if}]
                        </option>

                        [{foreach from=$oSelections item=oSelection}]
                            <option [{if $oSelection->isDisabled()}]disabled[{/if}] value="[{$oSelection->getValue()}]" [{if $oSelection->isActive()}]selected="true"[{/if}]>
                                [{$oSelection->getName()}]
                            </option>
                        [{/foreach}]
                    </select><i class="fa fa-angle-down"></i>
                </div>
                <input type="hidden" name="[{$sFieldName|default:"varselid"}][[{$iKey}]]" value="[{if $oActiveSelection}][{$oActiveSelection->getValue()}][{/if}]">
            [{/if}]
    </div>
[{/if}]
