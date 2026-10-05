# global

Définit une variable globale.

## 📝 Syntaxe

- global variable\_name
- global(variable\_name)
- global variable\_name1 ... variable\_nameN

## 📥 Argument d'entrée

- variable\_name - une chaîne : nom de variable valide.

## 📄 Description


<b>global</b> déclare une variable comme globale : elle permet d'affecter une valeur à une variable dans une portée de variables spécifiée.

## 💡 Exemple



```matlab
function myfun()
global y;
y = 1;
end

myfun()
who
global y
who
disp(y)
who
clear global y
disp(y)
```


## 🔗 Voir aussi

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
