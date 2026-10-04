# Type Chaîne

Le module Type Chaîne fournit des outils complets pour créer, manipuler et analyser du texte dans Nelson.

Il prend en charge la conversion entre tableaux de caractères et tableaux de chaînes, la concaténation, le nettoyage, la justification et la conversion de casse.

Le module inclut également des fonctions pour rechercher, faire correspondre, remplacer et formater des chaînes, permettant un traitement textuel flexible pour des opérations simples ou avancées.

## Creation et conversion de texte

Fonctions pour creer du texte, le formater et convertir entre texte et autres donnees.

### Functions

- [append](1_create_convert_text/append.md) - concatène des chaînes horizontalement.
- [blanks](1_create_convert_text/blanks.md) - crée une chaîne de caractères d'espaces.
- [char](1_create_convert_text/char.md) - Convertit en tableau de caractères.
- [compose](1_create_convert_text/compose.md) - Formate les donnees en plusieurs chaines.
- [convertCharsToStrings](1_create_convert_text/convertCharsToStrings.md) - Convertit des tableaux de caractères en tableaux de chaînes.
- [convertContainedStringsToChars](1_create_convert_text/convertContainedStringsToChars.md) - Convertit les tableaux de chaines contenus en vecteurs de caracteres.
- [convertStringToCharArgs](1_create_convert_text/convertStringsToCharArgs.md) - Convertir des tableaux de chaînes en tableaux de caractères ou en cellules de vecteurs de caractères.
- [convertStringsToChars](1_create_convert_text/convertStringsToChars.md) - Convertit des tableaux de chaînes en tableaux de caractères.
- [int2str](1_create_convert_text/int2str.md) - Convertit un tableau d'entiers en chaîne
- [mat2str](1_create_convert_text/mat2str.md) - Conversion matrice -> chaîne.
- [newline](1_create_convert_text/newline.md) - Renvoie le caractère de nouvelle ligne.
- [num2str](1_create_convert_text/num2str.md) - Convertit des nombres en tableau de caractères.
- [sprintf](1_create_convert_text/sprintf.md) - Écrit des données dans une chaîne.
- [str2double](1_create_convert_text/str2double.md) - Convertit une chaîne en double.
- [strcat](1_create_convert_text/strcat.md) - concatène des chaînes horizontalement.
- [string](1_create_convert_text/string.md) - Constructeur de tableau de chaînes.
- [strings](1_create_convert_text/strings.md) - Crée un tableau de chaînes vide.

## Proprietes du texte

Fonctions pour verifier le type, la longueur et les proprietes des caracteres.

### Functions

- [isStringScalar](2_text_properties/isStringScalar.md) - vérifie si l'entrée est un tableau de chaînes avec un seul élément.
- [isletter](2_text_properties/isletter.md) - Détermine quels caractères sont des lettres.
- [isspace](2_text_properties/isspace.md) - Détermine quels caractères sont des espaces.
- [isstrprop](2_text_properties/isstrprop.md) - Determine les categories de caracteres.
- [strlength](2_text_properties/strlength.md) - Longueur des chaînes dans un tableau ou une cellule de chaînes.

## Recherche et remplacement

Fonctions pour localiser, compter, effacer et remplacer du texte.

### Functions

- [contains](3_find_replace/contains.md) - Vérifie si une chaîne contient un motif.
- [count](3_find_replace/count.md) - Calcule le nombre d'occurrences d'un motif.
- [endsWith](3_find_replace/endsWith.md) - vérifie si une chaîne se termine par un motif.
- [erase](3_find_replace/erase.md) - Efface le texte correspondant.
- [eraseBetween](3_find_replace/eraseBetween.md) - Efface le texte entre des limites.
- [findstr](3_find_replace/findstr.md) - Recherche un vecteur de caracteres dans un autre.
- [replace](3_find_replace/replace.md) - Remplace des sous-chaînes dans une chaîne.
- [replaceBetween](3_find_replace/replaceBetween.md) - Remplace le texte entre des limites.
- [startsWith](3_find_replace/startsWith.md) - Vérifie si une chaîne commence par un motif.
- [strfind](3_find_replace/strfind.md) - Trouve une chaîne dans une autre.
- [strmatch](3_find_replace/strmatch.md) - Recherche les chaines qui commencent par un texte.
- [strrep](3_find_replace/strrep.md) - Remplace des sous-chaînes dans une chaîne.

## Motifs

Fonctions de construction de motifs et definitions de limites pour la correspondance de texte.

### Functions

- [alphanumericBoundary](4_patterns/alphanumericBoundary.md) - Limite pour le texte alphanumerique.
- [alphanumericsPattern](4_patterns/alphanumericsPattern.md) - Motif pour les caracteres alphanumeriques.
- [asFewOfPattern](4_patterns/asFewOfPattern.md) - Repete le motif le moins de fois possible.
- [asManyOfPattern](4_patterns/asManyOfPattern.md) - Repete le motif autant de fois que possible.
- [caseInsensitivePattern](4_patterns/caseInsensitivePattern.md) - Recherche un motif en ignorant la casse.
- [caseSensitivePattern](4_patterns/caseSensitivePattern.md) - Recherche un motif en tenant compte de la casse.
- [characterListPattern](4_patterns/characterListPattern.md) - Motif pour les caracteres enumeres.
- [digitBoundary](4_patterns/digitBoundary.md) - Limite pour le texte numerique.
- [digitsPattern](4_patterns/digitsPattern.md) - Motif pour les caracteres numeriques.
- [letterBoundary](4_patterns/letterBoundary.md) - Limite pour le texte alphabetique.
- [lettersPattern](4_patterns/lettersPattern.md) - Motif pour les caracteres alphabetiques.
- [lineBoundary](4_patterns/lineBoundary.md) - Motif de debut ou de fin de ligne.
- [lookAheadBoundary](4_patterns/lookAheadBoundary.md) - Limite avant un motif.
- [lookBehindBoundary](4_patterns/lookBehindBoundary.md) - Limite apres un motif.
- [maskedPattern](4_patterns/maskedPattern.md) - Motif avec nom d'affichage.
- [namedPattern](4_patterns/namedPattern.md) - Motif nomme.
- [optionalPattern](4_patterns/optionalPattern.md) - Rend le motif optionnel.
- [pattern](4_patterns/pattern.md) - Objet de motif de texte.
- [possessivePattern](4_patterns/possessivePattern.md) - Recherche un motif de maniere possessive.
- [textBoundary](4_patterns/textBoundary.md) - Motif de debut ou de fin de texte.
- [whitespaceBoundary](4_patterns/whitespaceBoundary.md) - Limite pour les espaces.
- [whitespacePattern](4_patterns/whitespacePattern.md) - Motif pour les caracteres d'espacement.
- [wildcardPattern](4_patterns/wildcardPattern.md) - Motif pour le texte avec caracteres generiques.

## Expressions regulieres

Recherche, remplacement, traduction et aides de motifs par expressions regulieres.

### Functions

- [regexp](5_regular_expressions/regexp.md) - Recherche par expression reguliere.
- [regexpPattern](5_regular_expressions/regexpPattern.md) - Motif issu d'une expression reguliere.
- [regexpi](5_regular_expressions/regexpi.md) - Recherche par expression reguliere sans tenir compte de la casse.
- [regexprep](5_regular_expressions/regexprep.md) - Remplace du texte avec une expression reguliere.
- [regexptranslate](5_regular_expressions/regexptranslate.md) - Traduit du texte en expression reguliere.

## Joindre, separer et extraire

Fonctions pour extraire des parties de texte et combiner ou separer des valeurs texte.

### Functions

- [extract](6_join_split_extract/extract.md) - Extrait le texte correspondant.
- [extractAfter](6_join_split_extract/extractAfter.md) - Extrait le texte apres une limite.
- [extractBefore](6_join_split_extract/extractBefore.md) - Extrait le texte avant une limite.
- [extractBetween](6_join_split_extract/extractBetween.md) - Extrait le texte entre des limites.
- [join](6_join_split_extract/join.md) - Combine des chaînes.
- [split](6_join_split_extract/split.md) - Decoupe le texte aux delimiteurs.
- [splitlines](6_join_split_extract/splitlines.md) - Decoupe le texte aux sauts de ligne.
- [strjoin](6_join_split_extract/strjoin.md) - Joint le texte avec un delimiteur.
- [strread](6_join_split_extract/strread.md) - Lit des valeurs depuis un texte.
- [strsplit](6_join_split_extract/strsplit.md) - Decoupe un vecteur de caracteres aux delimiteurs.
- [strtok](6_join_split_extract/strtok.md) - Selectionne le premier jeton dans le texte.
- [strvcat](6_join_split_extract/strvcat.md) - Concatene verticalement le texte.

## Edition de texte

Fonctions pour rogner, completer, inserer, inverser et changer la casse du texte.

### Functions

- [deblank](7_edit_text/deblank.md) - Supprime les espaces en fin de chaîne.
- [insertAfter](7_edit_text/insertAfter.md) - Insere du texte apres une limite.
- [insertBefore](7_edit_text/insertBefore.md) - Insere du texte avant une limite.
- [lower](7_edit_text/lower.md) - Convertir du texte en minuscules.
- [pad](7_edit_text/pad.md) - Complete le texte jusqu'a la largeur demandee.
- [reverse](7_edit_text/reverse.md) - Inverse les caracteres du texte.
- [strip](7_edit_text/strip.md) - Supprimer des caracteres en debut et fin de texte.
- [strjust](7_edit_text/strjust.md) - Justifie les chaînes
- [strtrim](7_edit_text/strtrim.md) - Supprime les espaces en début et fin de chaîne.
- [tolower](7_edit_text/tolower.md) - Conversion en minuscules.
- [toupper](7_edit_text/toupper.md) - Conversion en majuscules.
- [upper](7_edit_text/upper.md) - Convertir du texte en majuscules.

## Comparaison de texte

Fonctions pour comparer et faire correspondre des valeurs texte.

### Functions

- [matches](8_compare_text/matches.md) - Détermine si un motif correspond aux chaînes.
- [strcmp](8_compare_text/strcmp.md) - Comparaison de chaînes.
- [strcmpi](8_compare_text/strcmpi.md) - Comparaison de chaînes (insensible à la casse).
- [strncmp](8_compare_text/strncmp.md) - Compare les n premiers caractères des chaînes.
- [strncmpi](8_compare_text/strncmpi.md) - Compare les n premiers caractères des chaînes (insensible à la casse).

## Functions

- [symvar](symvar.md) - Determine les variables d'une expression.
- [vectorize](vectorize.md) - Insere des operateurs element par element dans une expression texte.
