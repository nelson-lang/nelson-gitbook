# tdigest

Structure de données t-digest pour une estimation précise des quantiles avec paramètres de compression configurables

## 📝 Syntaxe

- td = tdigest()
- td = tdigest(compression)
- td = tdigest(X)
- td = tdigest(compression, X)

## 📥 Argument d'entrée

- compression - facteur de compression : scalaire entier positif.
- X - un tableau de double, single, entiers, ...

## 📤 Argument de sortie

- td - représentation t-digest des éléments du tableau.

## 📄 Description

<b>td = tdigest(compression, X)</b> renvoie une représentation t-digest des éléments du tableau X.

TDigest est une structure de données pour l'accumulation en ligne précise de statistiques basées sur les rangs telles que les quantiles et les fonctions de distribution cumulées. Elle est particulièrement efficace pour les grands jeux de données et pour estimer des quantiles extrêmes. L'algorithme est décrit en détail dans l'article "Computing Extremely Accurate Quantiles Using t-Digests" de Ted Dunning et Otmar Ertl.

Le t-digest est particulièrement utile pour :

- Grands jeux de données où une estimation des quantiles efficace en mémoire est nécessaire
- Données en flux où les données arrivent en continu
- Quantiles extrêmes précis (comme le 99e centile) même avec une mémoire limitée
- Algorithmes en ligne où vous ne pouvez pas stocker toutes les données

Le facteur de compression (100 dans les exemples) contrôle le compromis entre précision et utilisation de la mémoire - des valeurs plus élevées donnent plus de précision mais utilisent plus de mémoire.

Une fois que vous avez un objet t-digest, vous pouvez ajouter de nouveaux points de données en utilisant l'opérateur<code>+</code>, et calculer des percentiles ou des quantiles en utilisant les méthodes<code>percentile</code>ou<code>quantile</code>.

Pour plus de détails, consultez l'article original référencé dans la bibliographie.

Méthodes disponibles :

- <b>percentile(p)</b> : Retourne la/les valeur(s) au(x) percentile(s) donné(s) <code>p</code> (dans [0, 100]).
- <b>quantile(q)</b> : Retourne la/les valeur(s) au(x) quantile(s) donné(s) <code>q</code> (dans [0, 1]).
- <b>+</b> : Ajoute de nouveaux points de données à l'objet t-digest.

Propriétés :

- <b>compression</b> : Le facteur de compression utilisé pour créer le t-digest.
- <b>totalWeight</b> : Le poids total de tous les centroïdes dans le t-digest.

## Fonction(s) utilisée(s)

algorithme tdigest

## 📚 Bibliographie

https://www.sciencedirect.com/science/article/pii/S2665963820300403

## 💡 Exemples

```matlab
M = rand(1, 15000);
td = tdigest(100, M);
td = td + [1:15000];
td.percentile([5, 50, 95])
td.quantile([0.05 0.5 0.95])
```

streaming updates

```matlab

td = tdigest(100);
while(1)
  td = td + randn();
  td.percentile([5, 50, 95])
end
```

## 🔗 Voir aussi

[mean](../../statistics/mean.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
