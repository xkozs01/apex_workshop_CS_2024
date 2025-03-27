prompt --application/shared_components/user_interface/lovs/emp_ename1
begin
--   Manifest
--     EMP.ENAME1
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
 p_id=>wwv_flow_imp.id(23453069963743007872)
,p_lov_name=>'EMP.ENAME1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMP'
,p_return_column_name=>'EMPNO'
,p_display_column_name=>'ENAME'
,p_default_sort_column_name=>'ENAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15614495107638
);
wwv_flow_imp.component_end;
end;
/
