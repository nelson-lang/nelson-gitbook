# isfield

Vérifie si un nom de champ existe dans une structure.

## 📝 Syntaxe

- res = isfield(S, name)
- res = isfield(S, C)

## 📥 Argument d'entrée

- S - une structure
- name - une chaîne
- C - un tableau cellulaire

## 📤 Argument de sortie

- res - un logique

## 📄 Description

<b>isfield(S, name)</b> renvoie vrai si<b>name</b> est un nom de champ de <b>S</b>.

## 💡 Exemples

```matlab
S.Nelson = 1;
isfield(S, 'Nel')
isfield(S, 'Nelson')
```

```matlab
S.nel = 1;
S.son = 2;
isfield(S,{ 1, 'nel'; 2, 'son'})
```

## 🔗 Voir aussi

[fieldnames](../data_structures/fieldnames.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
