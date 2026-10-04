# integralInterpolant

Intégrale définie à borne supérieure variable (objet interpolant d'intégrale)

## 📝 Syntaxe

- F = integralInterpolant(integrand, lower, upper)
- F = integralInterpolant(integrand, lower, upper, nom, valeur)
- Fq = F(xq)

## 📥 Argument d'entrée

- integrand - handle de la fonction à intégrer, avec les mêmes exigences que pour <b>integral</b>.
- lower - borne inférieure d'intégration : scalaire réel, fini ou infini.
- upper - borne supérieure d'intégration : scalaire réel, fini ou infini, différent de <b>lower</b>. Elle peut être inférieure à <b>lower</b> (intégration à rebours).
- nom, valeur - une ou plusieurs paires nom/valeur : 'AbsoluteTolerance' (défaut 1e-10), 'RelativeTolerance' (défaut 1e-6), 'ArrayValued' (défaut false), 'Vectorized' (défaut true), 'Waypoints' (vecteur de points réels utilisés dans le maillage initial).
- xq - tableau numérique réel de points de requête.

## 📤 Argument de sortie

- F - un objet integralInterpolant.
- Fq - valeurs de l'intégrale de <b>lower</b> à chaque point de requête : un tableau de la taille de <b>xq</b> ou, si <b>ArrayValued</b> vaut true, un tableau avec une ligne par point de requête.

## 📄 Description

<b>integralInterpolant</b> évalue une intégrale définie à borne supérieure variable : l'objet renvoyé <b>F</b> donne <b>F(x)</b>, l'intégrale de <b>integrand</b> de <b>lower</b> à <b>x</b>, pour tout <b>x</b> compris entre <b>lower</b> et <b>upper</b>.

L'intégrale de <b>lower</b> à <b>upper</b> est calculée une seule fois par la quadrature de Gauss-Kronrod adaptative de <b>integral</b>. La requête <b>F(xq)</b> ajoute les sommes partielles des intervalles du maillage situés avant chaque point de requête à la règle de Gauss-Kronrod appliquée sur la partie de l'intervalle qui le contient ; les valeurs obtenues ont donc la précision de l'intégrale. Les points de requête hors de l'intervalle d'intégration renvoient <b>NaN</b>.

L'objet possède les propriétés en lecture seule <b>Integrand</b>, <b>LowerLimit</b>, <b>UpperLimit</b>, <b>Integral</b> (valeur de l'intégrale de <b>lower</b> à <b>upper</b>), <b>ErrorBound</b> (majorant approché de l'erreur absolue), <b>AbsoluteTolerance</b>, <b>RelativeTolerance</b> et <b>Subintervals</b> (vecteur ligne des points du maillage, de <b>lower</b> à <b>upper</b>, points de passage inclus). <b>F(F.Subintervals)</b> renvoie les sommes partielles de l'intégrale.

Indiquez les discontinuités de la fonction avec <b>Waypoints</b>. N'utilisez pas de points de passage pour indiquer des singularités aux bornes d'intégration. Pour des évaluations plus rapides mais moins précises, échantillonnez <b>F</b> et construisez un <b>griddedInterpolant</b>.

## 💡 Exemples

Intégrale de 1 + cos(x)^2 à borne supérieure variable.

```matlab
f = @(x) 1 + cos(x).^2;
F = integralInterpolant(f, 0, 5)
xq = linspace(1, 3, 5);
Fq = F(xq)
```

Intégrale impropre.

```matlab
f = @(x) x.^5 .* exp(-x) .* sin(x);
F = integralInterpolant(f, 0, Inf, 'RelativeTolerance', 1e-8, 'AbsoluteTolerance', 1e-13);
Fq = F([0 Inf])
```

Sommes partielles d'une fonction à valeurs tableau.

```matlab
k = 1:5;
f = @(x) sin(k * x);
F = integralInterpolant(f, 0, 1, 'ArrayValued', true);
partialSums = F(F.Subintervals(end-5:end))
```

Conversion en interpolant sur grille.

```matlab
f = @(x) x.^x;
F = integralInterpolant(f, 1, 2);
x = linspace(1, 2, 11);
G = griddedInterpolant(x, F(x), 'cubic');
Fq = F(1.88)
Gq = G(1.88)
```

## 🔗 Voir aussi

[integral](../special_functions/integral.md), [cumtrapz](../linear_algebra/cumtrapz.md), [griddedInterpolant](../special_functions/griddedInterpolant.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
