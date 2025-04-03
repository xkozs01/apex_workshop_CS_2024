prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>7476443331034147
,p_default_application_id=>101
,p_default_id_offset=>14191257032676206
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(14191257032676105)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(28074190131133853)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(28244978412134046)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(28363446363134492)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(28244598238134046)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/
