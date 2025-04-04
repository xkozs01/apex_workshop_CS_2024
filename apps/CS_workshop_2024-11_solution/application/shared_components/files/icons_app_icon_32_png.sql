prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 230847
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>15603563493036865025
,p_default_application_id=>230847
,p_default_id_offset=>23441417749665624718
,p_default_owner=>'WKSP_CS2025'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000210494441545847ED94C14BDB6018C69FA469D7A0B35AEAB42B8E2A05998A38D039058797811B78189B27EFA2F4A0A0F3208C89';
wwv_flow_imp.g_varchar2_table(2) := '78F0E641646317C1AB88070FFE01A232118B072B298865A3D36C2DACB525D5A4897C1F2CA0EE9004C310F25EBE4BBEEFF9BDCFFBE465C4C1F71AFE63310E80E380E3C0BD7640948A70B32CFC0F3C963789E53D40C4031D9DB8504B28C6F62D435802B854';
wwv_flow_imp.g_varchar2_table(3) := '5548A13AD43436D2CE4541009FFA010FCB9A76C212C0D19F2C1E3F6DBA2626264F107673A6214C0390EEFD1FA6C0DF00908EE2389B9B45B99B33E5826980F3873E34CC2F50919FCB4BF47CF4A61F5C2000612C0A7FFEDC5E00E57917824323201DE70E62';
wwv_flow_imp.g_varchar2_table(4) := '50350DD5AFFA28C0E9D7CFE07677EC05505FF7A3E6DD00152110A4FE8E23F96511657BDFEC0528B477223C1CFDA788B8BA027663DD3E80BCACA0D4DC82C8E4141551D2697A12FB49C5A73F823F39361544C32124E977B53E433E934678749C8ADE1C4162';
wwv_flow_imp.g_varchar2_table(5) := '620C5C551598846018C23040C6CB23F4A20BB224A1E2EDC02D00E2466E6D056E9E47727B1BB5974543A3300C900D86F4CD9712044446C721FFFEA587303EF309750DF5FA66F49DA6EC03F81EDB47A0BB07154DCD5424173F4476670BC1B636FB0188BDE5';
wwv_flow_imp.g_varchar2_table(6) := '853C0A8A82CA97BD50340D175B9B740533E17AF82211641209DCB903671E2FBCB28C4AADA45B4BFE0A8F8BD5F73F096A967141E2383C29C9773B0243AF59F8C870082DBC6DE88A03E038E0387005CAC60B106FAFED5F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(80480569503967978329)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
