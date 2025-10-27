# clf

Efface la figure.

## 📝 Syntaxe

- clf
- clf(f)
- F = clf(...)

## 📥 Argument d'entrée

- f - un objet graphique scalaire sur une figure existante.

## 📤 Argument de sortie

- F - un objet graphique : objet figure utilisé.

## 📄 Description

<b>clf</b> efface la figure courante.

## 💡 Exemple

```matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
clf
```

## 🔗 Voir aussi

[gcf](../graphics/gcf.md), [cla](../graphics/cla.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
