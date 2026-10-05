# wordcloud

Afficher des mots avec des tailles proportionnelles aux poids.

## 📝 Syntaxe

- wordcloud(words, sizes)
- wordcloud(words)
- wordcloud(tbl, wordvar, sizevar)
- wordcloud(parent, ...)
- h = wordcloud(...)

## 📄 Description


<b>wordcloud</b> cree un graphique de nuage de mots dont les tailles de police dependent de poids numeriques ou de comptes de categories et retourne un objet graphique <b>wordcloud</b>. 

<b>wordcloud(tbl, wordvar, sizevar)</b> utilise la variable de table <b>wordvar</b> comme libelles et <b>sizevar</b> comme poids numeriques. 

L'objet retourne stocke les mots affiches dans <b>WordData</b> et leurs poids dans <b>SizeData</b>. 

La page [proprietes wordcloud](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.wordcloud.properties.md) liste les proprietes d'objet prises en charge. 

Les proprietes prises en charge sont <b>MaxDisplayWords</b>, <b>Color</b>, <b>HighlightColor</b>, <b>Shape</b>, <b>LayoutNum</b>, <b>SizePower</b>, <b>FontName</b>, <b>TitleFontName</b>, <b>Box</b>, <b>Title</b>, <b>OuterPosition</b>, <b>InnerPosition</b>, <b>Position</b>, <b>Units</b> et <b>PositionConstraint</b>.

## 💡 Exemple

Afficher des termes ponderes depuis une table.

```matlab
terms = {'solver'; 'matrix'; 'plot'; 'graphics'; 'signal'; 'model'; 'tests'; 'data'; 'script'; 'analysis'};
counts = [42; 37; 31; 29; 22; 18; 16; 13; 11; 8];
T = table(terms, counts, 'VariableNames', {'Term', 'Count'});
wordcloud(T, 'Term', 'Count', 'MaxDisplayWords', 8, 'Shape', 'rectangle', 'Color', [0.066 0.443 0.745]);
```
<img src="wordcloud_1.svg" align="middle"/>


## 🔗 Voir aussi

[text](../../../graphics/3_labels_styling/4_labels_annotations/text.md), [proprietes wordcloud](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.wordcloud.properties.md).