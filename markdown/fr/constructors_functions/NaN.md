# NaN

Crée un Not-a-Number

## 📝 Syntaxe

- NaN
- nan
- NaN(n)
- NaN(n, m)
- NaN(n, classname)
- NaN(n, m, classname)
- NaN(classname)

## 📥 Argument d'entrée

- n - un entier scalaire : nombre de lignes (et de colonnes si m est omis).
- m - un entier scalaire : nombre de colonnes.
- classname - une chaîne : 'double' (par défaut) ou 'single'.

## 📄 Description


<b>NaN</b> retourne le symbole IEEE NaN (Not a Number). 

<b>NaN(n)</b> retourne une matrice n-par-n remplie de <b>NaN</b> ; <b>NaN(n, m)</b>retourne une matrice n-par-m. L'argument optionnel <b>classname</b> doit valoir <b>'double'</b> (par défaut) ou <b>'single'</b>. 

<b>NaN</b> est le résultat d'opérations qui ne produisent pas un résultat numérique bien défini. 

Attention, vous ne devez jamais comparer <b>NaN</b> avec <b>NaN</b>, dans ce cas, veuillez utiliser <b>isnan</b>.

## 💡 Exemples



```matlab
NaN
```


```matlab
3 + NaN
```


```matlab
NaN != NaN
isnan(NaN)
```


## 🔗 Voir aussi

[isnan](../elementary_functions/7_indexing_dimensions/isnan.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
