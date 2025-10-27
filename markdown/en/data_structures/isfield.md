# isfield

Checks if a fieldname exists in a struct.

## 📝 Syntax

- res = isfield(S, name)
- res = isfield(S, C)

## 📥 Input argument

- S - a struct
- name - a string
- C - a cell

## 📤 Output argument

- res - a logical

## 📄 Description

<b>isfield(A)</b> returns true if <b>name</b> is a fieldname of <b>S</b>.

## 💡 Examples

```matlab
S.Nelson = 1;
isfield(S, 'Nel')
isfield(S, 'Nelson')
```

```matlab
S.nel = 1;
S.son = 2;
isfield(S,{ 1, 'nel'; 2, 'son'})
```

## 🔗 See also

[fieldnames](../types/fieldnames.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
