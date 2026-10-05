#import "../nelson_help.typ": *

= fitcdiscr <statistics:6_classification.fitcdiscr>

Ajuste un classifieur par analyse discriminante.

== Syntaxe

- #raw("mdl = fitcdiscr(X, Y)");
- #raw("mdl = fitcdiscr(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost] = predict(mdl, Xnew)");

== Description

#strong[fitcdiscr]; cree un objet #strong[ClassificationDiscriminant]; a partir des predicteurs numeriques #strong[X]; et des etiquettes de classe #strong[Y];.

 Les arguments nom-valeur incluent #strong[ClassNames];, #strong[Prior];, #strong[DiscrimType];, #strong[Gamma]; et #strong[Delta];. Les types discriminants pris en charge sont linear, quadratic, diaglinear et diagquadratic. La prediction retourne des scores de classe posterieurs.


== Exemple

``````matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitcdiscr(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.fitcnb>)[fitcnb];, #nlink(<statistics:6_classification.grp2idx>)[grp2idx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
