# semver

gestionnaire de versions sémantiques.

## Syntaxe

- r = semver(version_str, version_range)

## Argument d'entrée

- version_str - chaîne : version actuelle.
- version_range - chaîne : version à comparer ou plage de versions.

## Argument de sortie

- r - nombre : -1, 0 ou 1.

## Description

<p>
            semver compare une chaîne de version à une version simple ou à une plage de versions.</p>

<p>Si une plage de versions est utilisée, r retourne 0 (non satisfaite) ou 1 (satisfaite).</p>

<p>Si une version simple est utilisée, une valeur de comparaison r est renvoyée : -1 (inférieur), 0 (égal) ou 1 (supérieur).</p>

<p>Opérateurs de plage supportés :</p>

<p>
                = - Égalité</p>

<p>
                    >= - Supérieur ou égal à</p>

<p>
                        <= - Inférieur ou égal à</p>

<p>
                            < - Inférieur à</p>

<p>
                                > - Supérieur à</p>

<p>
                                    ^ - Opérateur caret (caret)</p>

<p>
                                        ~ - Opérateur tilde (tilde)</p>

## Bibliographie

https://semver.org/

## Fonction(s) utilisée(s)

semver.c

## Exemple

```matlab

semver('1.5.10', '2.3.0')
semver('2.3.0', '1.5.10');
semver('1.5.10', '1.5.10')
semver('1.2.3', '~1.2.3')
semver('1.5.3', '~1.2.3')
semver('1.0.3', '~1')
semver('2.0.3', '~1')
semver('1.2.3-alpha', '>1.2.3-beta')
semver('1.2.3-alpha', '<1.2.3-beta')
semver('1.2.3', '^1.2.3')
semver('1.2.2', '^1.2.3')
semver('1.9.9', '^1.2.3')
semver('2.0.1', '^1.2.3')
```

## Voir aussi

[version](../core/version.md), [getmodules](../modules_manager/getmodules.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
