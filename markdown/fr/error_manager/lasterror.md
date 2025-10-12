# lasterror

Renvoie le dernier message d'erreur enregistré.

## Syntaxe

- last_err = lasterror()
- lasterror('reset')
- lasterror(error_struct)

## Argument de sortie

- last_err - structure du message d'erreur.

## Description

<p>l = lasterror() renvoie une structure contenant le dernier message d'erreur et les informations associées.</p>

<p>lasterror('reset') efface la dernière erreur.</p>

<p>lasterror(error_struct) définit la dernière erreur.</p>

## Exemples

```matlab
state = execstr('xxxxxx', 'errcatch')
if ~state
  l = lasterror()
end
```

```matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror();
lasterror('reset');
lasterror()
lasterror(l);
lasterror()
```

## Voir aussi

[error](../error_manager/error.md), [warning](../error_manager/warning.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
