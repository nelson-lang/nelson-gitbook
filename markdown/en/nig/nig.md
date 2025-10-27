# nig

Nelson tool to interface C or Fortran functions with Nelson.

## 📝 Syntax

- nig(NIG_FUNCTIONS, DESTINATION_DIR)

## 📥 Input argument

- NIG_FUNCTIONS - structure : functions definition
- DESTINATION_DIR - string: a valid path (destination)

## 📄 Description

With <b>nig</b>, you can wrap your C/FORTRAN code into a same set, called an gateway, and use them in Nelson as Nelson builtin.

## 💡 Examples

NIG_FUNCTION description

```matlab
% Nelson Interface Generator (NIG) example

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

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
