# namedargs2cell

Convertit une structure contenant des paires nom-valeur en un tableau cellulaire.

## 📝 Syntaxe

- ce = namedargs2cell(st)

## 📥 Argument d'entrée

- st - une structure scalaire.

## 📤 Argument de sortie

- ce - un tableau cellulaire.

## 📄 Description

<b>ce = namedargs2cell(st)</b> renvoie un tableau cellulaire contenant des paires nom-valeur.

## 💡 Exemple

```matlab
S = struct();
S.CharacterEncoding = 'auto';
S.Timeout = 5;
S.Username = "";
S.logical = false;
R = namedargs2cell(S)
```

## 🔗 Voir aussi

[struct2cell](../data_structures/struct2cell.md), [struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
