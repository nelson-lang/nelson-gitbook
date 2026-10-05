# integral2

Évalue numériquement une intégrale double

## 📝 Syntaxe

- q = integral2(fun, xmin, xmax, ymin, ymax)
- q = integral2(fun, xmin, xmax, ymin, ymax, nom, valeur)

## 📥 Argument d'entrée

- fun - Fonction à intégrer : handle de fonction de deux variables.
- xmin, xmax - Bornes d'intégration en x : scalaires réels ou infinis.
- ymin, ymax - Bornes d'intégration en y : scalaires réels ou handles de fonction de x.
- nom, valeur - Une ou plusieurs paires nom/valeur : 'RelativeTolerance', 'AbsoluteTolerance', 'Vectorized', 'Waypoints'.

## 📤 Argument de sortie

- q - Valeur de l'intégrale double.

## 📄 Description


<b>q = integral2(fun, xmin, xmax, ymin, ymax)</b> intègre numériquement la fonction <b>fun(x, y)</b> sur le domaine <b>xmin <= x <= xmax</b> et <b>ymin(x) <= y <= ymax(x)</b>. 

Les bornes en y <b>ymin</b> et <b>ymax</b> peuvent être des scalaires ou des handles de fonction de <b>x</b> pour décrire un domaine non rectangulaire. 

L'intégration utilise une quadrature de Gauss-Kronrod adaptative imbriquée. Les paires nom/valeur <b>RelativeTolerance</b> (défaut <b>1e-6</b>) et <b>AbsoluteTolerance</b> (défaut <b>1e-10</b>) contrôlent la précision ; les anciens noms <b>RelTol</b> et <b>AbsTol</b> restent acceptés. 

Par défaut (<b>Vectorized</b> à <b>true</b>), <b>fun</b> doit accepter des tableaux et opérer élément par élément. Mettez <b>Vectorized</b> à <b>false</b> lorsque <b>fun</b> n'accepte que des arguments scalaires : elle est alors évaluée point par point, ce qui est plus lent. 

<b>Waypoints</b> indique des points d'intérêt du domaine d'intégration, comme des extrema locaux ou des discontinuités, que l'intégrateur utilise dans son maillage initial : un tableau à deux colonnes <b>[x y]</b> de points, ou un tableau de cellules <b>{x y}</b> de vecteurs de grille. L'intervalle en x est découpé aux abscisses x des points de passage, et chaque intervalle en y à leurs ordonnées y. Les points de passage doivent être réels et finis. N'utilisez pas de points de passage pour indiquer des singularités ; découpez plutôt le domaine.

## 💡 Exemples



```matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, 1)
```


```matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, @(x) x)
```
Fonction écrite pour des entrées scalaires

```matlab
fun = @(x, y) log(x^2 + y^2);
q = integral2(fun, 0, 2, 0, 2, 'Vectorized', false)
```
Points de passage sur les points anguleux de la fonction (valeur exacte 0.29 * 0.26)

```matlab
fun = @(x, y) abs(x - 0.3) .* abs(y - 0.6);
q = integral2(fun, 0, 1, 0, 1, 'Waypoints', [0.3, 0.6])
```


## 🔗 Voir aussi

[integral](../special_functions/integral.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | Option 'Vectorized' ajoutée : intégration de fonctions écrites pour des entrées scalaires. |
| 2.0.0   | Noms 'AbsoluteTolerance' et 'RelativeTolerance' ajoutés ('AbsTol' et 'RelTol' restent acceptés). |
| 2.0.0   | Option 'Waypoints' ajoutée : points d'intérêt du domaine d'intégration. |

<!--
## 👤 Auteur

Allan CORNET
-->
