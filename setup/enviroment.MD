# Jak si zařídit prostředí pro APEX

Pro práci s Oracle APEX je potřeba mít vhodné prostředí. Níže najdete dvě možnosti:

1. **Vytvoření workspace na apex.oracle.com** (snadné, vhodné pro vývoj aplikací)
2. **Založení APEX instance na cloud.oracle.com** (potřebné pro administraci APEXu)

## 1. Vytvoření workspace na apex.oracle.com

Nejrychlejší způsob, jak začít pracovat s Oracle APEX, je vytvoření workspace na [apex.oracle.com](https://apex.oracle.com/).

### Krok za krokem:

1. Otevřete [https://apex.oracle.com/](https://apex.oracle.com/).
2. Klikněte na **Start for free**.
3. Vyberte **Free Sign Up**.
4. Vyplňte formulář:
   - **First Name / Last Name** – Vaše jméno a příjmení
   - **Email Address** – Použijte funkční e-mail (přijde tam potvrzení)
   - **Workspace Name** – Například CS2025
   - **Location** - Czechia
   - **Username** – Například `admin`
   - **Password** – Musí splňovat požadavky na složitost
   - **Purpose** – Můžete napsat "Learning and Development"
5. Odsouhlaste podmínky a klikněte na **Request Workspace**
6. Počkejte na e-mail s potvrzením (obvykle během několika minut).
7. Klikněte na odkaz v e-mailu a dokončete aktivaci workspace.  
   1. Kliknete na **Continue to Sign In Screen**
   2. Vytvořte heslo
   3. Přihlaste se do workspace, 

✅ Hotovo! Nyní můžete přistupovat k APEXu na [apex.oracle.com](https://apex.oracle.com/) s vašimi přihlašovacími údaji.

---

## 2. Založení APEX instance na cloud.oracle.com

Pokud chcete pracovat s administrací APEXu, potřebujete vlastní instanci na **Oracle Cloud**.

### Krok za krokem:

### A) Registrace na Oracle Cloud

1. Otevřete [https://cloud.oracle.com/free](https://cloud.oracle.com/free).
2. Klikněte na **Start for free**.
3. Vyplňte registrační formulář:
   - **Country** – Czechia
   - **First Name / Last Name** – Vaše jméno
   - **Email Address** – Použijte funkční e-mail
   - **Password** – Splňující bezpečnostní požadavky
   - **Company Name** – Můžete napsat "Personal"
   - **Cloud Account Name** – Název účtu (např. vaše jméno)
4. Klikněte na **Verify Email**, potvrďte e-mail.
5. Vyplňte další informace:
   - **Region** – Vyberte nejbližší (např. "Germany Central")
   - **Phone Number** – Zadání telefonního čísla a ověření SMS kódem
   - **Billing Information** – Zadání platební karty (bude účtována částka cca 30 Kč a pak vracena zpět na účet)
6. Dokončete registraci a počkejte na schválení účtu (může trvat několik hodin).

### B) Vytvoření APEX instance

1. Přihlaste se na [https://cloud.oracle.com/](https://cloud.oracle.com/).
2. Do vyhledávání napište *Apex instances*
3. Klikněte na **APEX instances**.
4. Vyberte **Create APEX service**.
5. Vyplňte parametry:
   - **Display Name** – Např. CS2025
   - **Database Name** – Např. CS2025
   - **Database 19c**
   - **Password** – Zadejte heslo pro administrátora a uložte
   - Contact email - Váš email
6. Klikněte na **Create**.
7. Počkejte na vytvoření instance  (cca 5-10 minut).
8. Po dokončení přejděte na detail instance a klikněte na **Launch APEX**
9. Přihlaste se admin heslem.
10. Vytvořte workspace - New instance
    1. **Workspace name** - CS2025
    2. **Workspace username** - CS2025\_admin
    3. **Workspace password -** vytvořte heslo

✅ Hotovo! Nyní máte vlastní instanci APEX v Oracle Cloud.

