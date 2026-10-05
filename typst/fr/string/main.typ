#import "nelson_help.typ": *

= Type Chaîne

Le module Type Chaîne fournit des outils complets pour créer, manipuler et analyser du texte dans Nelson.

 Il prend en charge la conversion entre tableaux de caractères et tableaux de chaînes, la concaténation, le nettoyage, la justification et la conversion de casse.

 Le module inclut également des fonctions pour rechercher, faire correspondre, remplacer et formater des chaînes, permettant un traitement textuel flexible pour des opérations simples ou avancées.

== Functions

- #nlink(<string:symvar>)[symvar]: Determine les variables d'une expression.
- #nlink(<string:vectorize>)[vectorize]: Insere des operateurs element par element dans une expression texte.

== Creation et conversion de texte

Fonctions pour creer du texte, le formater et convertir entre texte et autres donnees.

=== Functions

- #nlink(<string:1_create_convert_text.append>)[append]: concatène des chaînes horizontalement.
- #nlink(<string:1_create_convert_text.blanks>)[blanks]: crée une chaîne de caractères d'espaces.
- #nlink(<string:1_create_convert_text.char>)[char]: Convertit en tableau de caractères.
- #nlink(<string:1_create_convert_text.compose>)[compose]: Formate les donnees en plusieurs chaines.
- #nlink(<string:1_create_convert_text.convertCharsToStrings>)[convertCharsToStrings]: Convertit des tableaux de caractères en tableaux de chaînes.
- #nlink(<string:1_create_convert_text.convertContainedStringsToChars>)[convertContainedStringsToChars]: Convertit les tableaux de chaines contenus en vecteurs de caracteres.
- #nlink(<string:1_create_convert_text.convertStringsToCharArgs>)[convertStringToCharArgs]: Convertir des tableaux de chaînes en tableaux de caractères ou en cellules de vecteurs de caractères.
- #nlink(<string:1_create_convert_text.convertStringsToChars>)[convertStringsToChars]: Convertit des tableaux de chaînes en tableaux de caractères.
- #nlink(<string:1_create_convert_text.int2str>)[int2str]: Convertit un tableau d'entiers en chaîne
- #nlink(<string:1_create_convert_text.mat2str>)[mat2str]: Conversion matrice -\> chaîne.
- #nlink(<string:1_create_convert_text.newline>)[newline]: Renvoie le caractère de nouvelle ligne.
- #nlink(<string:1_create_convert_text.num2str>)[num2str]: Convertit des nombres en tableau de caractères.
- #nlink(<string:1_create_convert_text.sprintf>)[sprintf]: Écrit des données dans une chaîne.
- #nlink(<string:1_create_convert_text.str2double>)[str2double]: Convertit une chaîne en double.
- #nlink(<string:1_create_convert_text.strcat>)[strcat]: concatène des chaînes horizontalement.
- #nlink(<string:1_create_convert_text.string>)[string]: Constructeur de tableau de chaînes.
- #nlink(<string:1_create_convert_text.strings>)[strings]: Crée un tableau de chaînes vide.

== Proprietes du texte

Fonctions pour verifier le type, la longueur et les proprietes des caracteres.

=== Functions

- #nlink(<string:2_text_properties.isStringScalar>)[isStringScalar]: vérifie si l'entrée est un tableau de chaînes avec un seul élément.
- #nlink(<string:2_text_properties.isletter>)[isletter]: Détermine quels caractères sont des lettres.
- #nlink(<string:2_text_properties.isspace>)[isspace]: Détermine quels caractères sont des espaces.
- #nlink(<string:2_text_properties.isstrprop>)[isstrprop]: Determine les categories de caracteres.
- #nlink(<string:2_text_properties.strlength>)[strlength]: Longueur des chaînes dans un tableau ou une cellule de chaînes.

== Recherche et remplacement

Fonctions pour localiser, compter, effacer et remplacer du texte.

=== Functions

- #nlink(<string:3_find_replace.contains>)[contains]: Vérifie si une chaîne contient un motif.
- #nlink(<string:3_find_replace.count>)[count]: Calcule le nombre d'occurrences d'un motif.
- #nlink(<string:3_find_replace.endsWith>)[endsWith]: vérifie si une chaîne se termine par un motif.
- #nlink(<string:3_find_replace.erase>)[erase]: Efface le texte correspondant.
- #nlink(<string:3_find_replace.eraseBetween>)[eraseBetween]: Efface le texte entre des limites.
- #nlink(<string:3_find_replace.findstr>)[findstr]: Recherche un vecteur de caracteres dans un autre.
- #nlink(<string:3_find_replace.replace>)[replace]: Remplace des sous-chaînes dans une chaîne.
- #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween]: Remplace le texte entre des limites.
- #nlink(<string:3_find_replace.startsWith>)[startsWith]: Vérifie si une chaîne commence par un motif.
- #nlink(<string:3_find_replace.strfind>)[strfind]: Trouve une chaîne dans une autre.
- #nlink(<string:3_find_replace.strmatch>)[strmatch]: Recherche les chaines qui commencent par un texte.
- #nlink(<string:3_find_replace.strrep>)[strrep]: Remplace des sous-chaînes dans une chaîne.

== Motifs

Fonctions de construction de motifs et definitions de limites pour la correspondance de texte.

=== Functions

- #nlink(<string:4_patterns.alphanumericBoundary>)[alphanumericBoundary]: Limite pour le texte alphanumerique.
- #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern]: Motif pour les caracteres alphanumeriques.
- #nlink(<string:4_patterns.asFewOfPattern>)[asFewOfPattern]: Repete le motif le moins de fois possible.
- #nlink(<string:4_patterns.asManyOfPattern>)[asManyOfPattern]: Repete le motif autant de fois que possible.
- #nlink(<string:4_patterns.caseInsensitivePattern>)[caseInsensitivePattern]: Recherche un motif en ignorant la casse.
- #nlink(<string:4_patterns.caseSensitivePattern>)[caseSensitivePattern]: Recherche un motif en tenant compte de la casse.
- #nlink(<string:4_patterns.characterListPattern>)[characterListPattern]: Motif pour les caracteres enumeres.
- #nlink(<string:4_patterns.digitBoundary>)[digitBoundary]: Limite pour le texte numerique.
- #nlink(<string:4_patterns.digitsPattern>)[digitsPattern]: Motif pour les caracteres numeriques.
- #nlink(<string:4_patterns.letterBoundary>)[letterBoundary]: Limite pour le texte alphabetique.
- #nlink(<string:4_patterns.lettersPattern>)[lettersPattern]: Motif pour les caracteres alphabetiques.
- #nlink(<string:4_patterns.lineBoundary>)[lineBoundary]: Motif de debut ou de fin de ligne.
- #nlink(<string:4_patterns.lookAheadBoundary>)[lookAheadBoundary]: Limite avant un motif.
- #nlink(<string:4_patterns.lookBehindBoundary>)[lookBehindBoundary]: Limite apres un motif.
- #nlink(<string:4_patterns.maskedPattern>)[maskedPattern]: Motif avec nom d'affichage.
- #nlink(<string:4_patterns.namedPattern>)[namedPattern]: Motif nomme.
- #nlink(<string:4_patterns.optionalPattern>)[optionalPattern]: Rend le motif optionnel.
- #nlink(<string:4_patterns.pattern>)[pattern]: Objet de motif de texte.
- #nlink(<string:4_patterns.possessivePattern>)[possessivePattern]: Recherche un motif de maniere possessive.
- #nlink(<string:4_patterns.textBoundary>)[textBoundary]: Motif de debut ou de fin de texte.
- #nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary]: Limite pour les espaces.
- #nlink(<string:4_patterns.whitespacePattern>)[whitespacePattern]: Motif pour les caracteres d'espacement.
- #nlink(<string:4_patterns.wildcardPattern>)[wildcardPattern]: Motif pour le texte avec caracteres generiques.

== Expressions regulieres

Recherche, remplacement, traduction et aides de motifs par expressions regulieres.

=== Functions

- #nlink(<string:5_regular_expressions.regexp>)[regexp]: Recherche par expression reguliere.
- #nlink(<string:5_regular_expressions.regexpPattern>)[regexpPattern]: Motif issu d'une expression reguliere.
- #nlink(<string:5_regular_expressions.regexpi>)[regexpi]: Recherche par expression reguliere sans tenir compte de la casse.
- #nlink(<string:5_regular_expressions.regexprep>)[regexprep]: Remplace du texte avec une expression reguliere.
- #nlink(<string:5_regular_expressions.regexptranslate>)[regexptranslate]: Traduit du texte en expression reguliere.

== Joindre, separer et extraire

Fonctions pour extraire des parties de texte et combiner ou separer des valeurs texte.

=== Functions

- #nlink(<string:6_join_split_extract.extract>)[extract]: Extrait le texte correspondant.
- #nlink(<string:6_join_split_extract.extractAfter>)[extractAfter]: Extrait le texte apres une limite.
- #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore]: Extrait le texte avant une limite.
- #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween]: Extrait le texte entre des limites.
- #nlink(<string:6_join_split_extract.join>)[join]: Combine des chaînes.
- #nlink(<string:6_join_split_extract.split>)[split]: Decoupe le texte aux delimiteurs.
- #nlink(<string:6_join_split_extract.splitlines>)[splitlines]: Decoupe le texte aux sauts de ligne.
- #nlink(<string:6_join_split_extract.strjoin>)[strjoin]: Joint le texte avec un delimiteur.
- #nlink(<string:6_join_split_extract.strread>)[strread]: Lit des valeurs depuis un texte.
- #nlink(<string:6_join_split_extract.strsplit>)[strsplit]: Decoupe un vecteur de caracteres aux delimiteurs.
- #nlink(<string:6_join_split_extract.strtok>)[strtok]: Selectionne le premier jeton dans le texte.
- #nlink(<string:6_join_split_extract.strvcat>)[strvcat]: Concatene verticalement le texte.

== Edition de texte

Fonctions pour rogner, completer, inserer, inverser et changer la casse du texte.

=== Functions

- #nlink(<string:7_edit_text.deblank>)[deblank]: Supprime les espaces en fin de chaîne.
- #nlink(<string:7_edit_text.insertAfter>)[insertAfter]: Insere du texte apres une limite.
- #nlink(<string:7_edit_text.insertBefore>)[insertBefore]: Insere du texte avant une limite.
- #nlink(<string:7_edit_text.lower>)[lower]: Convertir du texte en minuscules.
- #nlink(<string:7_edit_text.pad>)[pad]: Complete le texte jusqu'a la largeur demandee.
- #nlink(<string:7_edit_text.reverse>)[reverse]: Inverse les caracteres du texte.
- #nlink(<string:7_edit_text.strip>)[strip]: Supprimer des caracteres en debut et fin de texte.
- #nlink(<string:7_edit_text.strjust>)[strjust]: Justifie les chaînes
- #nlink(<string:7_edit_text.strtrim>)[strtrim]: Supprime les espaces en début et fin de chaîne.
- #nlink(<string:7_edit_text.tolower>)[tolower]: Conversion en minuscules.
- #nlink(<string:7_edit_text.toupper>)[toupper]: Conversion en majuscules.
- #nlink(<string:7_edit_text.upper>)[upper]: Convertir du texte en majuscules.

== Comparaison de texte

Fonctions pour comparer et faire correspondre des valeurs texte.

=== Functions

- #nlink(<string:8_compare_text.matches>)[matches]: Détermine si un motif correspond aux chaînes.
- #nlink(<string:8_compare_text.strcmp>)[strcmp]: Comparaison de chaînes.
- #nlink(<string:8_compare_text.strcmpi>)[strcmpi]: Comparaison de chaînes (insensible à la casse).
- #nlink(<string:8_compare_text.strncmp>)[strncmp]: Compare les n premiers caractères des chaînes.
- #nlink(<string:8_compare_text.strncmpi>)[strncmpi]: Compare les n premiers caractères des chaînes (insensible à la casse).


#nested[
#pagebreak(weak: true)
#include "symvar.typ"
#pagebreak(weak: true)
#include "vectorize.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/append.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/blanks.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/char.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/compose.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertCharsToStrings.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertContainedStringsToChars.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertStringsToCharArgs.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertStringsToChars.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/int2str.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/mat2str.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/newline.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/num2str.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/sprintf.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/str2double.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/strcat.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/string.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/strings.typ"
#pagebreak(weak: true)
#include "2_text_properties/isStringScalar.typ"
#pagebreak(weak: true)
#include "2_text_properties/isletter.typ"
#pagebreak(weak: true)
#include "2_text_properties/isspace.typ"
#pagebreak(weak: true)
#include "2_text_properties/isstrprop.typ"
#pagebreak(weak: true)
#include "2_text_properties/strlength.typ"
#pagebreak(weak: true)
#include "3_find_replace/contains.typ"
#pagebreak(weak: true)
#include "3_find_replace/count.typ"
#pagebreak(weak: true)
#include "3_find_replace/endsWith.typ"
#pagebreak(weak: true)
#include "3_find_replace/erase.typ"
#pagebreak(weak: true)
#include "3_find_replace/eraseBetween.typ"
#pagebreak(weak: true)
#include "3_find_replace/findstr.typ"
#pagebreak(weak: true)
#include "3_find_replace/replace.typ"
#pagebreak(weak: true)
#include "3_find_replace/replaceBetween.typ"
#pagebreak(weak: true)
#include "3_find_replace/startsWith.typ"
#pagebreak(weak: true)
#include "3_find_replace/strfind.typ"
#pagebreak(weak: true)
#include "3_find_replace/strmatch.typ"
#pagebreak(weak: true)
#include "3_find_replace/strrep.typ"
#pagebreak(weak: true)
#include "4_patterns/alphanumericBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/alphanumericsPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/asFewOfPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/asManyOfPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/caseInsensitivePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/caseSensitivePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/characterListPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/digitBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/digitsPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/letterBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/lettersPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/lineBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/lookAheadBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/lookBehindBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/maskedPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/namedPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/optionalPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/pattern.typ"
#pagebreak(weak: true)
#include "4_patterns/possessivePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/textBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/whitespaceBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/whitespacePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/wildcardPattern.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexp.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexpPattern.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexpi.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexprep.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexptranslate.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extract.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extractAfter.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extractBefore.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extractBetween.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/join.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/split.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/splitlines.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strjoin.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strread.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strsplit.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strtok.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strvcat.typ"
#pagebreak(weak: true)
#include "7_edit_text/deblank.typ"
#pagebreak(weak: true)
#include "7_edit_text/insertAfter.typ"
#pagebreak(weak: true)
#include "7_edit_text/insertBefore.typ"
#pagebreak(weak: true)
#include "7_edit_text/lower.typ"
#pagebreak(weak: true)
#include "7_edit_text/pad.typ"
#pagebreak(weak: true)
#include "7_edit_text/reverse.typ"
#pagebreak(weak: true)
#include "7_edit_text/strip.typ"
#pagebreak(weak: true)
#include "7_edit_text/strjust.typ"
#pagebreak(weak: true)
#include "7_edit_text/strtrim.typ"
#pagebreak(weak: true)
#include "7_edit_text/tolower.typ"
#pagebreak(weak: true)
#include "7_edit_text/toupper.typ"
#pagebreak(weak: true)
#include "7_edit_text/upper.typ"
#pagebreak(weak: true)
#include "8_compare_text/matches.typ"
#pagebreak(weak: true)
#include "8_compare_text/strcmp.typ"
#pagebreak(weak: true)
#include "8_compare_text/strcmpi.typ"
#pagebreak(weak: true)
#include "8_compare_text/strncmp.typ"
#pagebreak(weak: true)
#include "8_compare_text/strncmpi.typ"
]
