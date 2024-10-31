
3. **Úkol pro účastníky**:
   - Zkuste vytvořit proměnnou, která obsahuje vaše jméno, a vypište ji pomocí `console.log()`.
   - Vytvořte jednoduchý výpočet, například spočítání plochy obdélníku (délka * šířka), a vypište výsledek.

---

### Cvičení 2: Manipulace s DOM a styly

1. **Prozkoumání struktury HTML pomocí záložky Elements**:
   - Přejděte na záložku **Elements** a najděte libovolný prvek na stránce (např. nadpis nebo odstavec).
   - Klikněte pravým tlačítkem a zvolte **Edit as HTML** pro úpravu HTML kódu daného prvku.

2. **Manipulace se styly pomocí záložky Styles**:
   - Najděte prvek (např. nadpis) a změňte jeho styl. Například nastavte:
     - Barva textu: `color: red;`
     - Velikost písma: `font-size: 24px;`

3. **Úkol pro účastníky**:
   - Změňte text jakéhokoli prvku na stránce na svůj vlastní text.
   - Změňte barvu pozadí stránky nebo určitého prvku.

---

### Cvičení 3: Práce s JavaScriptem v konzoli

1. **Manipulace s prvky stránky pomocí JavaScriptu**:
   - Otevřete konzoli a vložte následující příkaz:
     ```javascript
     document.body.style.backgroundColor = 'lightblue';
     ```
   - Změňte obsah libovolného nadpisu na stránce:
     ```javascript
     document.querySelector('h1').textContent = 'Ahoj, svět!';
     ```

2. **Úkol pro účastníky**:
   - Najděte libovolný obrázek na stránce a změňte jeho zdroj (atribut `src`) na jiný obrázek (můžete použít libovolný URL).
   - Přidejte nové tlačítko do stránky:
     ```javascript
     let button = document.createElement('button');
     button.textContent = 'Klikni na mě';
     document.body.appendChild(button);
     ```

---

### Cvičení 4: Debugging JavaScriptu

1. **Přidání JavaScriptu pro debuggování**:
   - Otevřete webovou stránku a přepněte se do záložky **Sources**.
   - Do konzole vložte následující kód, který obsahuje chybu:
     ```javascript
     function calculateSum(a, b) {
         let result = a + c;  // Záměrná chyba (c není definováno)
         return result;
     }
     calculateSum(5, 10);
     ```

2. **Použití breakpointu**:
   - Vložte breakpoint kliknutím na číslo řádku ve **Sources**.
   - Sledujte, jak prohlížeč zastaví kód na tomto řádku.
   - Prohlédněte si hodnoty proměnných a zjistěte, kde se nachází chyba.

3. **Úkol pro účastníky**:
   - Najděte chybu v kódu a opravte ji tak, aby funkce správně spočítala součet dvou čísel.
   - Vyzkoušejte si použití breakpointu ve vlastním JavaScriptovém kódu.

---

### Cvičení 5: Sledování síťové komunikace (Network)

1. **Prozkoumání síťové aktivity**:
   - Přejděte na záložku **Network** a obnovte stránku (stiskněte `F5`).
   - Sledujte, které soubory se načítají a jak dlouho trvá jejich načtení.

2. **Sledování AJAX požadavků**:
   - Přejděte na libovolnou stránku, která využívá dynamické načítání obsahu (např. sociální sítě).
   - V Network záložce sledujte AJAX požadavky a zjistěte, co vrací server v odpovědi.

3. **Úkol pro účastníky**:
   - Najděte požadavek, který načítá data ve formátu JSON, a prohlédněte si jeho obsah.
   - Zkuste zkopírovat URL některého požadavku a otevřít ho přímo v prohlížeči.

---

### Závěr
Tento lab pokrývá základní funkce Chrome Developer Tools, které jsou pro práci s JavaScriptem velmi užitečné. Účastníci se naučí základní manipulaci s DOM a styly, debugování chyb v JavaScriptu a sledování síťové komunikace. Díky tomu by měli získat solidní přehled o tom, jak pracovat s JavaScriptem přímo v prohlížeči, a lépe pochopí, jak odstraňovat chyby a optimalizovat webové aplikace v Oracle APEX.
