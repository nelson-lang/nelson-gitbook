#import "nelson_help.typ": *

= textscan <stream_manager:textscan>

Lit des données formatées depuis une chaîne ou un fichier.

== Syntaxe

- #raw("C = textscan(chr, format)");
- #raw("C = textscan(fid, format)");
- #raw("C = textscan(__, Name, Value)");
- #raw("[C, position] = textscan(__)");

== Argument d'entrée

/ chr: un vecteur de caractères ou une chaîne scalaire à lire.
/ fid: un identifiant de fichier retourné par fopen. Les données sont lues depuis la position courante jusqu'à la fin du fichier.
/ format: un vecteur de caractères décrivant les spécificateurs de conversion appliqués à chaque champ.
/ Name, Value: une ou plusieurs paires option\/valeur.

== Argument de sortie

/ C: un tableau de cellules avec une cellule par spécificateur de conversion.
/ position: le nombre de caractères lus lorsque la lecture s'est arrêtée.

== Description

#strong[textscan]; lit des données formatées et retourne un tableau de cellules #strong[C];. Chaque cellule contient une colonne de sortie collectée sur toutes les répétitions du format, car le format est appliqué de façon cyclique sur toute l'entrée.

 Les spécificateurs numériques produisent des vecteurs colonnes, tandis que #strong[%s];, #strong[%q]; et #strong[%\[...\]]; produisent des tableaux de cellules de vecteurs de caractères.

 Spécificateurs de conversion pris en charge :

 #strong[%d]; entier signé (int32), #strong[%u]; entier non signé (uint32), #strong[%f]; nombre à virgule flottante (double), #strong[%s]; texte séparé par des espaces ou un délimiteur, #strong[%q]; texte éventuellement entre guillemets, #strong[%c]; un nombre fixe de caractères, #strong[%\[...\]]; et #strong[%\[^...\]]; lecture d'un ensemble de caractères.

 Une largeur de champ peut être indiquée (par exemple #strong[%5d]; ou #strong[%3s];). Un spécificateur préfixé par #strong[\*]; (par exemple #strong[%\*d];) est lu mais non stocké. Un suffixe de taille sélectionne la classe numérique (#strong[%d8];, #strong[%d16];, #strong[%d32];, #strong[%d64];, #strong[%u8]; et #strong[%f32];). Le texte littéral entre les spécificateurs doit correspondre dans l'entrée.

 Options option\/valeur prises en charge :

 #strong[Delimiter]; un vecteur de caractères, ou un tableau de cellules de vecteurs de caractères, utilisé pour séparer les champs.

 #strong[HeaderLines]; le nombre de lignes d'en-tête à ignorer.

 #strong[CollectOutput]; si vrai, les colonnes consécutives de même classe sont concaténées dans un seul tableau.

 #strong[EmptyValue]; la valeur numérique utilisée pour les champs numériques vides.

 #strong[Whitespace]; les caractères traités comme des espaces.

 #strong[MultipleDelimsAsOne]; si vrai, les délimiteurs consécutifs sont traités comme un seul délimiteur.

 #strong[CommentStyle]; un marqueur de commentaire, ou une paire début et fin, dont le texte est ignoré.

 #strong[TreatAsEmpty]; des valeurs textuelles traitées comme des champs numériques vides.

 #strong[EndOfLine]; accepté pour compatibilité ; les caractères de fin de ligne sont toujours traités comme des séparateurs.


== Exemples

``````matlab
C = textscan('1 2 3', '%d')
``````

``````matlab
C = textscan('a,b,c', '%s', 'Delimiter', ',');
C{1}
``````

``````matlab
C = textscan('name:42', '%[^:]:%d')
``````


== Voir aussi

#nlink(<stream_manager:sscanf>)[sscanf];, #nlink(<stream_manager:fscanf>)[fscanf];, #nlink(<stream_manager:fopen>)[fopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
