# getLastReport

Renvoie le dernier message d'erreur formaté enregistré.

## Syntaxe

- messageText = getLastReport()

## Argument de sortie

- messageText - un vecteur de caractères : message d'erreur formaté.

## Description

<p>getLastReport renvoie le dernier message d'erreur formaté.</p>

## Exemples

```matlab
lasterror('reset')
getLastReport()
```

```matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror()
getLastReport

```

## Voir aussi

[lasterror](../error_manager/lasterror.md), [error](../error_manager/error.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
