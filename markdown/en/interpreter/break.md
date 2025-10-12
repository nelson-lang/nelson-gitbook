# break

exit evaluation loop.

## Syntax

- break

## Description

<p>
            break statement is used to exit a loop prematurely.</p>

<p>
                break statement can be used inside a for or a while loop.</p>

## Example

```matlab

for i = 1:10
  if i == 5
   disp('i == 5');
   break;
  end
  disp(i)
end

```

## See also

[return](../interpreter/abort.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
