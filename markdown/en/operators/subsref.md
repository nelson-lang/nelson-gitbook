# subsref

Subscripted reference.

## Syntax

- B = subsref(A, S)

## Input argument

- A - Indexed object array
- B - Indexing structure

## Output argument

- B - Result of indexing expression

## Description

<p>
            B = subsref(A, S) is invoked when using the syntax A(i), A{i}, or A.i with an object A.</p>

## Examples

Parentheses Indexing

```matlab
A = magic(5);
S.type='()';
S.subs={1:2,':'};
R = subsref(A, S)
```

Brace Indexing

```matlab
C = {"one", 2, 'three'};
S = [];
S.type = '{}';
S.subs = {[1 2]};
[R1, R2] = subsref(C, S);
```

Dot Indexing

```matlab
A = struct('number', 10);
S = [];
S.type = '.';
S.subs = 'number';
R = subsref(A, S)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
