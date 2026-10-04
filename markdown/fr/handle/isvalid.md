# isvalid

Retourne vrai pour les handles valides.

## 📝 Syntaxe

- res = isvalid(h)

## 📥 Argument d'entrée

- h - un objet handle ou un tableau de handles

## 📤 Argument de sortie

- res - un scalaire logique ou un tableau logique de meme taille que h

## 📄 Description

<b>isvalid</b> renvoie vrai pour les handles valides et faux pour les handles invalides par delete.

Supprimer une variable avec clear n'invalide pas les autres alias vers le meme objet handle.

Pour les tableaux de handles, le resultat a la meme taille que le tableau d'entree.

## 💡 Exemple

Verifier un tableau de handles classdef.

```matlab
d = [tempdir(), 'nelson_help_isvalid/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsValidCounter.m'], ["classdef NelsonHelpIsValidCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
h(3) = NelsonHelpIsValidCounter();
isvalid(h)
delete(h(2));
isvalid(h)
```

## 🔗 Voir aussi

[isa](../types/isa.md).

## 🕔 Historique

| Version | 📄 Description                                  |
| ------- | ----------------------------------------------- |
| 1.0.0   | version initiale                                |
| 2.0.0   | resultat pour les tableaux de handles documente |

<!--
## 👤 Auteur

Allan CORNET
-->
