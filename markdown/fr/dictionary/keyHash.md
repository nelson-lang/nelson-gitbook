# keyHash

Créer un code de hachage pour une clé de dictionnaire.

## Syntaxe

- H = keyHash(A)

## Argument d'entrée

- A - tableau

## Argument de sortie

- H - scalaire : uint64, code de hachage.

## Description

<p>
        H = keyHash(A) renvoie un scalaire uint64 représentant le tableau d'entrée, A.</p>

<p>La fonction keyHash calcule un code de hachage dérivé des caractéristiques de l'entrée.</p>

<p>Pour les classes personnalisées, keyHash peut nécessiter une surcharge pour garantir une équivalence correcte.</p>

## Exemple

```matlab
keyHash({'a', 'b', 1})
keyHash({1, 'a', 'b'})
```

## Voir aussi

[keyMatch](../dictionary/keyMatch.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
