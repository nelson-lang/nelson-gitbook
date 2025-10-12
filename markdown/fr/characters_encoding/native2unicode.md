# native2unicode

Convertit la représentation d'octets en caractères unicode

## Syntaxe

- str = native2unicode(bytes, charset)

## Argument d'entrée

- bytes - un vecteur uint8
- charset - une chaîne scalaire ou un tableau de caractères vectoriel.

## Argument de sortie

- str - un tableau de caractères vectoriel.

## Description

<p>
            native2unicode convertit un vecteur uint8 en caractères unicode.</p>

<p>
                str = native2unicode(bytes) convertit un vecteur uint8 en caractères unicode (en utilisant le jeu de caractères natif de la machine).</p>

<p>
                    str = native2unicode(bytes, charset) convertit un vecteur uint8 en caractères unicode (jeu de caractères charset au lieu du jeu de caractères natif).</p>

<p>Liste des jeux de caractères : https://www.iana.org/assignments/character-sets/character-sets.xhtml</p>

## Bibliographie

ICU library

## Exemple

```matlab
native2unicode(uint8([149   208   137   188   150   188]), 'SHIFT_JIS')
```

## Voir aussi

[unicode2native](../characters_encoding/unicode2native.md), [native2unicode](../characters_encoding/native2unicode.md), [char](../string/char.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
