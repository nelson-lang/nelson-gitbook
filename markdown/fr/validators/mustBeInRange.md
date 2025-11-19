# mustBeInRange

Vérifie que la valeur se situe dans la plage spécifiée.

## 📝 Syntaxe

- mustBeInRange(value, lower, upper)
- mustBeInRange(value, lower, upper, argPosition)
- mustBeInRange(value, lower, upper, boundflag1)
- mustBeInRange(value, lower, upper, boundflag1, argPosition)
- mustBeInRange(value, lower, upper, boundflag1, boundflag2)
- mustBeInRange(value, lower, upper, boundflag1, boundflag2, argPosition)
- C++: void mustBeInRange(const ArrayOfVector& args, const ArrayOf& lower, const ArrayOf& upper, const std::wstring& boundflag1, const std::wstring& boundflag2, int argPosition)

## 📥 Argument d'entrée

- value - une valeur numérique : scalaire ou matrice
- lower - une valeur numérique ou logique scalaire.
- upper - une valeur numérique ou logique scalaire.
- boundflag1 - 'inclusive', 'exclusive', 'exclude-lower' ou 'exclude-upper'.
- boundflag2 - 'inclusive', 'exclusive', 'exclude-lower' ou 'exclude-upper'.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeInRange</b> vérifie que la valeur se situe dans la plage spécifiée ou renvoie une erreur.

La seule combinaison valide des indicateurs est<b>exclude-lower</b> avec <b>exclude-upper</b>.

## 💡 Exemple

```matlab
mustBeInRange(3, 2, 4)
```

## 🔗 Voir aussi

[mustBeMember](../validators/mustBeMember.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
