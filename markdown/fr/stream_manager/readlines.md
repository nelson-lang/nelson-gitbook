# readlines

Lire les lignes d'un fichier texte en tableau de chaînes.

## 📝 Syntaxe

- S = readlines(filename)
- S = readlines(filename, Name, Value)

## 📥 Argument d'entrée

- filename - un vecteur de caractères ou une chaîne scalaire : nom du fichier texte à lire.
- LineEnding - un vecteur de caractères, un tableau de chaînes ou une cellule de vecteurs de caractères : terminaisons de ligne. Par défaut : {'\\n', '\\r', '\\r\\n'}. Les séquences d'échappement \\n, \\r, \\t, \\b, \\f, \\v et \\\\ sont interprétées.
- Whitespace - un vecteur de caractères ou une chaîne scalaire : caractères considérés comme des espaces. Par défaut : ' \\b\\t'.
- WhitespaceRule - 'preserve' (par défaut), 'trim', 'trimleading' ou 'trimtrailing' : suppression des espaces en début et/ou en fin de chaque ligne.
- EmptyLineRule - 'read' (par défaut), 'skip' ou 'error' : traitement des lignes vides. Une ligne qui ne contient que des espaces est vide.
- Encoding - un vecteur de caractères ou une chaîne scalaire : '' (par défaut, l'encodage est détecté), 'system', 'UTF-8', 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

## 📤 Argument de sortie

- S - un tableau de chaînes N x 1 : un élément par ligne.

## 📄 Description


<b>S = readlines(filename)</b> lit le fichier texte <b>filename</b> et renvoie ses lignes sous forme de tableau de chaînes colonne. Les terminaisons de ligne ne font pas partie des lignes. 

Par défaut, une ligne se termine par un saut de ligne, un retour chariot ou un retour chariot suivi d'un saut de ligne. Quand le fichier se termine par une terminaison de ligne, le dernier élément de <b>S</b> est une chaîne vide. Un fichier vide renvoie une chaîne vide 1 x 1. 

Avec <b>EmptyLineRule</b> à 'skip', les lignes vides sont supprimées. Avec 'error', une erreur est levée sur la première ligne vide, en indiquant son numéro. Dans les deux cas, le texte vide après une terminaison de ligne finale est ignoré. 

Une marque d'ordre des octets UTF-8 en début de fichier n'est pas renvoyée.

## 💡 Exemple

Lire les lignes d'un fichier texte.

```matlab
filename = [tempdir(), 'example_readlines.txt'];
filewrite(filename, ["  Paris"; ""; "  Berlin"; "Rome  "]);
S = readlines(filename)
S = readlines(filename, 'EmptyLineRule', 'skip')
S = readlines(filename, 'WhitespaceRule', 'trim')
```


## 🔗 Voir aussi

[fileread](../stream_manager/fileread.md), [fgetl](../stream_manager/fgetl.md), [filewrite](../stream_manager/filewrite.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
