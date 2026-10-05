#import "../../nelson_help.typ": *

= wordcloud <graphics:1_plots.4_data_distribution_plots.wordcloud>

Display words with sizes proportional to weights.

== Syntax

- #raw("wordcloud(words, sizes)");
- #raw("wordcloud(words)");
- #raw("wordcloud(tbl, wordvar, sizevar)");
- #raw("wordcloud(parent, ...)");
- #raw("h = wordcloud(...)");

== Description

#strong[wordcloud]; creates a word cloud chart whose font sizes are based on numeric weights or category counts and returns a #strong[wordcloud]; graphics object.

 #strong[wordcloud(tbl, wordvar, sizevar)]; uses the table variable #strong[wordvar]; as word labels and #strong[sizevar]; as numeric weights.

 The returned object stores the displayed words in #strong[WordData]; and their weights in #strong[SizeData];.

 The #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.wordcloud.properties>)[wordcloud properties]; page lists the supported object properties.

 Supported properties are #strong[MaxDisplayWords];, #strong[Color];, #strong[HighlightColor];, #strong[Shape];, #strong[LayoutNum];, #strong[SizePower];, #strong[FontName];, #strong[TitleFontName];, #strong[Box];, #strong[Title];, #strong[OuterPosition];, #strong[InnerPosition];, #strong[Position];, #strong[Units];, and #strong[PositionConstraint];.


== Example

Display weighted terms from a table.

``````matlab
terms = {'solver'; 'matrix'; 'plot'; 'graphics'; 'signal'; 'model'; 'tests'; 'data'; 'script'; 'analysis'};
counts = [42; 37; 31; 29; 22; 18; 16; 13; 11; 8];
T = table(terms, counts, 'VariableNames', {'Term', 'Count'});
wordcloud(T, 'Term', 'Count', 'MaxDisplayWords', 8, 'Shape', 'rectangle', 'Color', [0.066 0.443 0.745]);
``````


#align(center)[#image("wordcloud_1.svg")]

== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.wordcloud.properties>)[wordcloud properties];.
