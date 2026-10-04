# integral

Évalue numériquement une intégrale (quadrature adaptative)

## 📝 Syntaxe

- q = integral(fun, a, b)
- q = integral(fun, a, b, nom, valeur)

## 📥 Argument d'entrée

- fun - Fonction à intégrer : handle de fonction.
- a - Borne inférieure d'intégration : scalaire réel (fini ou infini) ou scalaire complexe fini.
- b - Borne supérieure d'intégration : scalaire réel (fini ou infini) ou scalaire complexe fini.
- nom, valeur - Une ou plusieurs paires nom/valeur : 'RelativeTolerance', 'AbsoluteTolerance', 'ArrayValued', 'Vectorized', 'Waypoints'.

## 📤 Argument de sortie

- q - Valeur de l'intégrale.

## 📄 Description

<b>q = integral(fun, a, b)</b> intègre numériquement la fonction <b>fun</b> de <b>a</b> à <b>b</b> par une quadrature de Gauss-Kronrod adaptative globale.

Par défaut, <b>fun</b> est supposée vectorisée : elle doit accepter un vecteur d'abscisses et renvoyer un vecteur de même taille.

Les bornes <b>a</b> et <b>b</b> peuvent être infinies (<b>-Inf</b> et/ou <b>Inf</b>) ; un changement de variable ramène l'intervalle à un intervalle fini.

Si <b>a</b>, <b>b</b> ou un point de passage est complexe, <b>integral</b> calcule l'intégrale le long des segments reliant <b>a</b>, les points de passage dans l'ordre donné, puis <b>b</b>. Les bornes et points de passage complexes doivent être finis.

Les paires nom/valeur suivantes sont prises en charge :

<b>RelativeTolerance</b> (ou <b>RelTol</b>) : tolérance d'erreur relative (défaut <b>1e-6</b>).

<b>AbsoluteTolerance</b> (ou <b>AbsTol</b>) : tolérance d'erreur absolue (défaut <b>1e-10</b>).

<b>integral</b> cherche à satisfaire <b>abs(q - Q) <= max(AbsoluteTolerance, RelativeTolerance \* abs(q))</b> où <b>Q</b> est la valeur exacte.

<b>ArrayValued</b> : si <b>true</b>, <b>fun</b> renvoie un tableau et est évaluée en une abscisse scalaire (défaut <b>false</b>).

<b>Vectorized</b> : si <b>false</b>, <b>fun</b> est écrite pour des entrées scalaires : elle accepte un <b>x</b> scalaire et renvoie un scalaire, et <b>integral</b> l'évalue point par point (défaut <b>true</b>, plus rapide). Ignorée si <b>ArrayValued</b> vaut <b>true</b>.

<b>Waypoints</b> : vecteur de points réels ou complexes finis utilisés dans le maillage initial. Avec des bornes et des points de passage réels, l'intervalle est découpé aux points de passage situés à l'intérieur (leur ordre est sans importance) : ils servent à signaler les discontinuités ou les extrema locaux de la fonction. N'utilisez pas de points de passage pour indiquer des singularités ; découpez plutôt l'intervalle. Des points de passage complexes définissent un contour linéaire par morceaux.

## 💡 Exemples

```matlab
q = integral(@(x) x.^2, 0, 1)
```

```matlab
q = integral(@(x) exp(-x.^2), 0, Inf)
```

```matlab
q = integral(@(x) [1; 1] .* x, 0, 1, 'ArrayValued', true)
```

Singularité en la borne inférieure : tolérances plus strictes

```matlab
format long
q1 = integral(@log, 0, 1)
q2 = integral(@log, 0, 1, 'AbsoluteTolerance', 1e-12, 'RelativeTolerance', 0)
format short
```

Intégrale d'une fonction écrite pour des entrées scalaires

```matlab
fun = @(x) 2*x - x^2;
q = integral(fun, 0, 1, 'Vectorized', false)
```

Intégrale sur un contour complexe défini par des points de passage (chemin fermé autour du pôle z = 1/2)

```matlab
fun = @(z) 1 ./ (2*z - 1);
q = integral(fun, 0, 0, 'Waypoints', [1+1i, 1-1i])
```

## 🔗 Voir aussi

[integral2](../special_functions/integral2.md), [integralInterpolant](../special_functions/integralInterpolant.md), [trapz](../linear_algebra/trapz.md).

## 🕔 Historique

| Version | 📄 Description                                                                                   |
| ------- | ------------------------------------------------------------------------------------------------ |
| 2.0.0   | version initiale                                                                                 |
| 2.0.0   | Option 'Waypoints' et bornes complexes (intégrale sur un contour) ajoutées.                      |
| 2.0.0   | Option 'Vectorized' ajoutée : intégration de fonctions écrites pour des entrées scalaires.       |
| 2.0.0   | Noms 'AbsoluteTolerance' et 'RelativeTolerance' ajoutés ('AbsTol' et 'RelTol' restent acceptés). |

<!--
## 👤 Auteur

Allan CORNET
-->
