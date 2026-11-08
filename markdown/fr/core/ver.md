# ver

Informations de version.

## 📝 Syntaxe

- ver
- ver(name)
- v = ver()
- v = ver(name)

## 📥 Argument d'entrée

- name - une chaîne ou un tableau de caractères : nom du produit.

## 📤 Argument de sortie

- v - un tableau de structures avec les champs <b>Name</b>, <b>Version</b>, <b>Release</b> et <b>Date</b>.

## 📄 Description


<b>ver</b> affiche les informations de version. 

<b>v = ver()</b> renvoie les informations de version dans un tableau de structures avec les champs <b>Name</b>, <b>Version</b>, <b>Release</b> et <b>Date</b>. 

<b>ver(name)</b> limite les informations au produit <b>name</b> (un résultat vide est renvoyé s'il n'est pas installé).

## 💡 Exemple



```matlab
ver
v = ver('Nelson')
```


## 🔗 Voir aussi

[version](../core/version.md), [verLessThan](../core/verLessThan.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
