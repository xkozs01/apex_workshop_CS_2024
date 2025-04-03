prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>7476443331034147
,p_default_application_id=>101
,p_default_id_offset=>14191257032676206
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(28340653918134463)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(28101811803133914)
,p_default_dialog_template=>wwv_flow_imp.id(28096944339133909)
,p_error_template=>wwv_flow_imp.id(28090332396133902)
,p_printer_friendly_template=>wwv_flow_imp.id(28101811803133914)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(28090332396133902)
,p_default_button_template=>wwv_flow_imp.id(28250623166134059)
,p_default_region_template=>wwv_flow_imp.id(28177046708133983)
,p_default_chart_template=>wwv_flow_imp.id(28177046708133983)
,p_default_form_template=>wwv_flow_imp.id(28177046708133983)
,p_default_reportr_template=>wwv_flow_imp.id(28177046708133983)
,p_default_tabform_template=>wwv_flow_imp.id(28177046708133983)
,p_default_wizard_template=>wwv_flow_imp.id(28177046708133983)
,p_default_menur_template=>wwv_flow_imp.id(28189407500133992)
,p_default_listr_template=>wwv_flow_imp.id(28177046708133983)
,p_default_irr_template=>wwv_flow_imp.id(28167231620133976)
,p_default_report_template=>wwv_flow_imp.id(28209187919134009)
,p_default_label_template=>wwv_flow_imp.id(28248060983134052)
,p_default_menu_template=>wwv_flow_imp.id(28252245601134061)
,p_default_calendar_template=>wwv_flow_imp.id(28252295841134064)
,p_default_list_template=>wwv_flow_imp.id(28238041334134040)
,p_default_nav_list_template=>wwv_flow_imp.id(28246801977134048)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(28246801977134048)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(28244978412134046)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(28133304481133952)
,p_default_dialogr_template=>wwv_flow_imp.id(28110432392133928)
,p_default_option_label=>wwv_flow_imp.id(28248060983134052)
,p_default_required_label=>wwv_flow_imp.id(28249400097134054)
,p_default_navbar_list_template=>wwv_flow_imp.id(28244598238134046)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
