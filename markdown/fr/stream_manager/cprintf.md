# cprintf

Ecrit du texte formatte et style vers stdout.

## 📝 Syntaxe

- cprintf()
- cprintf(format, v1, ... , vn)
- cprintf(style, format, v1, ... , vn)
- R = cprintf(style, format, v1, ... , vn)

## 📥 Argument d'entrée

- style - un nom de style, un vecteur RGB ou une couleur hexadecimale.
- format - une chaine decrivant le format du texte.
- v1, ... , vn - donnees a convertir et afficher selon le parametre format.

## 📤 Argument de sortie

- R - nombre de caracteres visibles ecrits vers stdout.

## 📄 Description


<b>cprintf</b> ecrit du texte formatte vers stdout et applique un style quand l'interface courante prend en charge l'affichage style. La CLI basique affiche du texte brut ; la CLI avancee et la GUI peuvent rendre les styles. 

Sans argument de style, <b>cprintf</b> utilise du texte brut. Sans argument d'entree, la fonction affiche une courte demonstration. 

Le parametre <b>format</b> suit les memes regles de formatage que <b>fprintf</b>. 

Les styles nommes incluent text, keywords, comments, strings, unterminatedstrings, systemcommands, errors, hyperlinks, ainsi que des noms de couleurs courants comme black, blue, cyan, green, magenta, red, yellow, white, gray, orange, pink, purple, brown et gold. 

Les noms acceptent les abreviations non ambigues. Les variantes claires et sombres utilisent les prefixes <b>light</b> et <b>dark</b>, par exemple <b>lightblue</b> ou <b>dark-green</b>. 

Les couleurs RGB peuvent etre donnees par un vecteur de trois elements dans l'intervalle [0, 1] ou [0, 255]. Les couleurs hexadecimales acceptent <b>#RGB</b> ou <b>#RRGGBB</b>. 

Un prefixe <b>\*</b> demande le gras. Un prefixe <b>\_</b> ou <b>-</b> demande le souligne. Les prefixes peuvent etre combines dans les deux ordres, par exemple <b>\*\_red</b> ou <b>\_\*#0af</b>. 

Limites : le rendu depend du terminal ou de l'interface graphique ; la CLI basique et les interfaces sans style affichent du texte brut. <b>evalc</b> capture seulement le texte visible. Les fichiers et le diary ne conservent pas le style. La sortie est toujours envoyee vers stdout, jamais vers stderr.

## 💡 Exemples

Courte demonstration

```matlab
cprintf()
```
Texte formatte brut

```matlab
cprintf('value: %.3f\n', pi)
```
Couleurs nommees

```matlab
cprintf('red', 'red text\n')
cprintf('blue', 'blue text\n')
cprintf('cy', 'cyan from an unambiguous prefix\n')
```
Variantes claires et sombres

```matlab
cprintf('lightgreen', 'light green\n')
cprintf('dark-blue', 'dark blue\n')
```
Couleurs RGB

```matlab
cprintf([1 0.4 0], 'normalized RGB\n')
cprintf([0 128 255], 'byte RGB\n')
```
Couleurs hexadecimales

```matlab
cprintf('#0af', 'short hex\n')
cprintf('#00aaff', 'long hex\n')
```
Gras et souligne

```matlab
cprintf('*red', 'bold red\n')
cprintf('_green', 'underlined green\n')
cprintf('*_dark-magenta', 'bold underlined dark magenta\n')
```
Plusieurs lignes, Unicode et compteur

```matlab
msg = ['accent ', char(233)];
count = cprintf('comments', 'line 1\n%s\n', msg)
```
Capture du texte visible

```matlab
txt = evalc('cprintf(''red'', ''captured'')')
```


## 🔗 Voir aussi

[fprintf](../stream_manager/fprintf.md), [diary](../stream_manager/diary.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
