# verLessThan

Compare la version d'un produit à une chaîne de version.

## 📝 Syntaxe

- tf = verLessThan(toolboxName, versionString)

## 📥 Argument d'entrée

- toolboxName - une chaîne ou un tableau de caractères : nom du produit.
- versionString - une chaîne de la forme <b>'major[.minor[.revision]]'</b>.

## 📤 Argument de sortie

- tf - un logique : <b>true</b> si la version installée est inférieure à <b>versionString</b>.

## 📄 Description


<b>tf = verLessThan(toolboxName, versionString)</b> renvoie <b>true</b> si la version installée du produit nommé est inférieure à <b>versionString</b>. 

Pour la compatibilité, interroger <b>'matlab'</b> renvoie une version récente afin que les tests de version hérités valent <b>false</b>.

## 💡 Exemple



```matlab
tf = verLessThan('nelson', '0.1')
```


## 🔗 Voir aussi

[ver](../core/ver.md), [isMATLABReleaseOlderThan](../core/isMATLABReleaseOlderThan.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
