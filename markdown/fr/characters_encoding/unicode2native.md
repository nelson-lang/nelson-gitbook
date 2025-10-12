# unicode2native

Convertit la représentation de caractères unicode en octets

## Syntaxe

- bytes = unicode2native(str, charset)

## Argument d'entrée

- str - une chaîne scalaire ou un tableau de caractères vectoriel.
- charset - une chaîne scalaire ou un tableau de caractères vectoriel.

## Argument de sortie

- bytes - un vecteur uint8

## Description

<p>
            unicode2native convertit les caractères unicode en un tableau numérique.</p>

<p>
                bytes = unicode2native(str) convertit les caractères unicode en un tableau numérique (le jeu de caractères natif de la machine).</p>

<p>
                    bytes = unicode2native(str, charset) convertit les caractères unicode en un tableau numérique (jeu de caractères charset au lieu du jeu de caractères natif).</p>

<p>Liste des jeux de caractères : http://www.iana.org/assignments/character-sets/character-sets.xhtml</p>

## Bibliographie

ICU library

## Exemple

```matlab
R = unicode2native('片仮名', 'SHIFT_JIS')
```

## Voir aussi

[native2unicode](../characters_encoding/native2unicode.md), [char](../string/char.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
