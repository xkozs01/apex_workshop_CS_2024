prompt --application/shared_components/user_interface/lovs/dept_dname
begin
--   Manifest
--     DEPT.DNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>15603563493036865025
,p_default_application_id=>230847
,p_default_id_offset=>23441417749665624718
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(80532172541067422005)
,p_lov_name=>'DEPT.DNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPT'
,p_return_column_name=>'DEPTNO'
,p_display_column_name=>'DNAME'
,p_default_sort_column_name=>'DNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15584305183706
);
wwv_flow_imp.component_end;
end;
/
