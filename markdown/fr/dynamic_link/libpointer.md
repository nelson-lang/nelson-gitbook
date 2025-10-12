# libpointer

Crée un objet pointeur C utilisable dans Nelson

## Syntaxe

- ptr = libpointer()
- ptr = libpointer(datatype)
- ptr = libpointer(datatype, value)

## Argument d'entrée

- datatype - a string: data type.
- value - a nelson variable compatible with datatype.

## Argument de sortie

- ptr - a libpointer handle.

## Description

<p>Il s'agit d'une fonctionnalité avancée pour manipuler des pointeurs C.</p>

<p>
            ptr = libpointer() crée un pointeur NULL.</p>

## Exemples

```matlab
p = libpointer('int8Ptr', int8([3 4]));
p.isNull()
p.DataType
p.Value
```

```matlab
NLSDYNAMIC_LINK_IMPEXP double *multiplicationDoubleByReference(double *x)
{
    *x *= 2;
    return x;
}
```

```matlab
x = 133.3;
xPtr = libpointer('doublePtr', x);
path_ref = modulepath('dynamic_link', 'builtin');
lib = dlopen(path_ref);
f = dlsym(lib, 'multiplicationDoubleByReference', 'libpointer', {'doublePtr'});
[r1, r2] = dlcall(f, xPtr);
r2
% r1 is an libpointer of type '' (voidPointer) and it need to be change type and size.
r1.setdatatype('doublePtr');
r1.reshape(1, 1);
get(r1)


```

## Voir aussi

[C/Nelson equivalent data types](../dynamic_link/C_datatype.md), [isNull](../dynamic_link/libpointer_isNull.md), [libpointer.reshape](../dynamic_link/libpointer_reshape.md), [libpointer.setdatatype](../dynamic_link/libpointer_setdatatype.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
