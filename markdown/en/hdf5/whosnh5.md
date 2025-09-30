# whosnh5

List variables in an valid .nh5 file with sizes and types.

## Syntax

- whosnh5(filename)
- st = whosnh5(filename)
- whosnh5(filename, var1, ..., varN)
- st = whosnh5(filename, var1, ..., varN)

## Input argument

- filename - a string: .nh5 filename.
- var1, ..., varN - string: Names of variables to inspect.

## Output argument

- st - stores information about the variables in the structure array st.

## Description

<p>
            <b>whosnh5</b> lists variables in an valid .nh5 file.</p>

## Example

```matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whosnh5.nh5'], 'A', 'B', 'C', 'D')
whosnh5([tempdir(), 'example_whosnh5.nh5'])
st = whosnh5([tempdir(), 'example_whosnh5.nh5'])
```

## See also

[whosmat](../matio/whosmat.md), [whos](../memory_manager/whos.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
