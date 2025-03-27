prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>15603563493036865025
,p_default_application_id=>230847
,p_default_id_offset=>23441417749665624718
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(23461917097589478237)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15599294865109
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480272514541978114)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15584297832414
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480272839991978114)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15584297832418
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480273145470978115)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15584297832418
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480273320113978115)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15584297832420
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480273616098978115)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15584297832421
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480273853351978115)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15584297832421
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480274175994978115)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15584297832432
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480274547348978116)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15584297832437
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480274814583978116)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15584297832446
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480275125482978116)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15584297832449
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480275382342978116)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15584297832451
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480275740385978116)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15584297832463
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(80480276010316978117)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15584297832471
);
wwv_flow_imp.component_end;
end;
/
