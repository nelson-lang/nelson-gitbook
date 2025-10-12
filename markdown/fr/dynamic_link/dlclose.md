# dlclose

Supprime l'objet dllib

## Syntaxe

- dllib_delete(h)
- delete(h)
- dlclose(h)

## Argument d'entrée

- h - un handle : un objet dllib.

## Description

<p>
            dlclose(h) ou delete(h) libère l'objet dllib.</p>

<p>N'oubliez pas de nettoyer la variable h ensuite.</p>

## Exemple

```matlab
path_ref = modulepath('dynamic_link', 'builtin');
lib = dlopen(path_ref)
isvalid(lib)
dlclose(lib); // or delete(lib)
isvalid(lib)
```

## Voir aussi

[dlopen](../dynamic_link/dlopen.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
