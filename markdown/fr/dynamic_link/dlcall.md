# dlcall

Appel de fonction étrangère C ou Fortran

## Syntaxe

- [x1, ... , xN] = dlcall(dlsym_handle, arg1, ..., argN)

## Argument d'entrée

- dlsym_handle - un handle dlsym.
- arg1, ..., argN - arguments d'entrée.

## Argument de sortie

- [x1, ... , xN] - valeurs de sortie.

## Description

<p>
        dlcall appelle une fonction externe C ou Fortran chargée depuis une bibliothèque partagée.</p>

<p>
            dlcall valide les types des arguments d'entrée avant l'appel, en se basant sur la définition du handle dlsym.</p>

## Exemples

```matlab
lib = dlopen([modulepath('nelson', 'builtin'), '/libnlsDynamic_link', getdynlibext()]);
V = double([1 2;3 4]);
% C prototype:
% int dynlibTestMultiplyDoubleArrayWithReturn(double *x, int size)
f = dlsym(lib, 'dynlibTestMultiplyDoubleArrayWithReturn', 'int32', {'doublePtr', 'int32'});
[r1, r2] = dlcall(f, V, int32(numel(V)))
delete(f);
delete(lib);

```

Call C getpid function

```matlab
run([modulepath('dynamic_link'), '/examples/call_c.m']);

```

Call fortran DASUM (blas) function

```matlab
run([modulepath('dynamic_link'), '/examples/call_fortran.m']);
```

## Voir aussi

[dlsym](../dynamic_link/dlsym.md), [C/Nelson equivalent data types](../dynamic_link/C_datatype.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
