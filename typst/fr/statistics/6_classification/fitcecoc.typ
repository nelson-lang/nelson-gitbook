#import "../nelson_help.typ": *

= fitcecoc <statistics:6_classification.fitcecoc>

Ajuste un classifieur multiclasses par codes correcteurs d'erreurs.

== Syntaxe

- #raw("mdl = fitcecoc(X, Y)");
- #raw("mdl = fitcecoc(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Description

#strong[fitcecoc]; cree un objet #strong[ClassificationECOC]; a partir de predicteurs numeriques #strong[X]; et d'etiquettes de classes #strong[Y];.

 Le classifieur actuel utilise des apprenants binaires #strong[fitcsvm]; un-contre-un. Les arguments nom-valeur incluent #strong[ClassNames];, #strong[KernelFunction];, #strong[KernelScale];, #strong[PolynomialOrder];, #strong[BoxConstraint];, #strong[Standardize];, #strong[IterationLimit]; et #strong[Tolerance];.


== Exemple

``````matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcecoc(X, Y);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitcsvm>)[fitcsvm];, #nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.fitctree>)[fitctree];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
