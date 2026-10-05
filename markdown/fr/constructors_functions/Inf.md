# Inf

Infini

## 📝 Syntaxe

- Inf
- inf
- Inf(n)
- Inf(n, m)
- Inf(n, classname)
- Inf(n, m, classname)
- Inf(classname)

## 📥 Argument d'entrée

- n - un entier scalaire : nombre de lignes (et de colonnes si m est omis).
- m - un entier scalaire : nombre de colonnes.
- classname - une chaîne : 'double' (par défaut) ou 'single'.

## 📄 Description


<b>Inf</b> retourne le symbole IEEE Inf (Infini). 

<b>Inf(n)</b> retourne une matrice n-par-n remplie de <b>Inf</b>. 

<b>Inf(n, m)</b> retourne une matrice n-par-m remplie de <b>Inf</b>. 

L'argument optionnel <b>classname</b> sélectionne la classe du résultat et doit valoir <b>'double'</b> (par défaut) ou <b>'single'</b>.

## 💡 Exemples



```matlab
Inf
```


```matlab
-Inf + Inf
```


```matlab
1.e1000
```


## 🔗 Voir aussi

[nan](../constructors_functions/NaN.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
