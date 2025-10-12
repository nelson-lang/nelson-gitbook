# format

Format d'affichage et impression des nombres.

## Syntaxe

- fmt = format()
- format()
- format('default')
- format(new_style)

## Argument d'entrée

- new_style - une chaîne

## Argument de sortie

- fmt - Objet DisplayFormatOptions : format utilisé

## Description

<p>
            format(new_style) modifie le format d'affichage et l'impression des nombres pour la session courante.</p>

<p>
                format('default') réinitialise le format par défaut (short, loose).</p>

<p></p>

<p>Styles pris en charge :</p>

<p>
                    short
                </p>

<p>
                    long
                </p>

<p>
                    shortE
                </p>

<p>
                    longE
                </p>

<p>
                    shortEng
                </p>

<p>
                    longEng
                </p>

<p>
                    plus
                </p>

<p>
                    rational
                </p>

<p>
                    hex
                </p>

<p></p>

<p>Formats d'espacement de ligne pris en charge :</p>

<p>
                    loose
                </p>

<p>
                    compact
                </p>

## Exemple

an example

```matlab
current_style = format()
pi
format('short')
pi
format('long')
pi
format('shortE')
pi
format('longE')
pi
format('hex')
pi
format('+')
pi
format('rational')
pi
format('compact')
pi
format(current_style)
pi
```

## Voir aussi

[disp](../display_format/disp.md), [display](../display_format/display.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
