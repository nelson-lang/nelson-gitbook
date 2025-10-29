# for

boucle for.

## 📝 Syntaxe

- for variable = expression, statements, end
- for variable, statements, end

## 📄 Description

La boucle <b>for</b> exécute un ensemble d'instructions avec une variable d'indice parcourant chaque élément d'un vecteur.

<b>parfor</b> est actuellement un alias du mot-clé <b>for</b>.

## 💡 Exemples

```matlab
for i = 1:10, disp(i), end
```

```matlab
for i = [1, 2; 3 4], disp(i), disp('next'), end
```

## 🔗 Voir aussi

[while](../interpreter/while.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
