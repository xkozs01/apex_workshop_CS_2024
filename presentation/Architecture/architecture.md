---
marp: true
theme: 
title:
---



# Architektura Oracle APEX

---

# 1. Úvod do Oracle APEX

- **Co je Oracle APEX?**
  - Low-code platforma pro tvorbu škálovatelných, bezpečných a vizuálně atraktivních aplikací. 
  - Integrovaná do Oracle Database – využívá PL/SQL a metadata k dynamickému generování stránek.
  - Součást Oracle RAD Stack (ORDS, APEX, Database)
- **Klíčové vlastnosti:**
  - Rychlý vývoj díky deklarativnímu prostředí a předpřipraveným komponentam (Interactive Grid, Interactive Report, další UI komponenty).  
---

# 2. Základní architektura Oracle APEX

- **3-vrstvá architektura:**
![alt text](image.png)
  1. **Webový prohlížeč:** Uživatel zadá URL (např. `http://<hostname>/ords/f?p=<appid>:<pageid>`).
  2. **ORDS:** Překládá požadavky (HTTP requesty) na databázová volání.
  3. **Oracle Database:** APEX engine zpracovává požadavky, generuje a posílá zpět webové stránky
---

# 3. Metadata

* Při vytvoření/rozšíření aplikace APEX ukládá metadata do databázových tabulek pomocí uložených procedur v packagích APEX_xxx
* Engine APEX čte metadata pro zobrazení stránek a zpracování požadavků
* Správa stavu relace (session state) v databázi
* PL/SQL manipuluje daty přímo v databázi
* Výsledky odesílány do prohlížeče jedním API voláním a vraceny jednou odpovědi

---
# 4. Databázová schémata v APEX

- **Základní schémata:**
  1. **APEX_PUBLIC_USER:** Připojení a provoz aplikací (musí být odemčený).
  2. **FLOWS_FILES:** Dočasné soubory (WWV_FLOW_FILE_OBJECTS$).
  3. **APEX_xxxx:** APEX engine a metadata (např. pro verzi 23 APEX_230000).
- **APEX views** - pohledy do metadat, viz APEX_DICTIONARY
- **Aplikační schéma:**
  - Ukládá data a logiku aplikace, přístup pouze přes APEX engine. (např. GUIM schéma v ATM)
---
# 5.1 APEX views
* APEX_DICTIONARY
* Nebo APEX App builder/Workspace Utilities/APEX Views
![alt text](image-1.png)
--- 
# 5.2 APEX views
![w:700 APEX views in Appliction Builder](image-3.png)
---

--- 
# 5.3 APEX views 
```sql
select distinct apex_view_name from APEX_DICTIONARY order by 1;
``` 
<!--
all the locked pages of all the applications in all the workspaces for a particular user
-->
Uzamčené stránky a kdo je uzamčel
```sql
select workspace_display_name
      ,application_id
      ,page_id
      ,locked_by
      ,locked_on
from apex_application_locked_pages

WORKSPACE_ APPLICATION_ID    PAGE_ID LOCKED_BY  LOCKED_ON
---------- -------------- ---------- ---------- ---------
DEMO                      100        1 ADMIN    08-JUN-16
DEMO                      100        2 ADMIN    08-JUN-16
``` 
---
# 5.4 APEX views
Vyber všechny sdílené LOV, které nemají „ORDER BY“.
```sql
select application_id
      ,list_of_values_name
      ,list_of_values_query
from APEX_APPLICATION_LOVS
where upper(lov_type) = 'DYNAMIC'
 and  instr(upper(list_of_values_query),'ORDER BY') = 0
 and  application_id = 100 ;

APPLICATION_ID LIST_OF_VALUES_NAME       LIST_OF_VALUES_QUERY
-------------- ------------------------- -----------------------------------
           100   PRODUCTS                select product_name d, product_id r            
                                         from demo_product_info
```
---

# 5.5 APEX views
Všechny aplikace a jejích autentikační schémata 
```sql
select workspace
      ,application_id appid
      ,application_name name
      ,authentication_scheme auth
from APEX_APPLICATIONS
order by 1,2 ;

WORKSPACE   APPID NAME                          AUTH
---------- ------ ----------------------------- -------------------------------
DEMO          100  Sample Database Application  Application Express Accounts
DEMO          111  Sample Charts                Application Express Accounts
DEMO          112  File Upload Demo             Application Express Authentication
```
---

# 5.6 APEX views
Všechny workspacy, aplikační schémata a datum vytvoření
```sql
select workspace_name
      ,schema
      ,to_char(schema_created,'YYYY/MM/DD HH24:MI:SS') schema_created
from APEX_WORKSPACE_SCHEMAS
order by 1,2;

WORKSPACE_NAME                 SCHEMA     SCHEMA_CREATED
------------------------------ ---------- -------------------
DEMO                           DEMO       2014/01/22 16:05:41
FM                              FM        2016/01/24 14:08:47
FM2                             FM        2016/01/24 14:08:47
                                FM2       2016/01/28 11:55:44
                                TEST      2016/02/16 07:12:38
FM4                             FM4       2016/01/28 12:06:43
```
---
# 6. Spuštění aplikace APEXu

![alt text](image-4.png)

**Funkce `f`:**
  - Databázová funkce v URL (např. `/f?p=<appid>:<pageid>`).
  - Čte metadata v APEX schématu APEX_xxx (např. v APEX_230100) a vola procedury pro dynamické generování stránek.
   - Příklad: `f?p=100:1` znamená aplikace 100, stránka 1.

---
# 7. Connection pool
* Vytváří se při spuštění ORDS (parametr jdbc.MaxLimit v default.xml)
* v$session - seznam aktivních relací (sessions)
```
select sid, module, client_info, client_identifier, status
from   v$session
where username = 'APEX_PUBLIC_USER'
and  status = 'ACTIVE';

SID MODULE                         CLIENT_INFO            CLIENT_IDENTIFIER
--- ------------------------------ ---------------------- --------------------
53  APEX_050000/APEX:APP 4500:1204 3201226568081376:ADMIN ADMIN:27135994032614
```
--- 
# 8. APEX workspaces
<!--
APEX applications are developed in an area called a workspace. Each workspace has an administrator user and can have developer users and runtime users.
-->

![APEX workspaces](image-6.png)

---
# 9. Uživatele APEXu
* APEX admin - workspace internal - vytváří workspacy, správuje celé prostředí
* Workspace admin - vytváří uživatele, spravuje workspace
* Worspace developer - vývoj aplikací
* Runtime uživatel - nemá práva na vývoj

---
# 10. Nasazení APEXu
* apex.oracle.com
* cloud.oracle.com
* notebook
* Instalace na server 
* Instalace na server s dedikovaným webserverm
* Instalace na server s ORDS v Docker kontejneru

---
# 10.1 Nasazení APEXu - notebook
![alt text](image-9.png)

---

# 10.2 Nasazení APEXu - server
![alt text](image-8.png)

---

# 10.3 Nasazení APEXu - server + webserver
![alt text](image-10.png)

---

# 10.4 Nasazení APEXu - server + Docker
![alt text](image-11.png)

---
# Zdroje

- [Dokumentace Oracle](https://docs.oracle.com/en/database/oracle/apex/24.2/htmdb/understanding-oracle-apex.html#GUID-B9B624D1-D934-496B-9334-1F63DA3E06CE)  
- Oracle Application Express Administration: For DBAs and Developers
- [Stánky Oracle APEX](https://apex.oracle.com/en/platform/architecture/)  
- [APEX architectures - Niels DeBruijn](https://www.youtube.com/watch?v=VjksT7XS_8k)
- test source
