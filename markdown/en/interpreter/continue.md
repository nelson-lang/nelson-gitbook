# continue

continue evaluation in loop.

## Syntax

- continue

## Description

<p>
            continue statement can be used inside a for or a while loop.</p>

<p>
                continue statement is used to pass control to the next iteration of a loop.</p>

## Example

```matlab

for i=1:10
  if (i == 5)
    continue;
    disp('never here')
    disp(i)
  else
    disp(i)
  end
end

```

## See also

[for](../interpreter/for.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
