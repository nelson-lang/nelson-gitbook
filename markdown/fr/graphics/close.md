# close

Ferme une ou plusieurs figures

## 📝 Syntaxe

- close()
- close('all')
- close(name)
- close(ID)
- close(GO)
- tf = close(...)

## 📥 Argument d'entrée

- ID - une valeur entière scalaire : identifiant de la figure.
- GO - un objet graphique scalaire sur une figure existante.
- GO - a scalar graphics object on an existing figure.

## 📤 Argument de sortie

- tf - un scalaire logique : true si la figure a été fermée.

## 📄 Description

<b>close</b> ferme la figure courante.

<b>close(ID)</b> ferme la figure spécifiée par l'identifiant.

<b>close(GO)</b> ferme la figure spécifiée par l'objet graphique de la figure.

<b>close('all')</b> ferme toutes les figures.

## 💡 Exemple

```matlab
f = figure(1)
close();
h = figure(3)
close(h)
f1 = figure()
f2 = figure()
close('all')
```

## 🔗 Voir aussi

[gcf](../graphics/gcf.md), [figure](../graphics/figure.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
