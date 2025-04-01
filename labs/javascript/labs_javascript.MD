# Lab: Práce s Chrome Developer Tools a základy JavaScriptu

---

### Cvičení 1: Otevření Developer Tools a základy práce s konzolí

V této části se naučíte, jak deklarovat proměnné a používat různé operátory v konzoli webového prohlížeče.
1. **Otevřete Chrome Developer Tools**:
   - Otevřete libovolnou webovou stránku.
   - Stiskněte `F12` nebo použijte kombinaci `Ctrl + Shift + I` (Windows) nebo `Cmd + Option + I` (Mac) pro otevření Developer Tools.

2. **Práce s konzolí**:
   - Přepněte se na záložku **Console**.
   - Do konzole zadejte následující kód. Stisknutím `Enter` se kód v konzoli spustí, `Shift+Enter` vytvoří nový řádek.
     ```javascript
     var var1 = 1;
     var var2 = 2;
     var1 + var2;
     ```
   - Stiskněte šipku nahoru, abyste načetli dříve spuštěný blok kódu. Pomocí šipek nahoru a dolů můžete procházet historii konzole. Upravte kód následovně:
     ```javascript
      var var1 = 1;
      var var2 = 2;

      console.log(var2 - var2);
      console.log(var1 + var2);
     ```

     Jak vidíte, metoda `console.log` vypíše zprávu do konzole, což je užitečné pro jednoduché ladění.
     Poslední příkaz (`console.log`) nevrátil hodnotu, takže se zobrazí undefined, což znamená, že byla vrácena nedefinovaná hodnota.
   - Vraťte se do konzole a zadejte část názvu proměnných deklarovaných v předchozím kódu (např. `var1`). Měla by se zobrazit automatická nabídka doplnění s názvy proměnných `var1` a `var2`.

### Cvičení 2: Proměnné, datové typy, operátory

1. **Vložte následující kód do konzole** a použijte jej jako návod k deklaraci čtyř nových proměnných (každá jiného typu). Po zadání každého příkazu stiskněte `Enter` a zkontrolujte hodnoty proměnných v konzoli:

    ```javascript
    var msg = 'Hello';
    var id = 123;
    var fun = true;
    var things = ['car', 'laptop', msg];
    ```

2. **Přidejte další příkazy s různými operátory** dle následující tabulky. Vyberte alespoň dva příkazy pro každý typ operátoru, dohromady minimálně 8 příkazů.

#### Tabulka 1: Operátory v JavaScriptu

| Typ operátoru | Operátory                  |
|---------------|----------------------------|
| Přiřazení     | =, +=, -=, *=, /=, %=      |
| Aritmetické   | +, -, *, /, %, ++, --      |
| Porovnávací   | ==, ===, !=, !==, >, <, >=, <= |
| Logické       | &&, ||, !                  |

3. **Příklad použití operátorů**:

    ```javascript
    var id2 = 123;
    var id3 = '123';
    id2 == id3;      // porovnání hodnoty
    id2 === id3;     // přísné porovnání typu i hodnoty
    id2 == id3 && id2 === id3; // logický součin
    id2 == id3 || id2 === id3; // logický součet
    let y = id2++;   // id2 se zvýší na 124; y má hodnotu 123
    y = ++id2;       // id2 se zvýší na 125; y má hodnotu 125
    ```

---

### Cvičení 3: Podmínky a smyčky

1. **Podmínky**  
Bez podmínek a smyček není programování možné. V JavaScriptu je klíčové umět pracovat se základním příkazem `if` a se smyčkou `for`.

2. **Vytvořte podmínku `if` pomocí existujících proměnných `msg` a `fun`**. 

    ```javascript
    if (msg === 'bye') {
      fun = false;
    }
    console.log(fun);
    ```

    - Vyzkoušejte přepsat `msg` na `'bye'` a otestujte chování kódu:

    ```javascript
    msg = 'bye';
    fun = true;
    if (msg === 'bye') {
      fun = false;
    }
    console.log(fun);
    ```

3. **Vyzkoušejte si také příkaz `if-else` pro procvičení**.

4. **Přidání smyčky `for`**  
   Přidejte smyčku, která projde hodnoty pole `things` a zobrazí je v konzoli:

    ```javascript
    for (var x = 0; x < things.length; x += 1) {
      console.log(things[x]);
    }
    ```

   ```javascript
    for (let i = 0; i < 5; i++) {
    console.log("Číslo: " + i); // Vypíše čísla 0 až 4
    }
    ```

### Cvičení 4: Objekty a funkce

### Definice objektu a funkce

1. **Vytvořte objekt `person` a funkci `sayHello`**:

    ```javascript
    var person = {
      first: '',
      last: ''
    };

    function sayHello(p) {
      console.log('Hi ' + p.first + ' ' + p.last);
    }
    ```

### Nastavení hodnot a volání funkce

2. **Nastavte hodnoty atributů `first` a `last` a zavolejte funkci `sayHello`**:

    ```javascript
    person.first = 'John';
    person.last = 'Smith';
    sayHello(person);
    ```

---

### Rozšíření – práce s polem objektů

3. **Definujte pole objektů a napište funkci `sayHello2`, která vypíše pozdrav pro každou osobu v poli**:

    ```javascript
    function sayHello2(persons) {
        for (let i = 0; i < persons.length; i++) {
            console.log('Hi ' + persons[i].first + ' ' + persons[i].last);
        }
    }

    let persons = [
      {first: 'Mike', last: 'Tyson'},
      {first: 'Tomas', last: 'Edison'}
    ];

    sayHello2(persons);
    ```

---

### Rozšíření – konstruktor objektu `Person`

4. **Definujte konstruktor pro objekty `Person` a použijte jej**:

    ```javascript
    function Person(first, last) {
        this.first = first;
        this.last = last;
    }

    persons = [
      new Person('Mike', 'Tyson'),
      new Person('Tomas', 'Edison')
    ];

    sayHello2(persons);
    ```    
