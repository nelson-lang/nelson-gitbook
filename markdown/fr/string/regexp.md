# regexp

Recherche par expression reguliere.

## 📝 Syntaxe

- startIndex = regexp(str, expression)
- [startIndex, endIndex] = regexp(str, expression)
- out = regexp(str, expression, outkey)
- [out1, ..., outN] = regexp(str, expression, outkey1, ..., outkeyN)
- out = regexp(..., option)

## 📥 Argument d'entrée

- str - vecteur de caracteres, tableau de chaines ou cellule de vecteurs de caracteres.
- expression - expression reguliere.
- outkey - 'start', 'end', 'tokenExtents', 'match', 'tokens', 'names' ou 'split'.
- option - 'once', 'ignorecase', 'matchcase', 'emptymatch', 'dotexceptnewline', 'lineanchors' ou 'forceCellOutput'.

## 📤 Argument de sortie

- out - indices, correspondances, jetons, structures de jetons nommes ou texte decoupe.

## 📄 Description

<b>regexp</b> recherche du texte avec des expressions regulieres compatibles PCRE.

Une expression reguliere decrit un motif plutot qu'une chaine litterale. Elle est utile lorsque le texte peut varier, par exemple pour reconnaitre des identifiants, des dates, des adresses email, des nombres, des balises ou plusieurs orthographes voisines.

La demarche habituelle consiste a reperer les parties caracteristiques du texte, a traduire chaque partie en syntaxe d'expression reguliere, puis a appeler <b>regexp</b> avec la cle de sortie adaptee.

Par defaut, <b>regexp</b> renvoie les indices de debut, bases sur 1, de toutes les correspondances sans recouvrement. La recherche reprend apres la fin de la correspondance precedente. L'option <b>
'once'
</b> arrete la recherche apres la premiere correspondance.

Metacaracteres courants :

| Motif    | Signification                                      | Exemple                                                        |
| -------- | -------------------------------------------------- | -------------------------------------------------------------- |
| .        | n'importe quel caractere                           | **'a.c'** reconnait **'abc'** et **'axc'**                     |
| [abc]    | un caractere parmi un ensemble                     | **'[ch]at'** reconnait **'cat'** ou **'hat'**                  |
| [^abc]   | un caractere absent de l'ensemble                  | **'[^0-9]'** reconnait un caractere qui n'est pas un chiffre   |
| [a-z]    | un caractere dans une plage                        | **'[A-Z]+'** reconnait des lettres majuscules                  |
| \\w, \\W | caractere de mot ou caractere qui n'est pas de mot | **'\\w+'** reconnait des mots et des identifiants              |
| \\d, \\D | chiffre ou non-chiffre                             | **'\\d{4}'** reconnait quatre chiffres                         |
| \\s, \\S | espace blanc ou caractere non blanc                | **'\\w+\\s+\\w+'** reconnait deux mots separes par des espaces |

Les quantificateurs indiquent combien de fois l'expression precedente peut apparaitre.

| Motif     | Signification                             |
| --------- | ----------------------------------------- |
| expr\*    | zero fois ou plus                         |
| expr+     | une fois ou plus                          |
| expr?     | zero ou une fois                          |
| expr{m,n} | au moins **m** fois et au plus **n** fois |
| expr{m,}  | au moins **m** fois                       |
| expr{n}   | exactement **n** fois                     |

Les quantificateurs sont avides par defaut. Ajoutez <b>?</b> apres un quantificateur pour une correspondance minimale, par exemple <b>
'.\*?'
</b>. Ajoutez <b>+</b> apres un quantificateur pour une correspondance possessive, par exemple <b>
'.\*+'
</b>.

Les groupes controlent les jetons et les alternatives.

| Motif          | Signification                                    |
| -------------- | ------------------------------------------------ |
| (expr)         | groupe et capture un jeton                       |
| (?:expr)       | groupe sans capturer de jeton                    |
| (?<nom>expr)   | capture un jeton nomme                           |
| (expr1\|expr2) | reconnait l'une des deux expressions             |
| \\1, \\2, ...  | reconnait le meme texte qu'un jeton deja capture |

Les ancres et assertions reconnaissent des positions plutot que des caracteres.

| Motif                | Signification                                                          |
| -------------------- | ---------------------------------------------------------------------- |
| ^, $                 | debut et fin du texte, ou debut et fin de ligne avec **'lineanchors'** |
| \\<, \\>             | debut et fin d'un mot                                                  |
| \\b, \\B             | frontiere de mot ou absence de frontiere de mot                        |
| (?=expr), (?!expr)   | anticipation positive ou negative                                      |
| (?<=expr), (?<!expr) | retour arriere positif ou negatif                                      |

Utilisez <b>
'ignorecase'
</b> pour ignorer la casse, <b>
'dotexceptnewline'
</b> pour que <b>.</b> ne reconnaisse pas les retours a la ligne, <b>
'lineanchors'
</b> pour appliquer <b>^</b> et <b>$</b> ligne par ligne, et <b>
'forceCellOutput'
</b> pour forcer les resultats scalaires dans des cellules.

## 💡 Exemples

Trouver les indices de debut et le texte reconnu.

```matlab

regexp('bat cat coat', 'c[aeiou]+t')
regexp('She sells sea shells.', '[Ss]h.', 'match')
regexp('01/11/2000', '(?<month>\d+)/(?<day>\d+)/(?<year>\d+)', 'names')

```

Reconnaitre plusieurs unites de vitesse avec une seule expression.

```matlab

txt = ['The train traveled at 250 kilometers per hour ', ...
       'and the car traveled at 120 km/h.'];
pattern = 'k(ilo)?m(eters)?(/|\sper\s)h(r|our)?';
regexp(txt, pattern, 'match')

```

Extraire des adresses email depuis une cellule de texte.

```matlab

contacts = {'Harry  hparker@hmail.com'; ...
            'Janice jan_stephens@horizon.net'; ...
            'Jason  jason_blake@mymail.com'};
email = '[a-z_]+@[a-z]+\.(com|net)';
regexp(contacts, email, 'match')

```

Utiliser des jetons, des jetons nommes et le decoupage.

```matlab

regexp('3.14', '(\d+)\.(\d+)', 'tokens', 'once')
regexp('color: blue', '(?<key>\w+):\s*(?<value>\w+)', 'names')
regexp('one, two; three', '[,;]\s*', 'split')

```

## 🔗 Voir aussi

[regexpi](../string/regexpi.md), [regexprep](../string/regexprep.md), [regexptranslate](../string/regexptranslate.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
