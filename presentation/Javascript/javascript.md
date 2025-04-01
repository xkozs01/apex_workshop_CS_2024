---
marp: true
theme: 
title:
---
# Základy JavaScriptu

- JavaScript je skriptovací jazyk běžící v prohlížeči.
- Používá se k vytváření dynamických webových stránek.
- Oracle APEX podporuje integraci JavaScriptu pro rozšíření funkcionalit aplikací.
---



# Základní syntaxe JavaScriptu
## Proměnné
```javascript
var a = 10;   // globální proměnná
let b = 20;   // bloková proměnná
const c = 30; // konstantní proměnná
```

---
# Základní syntaxe JavaScriptu
## Funkce
```javascript
function sayHello() {
    console.log("Hello World!"); // Vypíše do konzole
}

sayHello(); // Volání funkce
```

---
# Základní syntaxe JavaScriptu
## Funkce s parametry
```javascript
function add(x, y) { return x + y; } 
let result = add(5, 7); // Vrací 12
```

---
# Základní syntaxe JavaScriptu
## Podmínky
```javascript
let age = 18;
 
if (age >= 18) {
    console.log("Jsi plnoletý.");
} else {
    console.log("Jsi neplnoletý.");
}
```

---
# Základní syntaxe JavaScriptu
## Cykly
```javascript
for (let i = 0; i < 5; i++) {
    console.log("Číslo: " + i); // Vypíše čísla 0 až 4
}
```
---
# Lab - Základy JavaScriptu
[Základy JavaScriptu - GitHub](https://github.com/xkozs01/apex_workshop_CS_2024/blob/main/labs/javascript/labs_javascript.MD)

[Základy JavaScriptu - lokální](../../labs/javascript/labs_javascript.MD)


