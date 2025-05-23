prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>7476443331034147
,p_default_application_id=>101
,p_default_id_offset=>14191257032676206
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28069160809133831)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>44526747268102
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28069531746133835)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>44526747268509
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28069856930133835)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>44526747268543
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28070150553133835)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>44526747268570
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28070448765133836)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>44526747268599
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28070705650133836)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>44526747268627
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28071023589133836)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>44526747268653
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28071262209133837)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>44526747268683
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28071607062133837)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>44526747268723
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28071871649133837)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>44526747268759
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28072162451133838)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>44526747268787
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28072466646133838)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>44526747268838
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(28072839988133838)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>44526747268862
);
wwv_flow_imp.component_end;
end;
/
