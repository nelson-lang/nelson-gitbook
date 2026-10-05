#import "../nelson_help.typ": *

= fitcnb <statistics:6_classification.fitcnb>

Ajuste un classifieur naive Bayes.

== Syntaxe

- #raw("mdl = fitcnb(X, Y)");
- #raw("mdl = fitcnb(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost] = predict(mdl, Xnew)");

== Description

#strong[fitcnb]; cree un objet #strong[ClassificationNaiveBayes]; a partir des predicteurs numeriques #strong[X]; et des etiquettes de classe #strong[Y];.

 L'implementation courante ajuste des distributions normales pour les predicteurs. Les arguments nom-valeur incluent #strong[ClassNames];, #strong[Prior];, #strong[DistributionNames]; et #strong[Weights];. La prediction retourne des scores de classe posterieurs.


== Exemple

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcnb(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.grp2idx>)[grp2idx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
