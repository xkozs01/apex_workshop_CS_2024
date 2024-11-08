# Lab: JavaScript v Oracle APEX

V tomto labu si procvičíme práci s JavaScriptem v Oracle APEX. Naučíme se identifikovat položky stránky pomocí inspektoru prohlížeče a zjistíme, jak číst a nastavovat hodnoty těchto položek pomocí JavaScriptu.

## Předpoklady
- Přihlaste se do [apex.oracle.com](https://apex.oracle.com/) pomocí svého účtu.
- Přejděte do sekce Gallery a nainstalujte aplikaci **Sample Dynamic Actions**.

## Kroky

### 1. Otevření aplikace
- Po instalaci aplikace ji spusťte a přejděte na stránku **Disable/Enable** (nachází se v menu aplikace).

### 2. Výběr prvního řádku
- Na stránce **Disable/Enable** vyberte možnost **Edit** (tužku) u prvního řádku.

### 3. Použití inspektoru prohlížeče
- Otevřete vývojářskou konzoli prohlížeče (klávesová zkratka F12).
- Použijte inspektor (nástroj pro prohlížení elementů na stránce) a zkuste najít název položky stránky odpovídající štítku **Name**. Tento název bude obvykle ve formátu `P3_ENAME`.

### 4. Čtení hodnoty pomocí JavaScriptu
- V konzoli prohlížeče zadejte následující příkaz k přečtení aktuální hodnoty položky `P3_ENAME`:

  ```javascript
  $v("P3_ENAME");

### 5. Nastavení hodnoty pomocí JavaScriptu
- Dále zkusíme nastavit novou hodnotu pro `P3_ENAME`. Do konzole prohlížeče zadejte tento příkaz:

  ```javascript
  apex.item("P3_ENAME").setValue("KRAL");


Po spuštění příkazu by se hodnota P3_ENAME měla změnit na KRAL.

### Cvičení 2: Dynamické akce - povolit úpravu / zakázat úpravu pole

1. **Vytvoření nové stránky typu Form**:
   - Přejděte do aplikace **Sample Dynamic Actions**.
   - Vytvořte novou stránku typu **Form** a vyberte tabulku **eba_demo_da_emp** jako zdroj dat.
   
   ![alt text](images/cviceni2_1.png)
   ![alt text](images/cviceni2_2.png)
   ![alt text](images/cviceni2_3.png)

2. **Úprava Page Item `Pxx_JOB`**:
   - Na nové stránce najděte položku `Pxx_JOB` a změňte její typ z **Text Field** na **Select List**.

   ![alt text](images/cviceni2_8.png)
   - Jako zdroj položky `Pxx_JOB` zvolte následující SQL dotaz:

     ```sql
     select distinct job d, job r 
     from eba_demo_da_emp
     order by 1;
     ```

   ![alt text](images/cviceni2_9.png)
3. **Definování nové dynamické akce pro `Pxx_JOB`**:
   - Na položce `Pxx_JOB` vytvořte novou dynamickou akci a pojmenujte ji **Commission for Salesman Only**.

    ![alt text](images/cviceni2_4.png)
   - Nastavte následující parametry pro dynamickou akci:
      - **Event**: `Change`
      - **Client-side Condition**: `Item = Value`
      - **Item**: `Pxx_JOB`
      - **Value**: `SALESMAN`

  ![alt text](images/cviceni2_5.png)

4. **Přidání True Action**:
   - Přidejte **True Action** s následujícími parametry:
      - **Action**: `Enable`
      - **Items**: `Pxx_COMM`

  ![alt text](images/cviceni2_6.png)

5. **Vytvoření opačné akce**:
   - Pravým tlačítkem myši klikněte na **True Action** a vyberte **Create Opposite Action**.

  ![alt text](images/cviceni2_7.png)
   - Tím se automaticky vytvoří **False Action**, která zajistí, že pole `Pxx_COMM` bude zakázáno, pokud není vybráno `SALESMAN`.

6. **Otestování stránky**:
   - Spusťte stránku a otestujte, zda dynamická akce funguje správně:
      - Při výběru **Job = Salesman** by mělo být pole **Commission** povoleno pro úpravy.
      - Pokud je vybrána jiná hodnota, pole **Commission** by mělo být zakázáno.

  ![alt text](images/cviceni2_7.png)


