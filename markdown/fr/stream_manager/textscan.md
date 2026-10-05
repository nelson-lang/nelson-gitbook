# textscan

Lit des données formatées depuis une chaîne ou un fichier.

## 📝 Syntaxe

- C = textscan(chr, format)
- C = textscan(fid, format)
- C = textscan(\_\_, Name, Value)
- [C, position] = textscan(\_\_)

## 📥 Argument d'entrée

- chr - un vecteur de caractères ou une chaîne scalaire à lire.
- fid - un identifiant de fichier retourné par fopen. Les données sont lues depuis la position courante jusqu'à la fin du fichier.
- format - un vecteur de caractères décrivant les spécificateurs de conversion appliqués à chaque champ.
- Name, Value - une ou plusieurs paires option/valeur.

## 📤 Argument de sortie

- C - un tableau de cellules avec une cellule par spécificateur de conversion.
- position - le nombre de caractères lus lorsque la lecture s'est arrêtée.

## 📄 Description


<b>textscan</b> lit des données formatées et retourne un tableau de cellules <b>C</b>. Chaque cellule contient une colonne de sortie collectée sur toutes les répétitions du format, car le format est appliqué de façon cyclique sur toute l'entrée. 

Les spécificateurs numériques produisent des vecteurs colonnes, tandis que <b>%s</b>, <b>%q</b> et <b>%[...]</b> produisent des tableaux de cellules de vecteurs de caractères. 

Spécificateurs de conversion pris en charge : 

<b>%d</b> entier signé (int32), <b>%u</b> entier non signé (uint32), <b>%f</b> nombre à virgule flottante (double), <b>%s</b> texte séparé par des espaces ou un délimiteur, <b>%q</b> texte éventuellement entre guillemets, <b>%c</b> un nombre fixe de caractères, <b>%[...]</b> et <b>%[^...]</b> lecture d'un ensemble de caractères. 

Une largeur de champ peut être indiquée (par exemple <b>%5d</b> ou <b>%3s</b>). Un spécificateur préfixé par <b>\*</b> (par exemple <b>%\*d</b>) est lu mais non stocké. Un suffixe de taille sélectionne la classe numérique (<b>%d8</b>, <b>%d16</b>, <b>%d32</b>, <b>%d64</b>, <b>%u8</b> et <b>%f32</b>). Le texte littéral entre les spécificateurs doit correspondre dans l'entrée. 

Options option/valeur prises en charge : 

<b>Delimiter</b> un vecteur de caractères, ou un tableau de cellules de vecteurs de caractères, utilisé pour séparer les champs. 

<b>HeaderLines</b> le nombre de lignes d'en-tête à ignorer. 

<b>CollectOutput</b> si vrai, les colonnes consécutives de même classe sont concaténées dans un seul tableau. 

<b>EmptyValue</b> la valeur numérique utilisée pour les champs numériques vides. 

<b>Whitespace</b> les caractères traités comme des espaces. 

<b>MultipleDelimsAsOne</b> si vrai, les délimiteurs consécutifs sont traités comme un seul délimiteur. 

<b>CommentStyle</b> un marqueur de commentaire, ou une paire début et fin, dont le texte est ignoré. 

<b>TreatAsEmpty</b> des valeurs textuelles traitées comme des champs numériques vides. 

<b>EndOfLine</b> accepté pour compatibilité ; les caractères de fin de ligne sont toujours traités comme des séparateurs.

## 💡 Exemples



```matlab
C = textscan('1 2 3', '%d')
```


```matlab
C = textscan('a,b,c', '%s', 'Delimiter', ',');
C{1}
```


```matlab
C = textscan('name:42', '%[^:]:%d')
```


## 🔗 Voir aussi

[sscanf](../stream_manager/sscanf.md), [fscanf](../stream_manager/fscanf.md), [fopen](../stream_manager/fopen.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
