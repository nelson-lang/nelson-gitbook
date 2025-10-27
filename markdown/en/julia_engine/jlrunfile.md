# jlrunfile

Run Julia file from Nelson.

## 📝 Syntax

- jlrunfile(filename)
- jlrunfile(filename input)
- outvars = jlrunfile(filename, outputs)
- outvars = jlrunfile(filename, outputs, jlName, jlValue, ...)

## 📥 Input argument

- filename - a string scalar, character vector: filename .jl to run.
- "filename 'input'" - a string scalar, character vector: filename .jl to run with input arguments.
- jlName, jlValue - Input arguments name and value
- outputs - string array: Julia variable names.

## 📤 Output argument

- outvars - One or more Nelson workspace variable names returned as valid Julia types.

## 📄 Description

<b>jlrunfile(filenam)</b> function executes Julia file.

As the <b>jlrun</b> function, variables generated in the Julia workspace through the <b>jlrunfile</b> function do persist.

The code <b>outvars = jlrunfile(file, outputs, jlName1, jlValue2, ..., jlNameN, jlValueN)</b> executes the code with one or more name-value pair arguments.

## 💡 Examples

jlrunfile_example_1.jl

```matlab
content = "hello Nelson"
display(content)
```

jlrunfile from Nelson

```matlab
jlrunfile('jlrunfile_example_1.jl')
```

## 🔗 See also

[jlrun](../julia_engine/jlrun.md), [jlenv](../julia_engine/jlenv.md), [Julia types supported](../julia_engine/julia_types.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.12.0  | initial version |

## 👤 Author

Allan CORNET
