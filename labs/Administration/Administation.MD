**Laboratorní úlohy pro administraci Oracle APEX**

### 1. Správa uživatelských účtů a přístupových práv
**Cíl:** Naučit se vytvářet, spravovat a odebírat uživatelské účty a nastavovat oprávnění.

Přihlaste se do https://cloud.oracle.com/

Přejdete na Apex instances

![alt text](image.png)

Vyberte vaši instanci Apexu

Launch APEX

![alt text](image-1.png)



**Úkoly:**  
1. Přihlaste se do Oracle APEX jako administrátor workspace internal. Uživatel admin, heslo - vytvořené v kroku 5 Vytvoření APEX instance. 

![alt text](image-2.png)

2. Vytvořte nového uživatele s rolí "Developer".
![alt text](image-3.png)

![alt text](image-4.png)
3. Přihlaste se jako nově vytvořený uživatel a zkuste vytvořit novou aplikaci
![alt text](image-5.png)

---

### 2. Změna hesel
**Cíl:** Seznámit se s procesem změny hesla a obnovy hesla v APEX.

**Úkoly:**  
1. Přihlaste se jako administator workspace - CS2025_admin
2. Otevřte položku Manage User and Groups
![alt text](image-6.png)
3. Zvolte uživatele CS2025_DEV
![alt text](image-7.png)
4. Změnte mu heslo
5. Zkuste se příhlasit se změněným heslem
6. Lze nastavit povinnost uživatele změnit heslo - checkbox Expire Password


**Ověření:**  
- Přihlaste se s novým heslem a ověřte jeho funkčnost.

---

### 3. Zálohování - Export/Import + Github
**Cíl:** Naučit se zálohovat a obnovovat aplikace a pracovní prostory v APEX.

**Úkoly:**  
* Přihlaste se do APEXu jako CS2025_admin
![alt text](image-8.png)
* Vytvořte novou aplikaci
![alt text](image-9.png)
* Zvolte Export/import
![alt text](image-10.png)
* Export
* Zvolte true pro Readable format, Split into Multiple Files, Original IDs - true
![alt text](image-11.png)
* Zmačkněte Export
![alt text](image-12.png)
* Rozbalte archiv s aplikaci a zkopirujte aplikaci do adresáře s Váším git repositářem, např. ...\GitHub.com\apex_workshop_CS_2024\apps\Journal\
* Nahrejte aplikaci do Gitu
![alt text](image-13.png)
* Udělejte změnu v aplikaci, např. přidejte text na Home page
![alt text](image-14.png)
* Zopakujte export, rozbalte aplikaci do stejného adresáře jako minule, např. např. ...\GitHub.com\apex_workshop_CS_2024\apps\Journal\. 
Podivejte se na změny ve Vášem Git klientu - např. Github Deskop
![alt text](image-15.png)
* Smažte aplikaci
![alt text](image-16.png)
* Zabalte aplikaci z gitu do archivu, např. Journal.zip
* Naimportujte aplikaci zpět do APEXu
![alt text](image-17.png)
* ![alt text](image-18.png)
![alt text](image-19.png)
* Spusťte aplikaci
![alt text](image-20.png)


### 4. Zálohování - Pravidelné zálohy
* Otevřte Worspace Utilities/Manage Backups
![alt text](image-21.png)
* Zvolte aplikaci
![alt text](image-22.png)
* Vytvořte backup
![alt text](image-23.png)
* Stahněte backup
![alt text](image-24.png)
* Proveďtě změnu v aplikaci, např. přidejte novou stránku
![alt text](image-25.png)
![alt text](image-26.png)
* Otevřte Manage backups
![alt text](image-27.png)
* Zvolte Restore Backup
![alt text](image-28.png)
![alt text](image-29.png)
* Zkontrolujte, že nová stránka už v aplikaci není
![alt text](image-30.png)
### 5. Zálohování - počet záloh
* Přihlaste se do workspace Internal
* Manage Instance, Feature Configuration, Application Development,
Number of backups per application
![alt text](image-36.png)

Monitor activity - Backup log
![alt text](image-37.png)


### 6. Zálohování workspace
* Přihlaste se do workspace Internal

* Manage workspaces/Export workspace
![alt text](image-31.png)
![alt text](image-32.png)

![alt text](image-33.png)

![alt text](image-35.png)

![alt text](image-34.png)

Pozor, export workspace obsahuje jenom uživatele workspacu, neobsahuje schémata a aplikace. 



### 4. Bezpečnost / SSO / Autentizace
**Cíl:** Nastavit a konfigurovat způsob autentizace v APEXu.

**Úkoly:**  
1. Přihlaste se jako CS2025_DEV (na změnu autentizace má právo admin a vývojář)
2. App Builder/Aplikace Journal (nebo jakakoliv jiná)
3. Shared Components/Authentication Schemes
![alt text](image-38.png)
4. Vytvořte nové autenikační schéma - zvolte týp Open Door Credentials
![alt text](image-39.png)
![alt text](image-40.png)
5. Spusťte aplikaci s autenikační schématem Oracle APEX Accounts
![alt text](image-41.png)
6. Změnte způsob autentikace na OpenDoor
* Otevřit autenikační schéma OpenDoor, zmačknout *Make Current Scheme*
![alt text](image-42.png)
5. Spusťte aplikaci s autenikační schématem Open Door
![alt text](image-43.png)


