prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>7476443331034147
,p_default_application_id=>101
,p_default_id_offset=>14191257032676206
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000021649444154584763CC6B9DF19F610001E3A80346436034048674087CFDFC918199998581838B9BEC9284EC720064B9A1B63AC3';
wwv_flow_imp.g_varchar2_table(2) := 'DF3FBF19AEDE7944B623C872C0DFBF7F18C40578185495E4C13EBF7DEF21C3CB0F5FC0A1412A20CB016F5F3E6550575146B1EBE1E3C70C1CBC82243B826407807C9F11E1CDA02A2F8DE280DB0F9F324C5DB291818D9D83A44020D9015C6CCC0C0D79F160';
wwv_flow_imp.g_varchar2_table(3) := '4B566FDB0FA69DAD4D1884F87919EAFAE732FCF8CB485B07E8ABCA3144FBBB30807C7CEDF67D86FFFFFE31D8991B821DB074E31E868BB71FD1D601F6C69A0CDE8E9690C4F7F029988645C7C2B5DB19AEDE7F4E5B07682B4A32C4077B62B564EBFEE30C07';
wwv_flow_imp.g_varchar2_table(4) := 'CF5EA79D037EFDFCC1A02223CE90131F0CB6E4DDC7CF601A14FC20D0336B29C393D71F494A8844274250EAD754946178F7FE03434A842FD852F428689ABC80819F979BE1FED3D7443B826807B030FC6130D5D766F8FEE32783879D29860340A1B1E3D069';
wwv_flow_imp.g_varchar2_table(5) := '064E0E768693E72E31FC6366272A2A887680082F07BCE4BB75F73E436AA43FC3DB0F9FE089B06FF63206450544C9F8E6F30FDA39E0C2951B0C66065A0C6A4A72604B6EDD7BC470F6CA4D065D0D5578D14C33078082F7C79FFF0CBF7FFD64B030D062F8F7';
wwv_flow_imp.g_varchar2_table(6) := 'EF1FC3D9AB77189898991964C485191465A518EE3E78CC40750730FDFDC9F0EF3F2303030B1B3C6841B9829985055EFE83122AC3DFDF0CCC0CFF1818D888ABA2894E03444528198A461D301A02A32130E0210000A2D90770FE8B8E5D0000000049454E44';
wwv_flow_imp.g_varchar2_table(7) := 'AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(28364406135134520)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
