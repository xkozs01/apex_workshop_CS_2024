prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>7476443331034147
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(13882933098457647)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>44526747345159
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14182689160458381)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
