#import "../../nelson_help.typ": *

= wordcloud <graphics:1_plots.4_data_distribution_plots.wordcloud>

Afficher des mots avec des tailles proportionnelles aux poids.

== Syntaxe

- #raw("wordcloud(words, sizes)");
- #raw("wordcloud(words)");
- #raw("wordcloud(tbl, wordvar, sizevar)");
- #raw("wordcloud(parent, ...)");
- #raw("h = wordcloud(...)");

== Description

#strong[wordcloud]; cree un graphique de nuage de mots dont les tailles de police dependent de poids numeriques ou de comptes de categories et retourne un objet graphique #strong[wordcloud];.

 #strong[wordcloud(tbl, wordvar, sizevar)]; utilise la variable de table #strong[wordvar]; comme libelles et #strong[sizevar]; comme poids numeriques.

 L'objet retourne stocke les mots affiches dans #strong[WordData]; et leurs poids dans #strong[SizeData];.

 La page #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.wordcloud.properties>)[proprietes wordcloud]; liste les proprietes d'objet prises en charge.

 Les proprietes prises en charge sont #strong[MaxDisplayWords];, #strong[Color];, #strong[HighlightColor];, #strong[Shape];, #strong[LayoutNum];, #strong[SizePower];, #strong[FontName];, #strong[TitleFontName];, #strong[Box];, #strong[Title];, #strong[OuterPosition];, #strong[InnerPosition];, #strong[Position];, #strong[Units]; et #strong[PositionConstraint];.


== Exemple

Afficher des termes ponderes depuis une table.

``````matlab
terms = {'solver'; 'matrix'; 'plot'; 'graphics'; 'signal'; 'model'; 'tests'; 'data'; 'script'; 'analysis'};
counts = [42; 37; 31; 29; 22; 18; 16; 13; 11; 8];
T = table(terms, counts, 'VariableNames', {'Term', 'Count'});
wordcloud(T, 'Term', 'Count', 'MaxDisplayWords', 8, 'Shape', 'rectangle', 'Color', [0.066 0.443 0.745]);
``````


#align(center)[#image("wordcloud_1.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.wordcloud.properties>)[proprietes wordcloud];.
