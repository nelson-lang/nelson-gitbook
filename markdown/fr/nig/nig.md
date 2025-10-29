# nig

Outil Nelson pour interfacer des fonctions C ou Fortran avec Nelson.

## 📝 Syntaxe

- nig(NIG_FUNCTIONS, DESTINATION_DIR)

## 📥 Argument d'entrée

- NIG_FUNCTIONS - structure : définition des fonctions
- DESTINATION_DIR - chaîne : chemin valide (destination)

## 📄 Description

Avec <b>nig</b>, vous pouvez encapsuler votre code C/FORTRAN dans un ensemble (gateway) et l'utiliser dans Nelson comme des fonctions natives (builtin).

## 💡 Exemples

NIG_FUNCTION description

```matlab
% Nelson Interface Generator (NIG) exemple

NIG_FUNCTION = struct();
NIG_FUNCTION.NELSON_NAME = 'example_nig_sum';
NIG_FUNCTION.NELSON_NAMESPACE = 'Example'; % optional
NIG_FUNCTION.MODULE_NAME = 'example';
NIG_FUNCTION.SYMBOL = 'sum';
NIG_FUNCTION.LANGUAGE = 'fortran';

NIG_FUNCTION.VARIABLES = struct([]);
IDX = length(NIG_FUNCTION.VARIABLES) + 1;
NIG_FUNCTION.VARIABLES(IDX).NAME = 'A';
NIG_FUNCTION.VARIABLES(IDX).TYPE = 'integer';
NIG_FUNCTION.VARIABLES(IDX).MODE = 'input';

IDX = length(NIG_FUNCTION.VARIABLES) + 1;
NIG_FUNCTION.VARIABLES(IDX).NAME = 'B';
NIG_FUNCTION.VARIABLES(IDX).TYPE = 'integer';
NIG_FUNCTION.VARIABLES(IDX).MODE = 'input';

IDX = length(NIG_FUNCTION.VARIABLES) + 1;
NIG_FUNCTION.VARIABLES(IDX).NAME = 'OUTPUT';
NIG_FUNCTION.VARIABLES(IDX).TYPE = 'integer';
NIG_FUNCTION.VARIABLES(IDX).MODE = 'output';
```

```matlab
nig(NIG_FUNCTION, tempdir())
fileread([tempdir(),'/Gateway.cpp'])
fileread([tempdir(),'/example_nig_sumBuiltin.hpp'])
fileread([tempdir(),'/example_nig_sumBuiltin.cpp'])]
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
