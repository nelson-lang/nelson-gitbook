# nom=valeur

Nom=valeur syntaxe pour les arguments nom=valeur.

## 📝 Syntaxe

- plot(x, y, LineWidth=2)
- plot(x, y, "LineWidth", 2)

## 📄 Description

À partir de Nelson 1.15.0, les fonctions peuvent accepter des arguments nom-valeur en utilisant la syntaxe <b>nom=valeur</b>.

La nouvelle forme est équivalente à la syntaxe traditionnelle séparée par des virgules et améliore la lisibilité lorsque plusieurs paires nom-valeur apparaissent dans un seul appel.

Utilisez une seule syntaxe par appel autant que possible. Si vous mélangez les deux formes, chaque argument<b>nom=valeur</b> doit venir après les paires séparées par des virgules, par exemple : plot(x, y, "Color", "red", LineWidth=2).

Inverser cet ordre, comme dans plot(x, y, Color="red", "LineWidth", 2), est invalide.

Les noms utilisés avec la syntaxe <b>nom=valeur</b> doivent être des identifiants Nelson valides. Pour les noms contenant des caractères tels que des tirets, continuez à les passer sous forme de paires chaîne/valeur ; par exemple : "allow-empty", true.

## 💡 Exemples

Utilisez la syntaxe nom=valeur pour une meilleure lisibilité.

```matlab

x = 0:0.1:2*pi;
y = sin(x);
plot(x, y, LineWidth=2, Color="red");
title("Sine wave with custom style");

```

Mélangez les syntaxes uniquement en plaçant les arguments nom=valeur en dernier.

```matlab

x = linspace(0, 2*pi, 100);
y = cos(x);
plot(x, y, "LineStyle", "--", LineWidth=1.5);

```

## 🔗 Voir aussi

[function](../interpreter/function.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
