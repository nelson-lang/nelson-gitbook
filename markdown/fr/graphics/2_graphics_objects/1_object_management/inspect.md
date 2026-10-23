# inspect

Ouvre l'inspecteur de propriétés des objets graphiques.

## 📝 Syntaxe

- inspect
- inspect(obj)
- inspect([obj1 obj2])
- inspect('-close')

## 📥 Argument d'entrée

- obj - Un objet graphique, ou un vecteur d'objets graphiques. Le premier objet est sélectionné dans l'inspecteur ; les autres restent accessibles dans l'explorateur d'objets.

## 📄 Description


<b>inspect</b> ouvre l'inspecteur de propriétés, un panneau intégré à la fenêtre de figure qui liste les propriétés de l'objet sélectionné et permet de les modifier. Le même inspecteur est disponible sur le bureau Qt, la vue web et les versions WebAssembly. 

<b>inspect</b> sans argument ouvre l'inspecteur pour la figure courante. 

<b>inspect(obj)</b> ouvre l'inspecteur et sélectionne <b>obj</b>. Un explorateur d'objets montre la figure, ses axes et leurs enfants (courbes, surfaces, patchs, titres, étiquettes, ...) ; sélectionner une entrée affiche sa liste complète de propriétés. 

Les propriétés modifiables sont présentées avec l'éditeur approprié : une liste déroulante pour les valeurs énumérées, un sélecteur de couleur pour les couleurs, une case à cocher pour les valeurs on/off et un champ de texte pour les nombres, vecteurs et chaînes. Les propriétés en lecture seule sont affichées mais non modifiables. Les valeurs volumineuses ou structurées (par exemple les tableaux de données) sont résumées, par exemple <b>1x100 double</b>. 

Les modifications s'appliquent immédiatement à l'objet. L'inspecteur suit aussi les modifications faites depuis un script ou par interaction souris et clavier, afin que les valeurs affichées restent synchronisées. 

<b>inspect('-close')</b> ferme l'inspecteur de propriétés. 

L'inspecteur de propriétés peut aussi être ouvert depuis la barre d'outils de la figure avec le bouton <b>Properties</b>.

## 💡 Exemples

Inspecter les axes courants d'un tracé.

```matlab

f = figure();
plot(1:10, (1:10) .^ 2);
inspect(gca());
inspect('-close');
close(f);

```
Inspecter un objet tracé précis.

```matlab

f = figure();
p = plot(1:10, sin(1:10), 'LineWidth', 2);
inspect(p);
inspect('-close');
close(f);

```


## 🔗 Voir aussi

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [findobj](../../../graphics/2_graphics_objects/1_object_management/findobj.md), [gca](../../../graphics/2_graphics_objects/1_object_management/gca.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
