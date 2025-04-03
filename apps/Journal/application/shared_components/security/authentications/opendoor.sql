prompt --application/shared_components/security/authentications/opendoor
begin
--   Manifest
--     AUTHENTICATION: OpenDoor
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>7476443331034147
,p_default_application_id=>101
,p_default_id_offset=>14191257032676206
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(288191768903339)
,p_name=>'OpenDoor'
,p_scheme_type=>'NATIVE_OPEN_DOOR'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44530794297590
);
wwv_flow_imp.component_end;
end;
/
