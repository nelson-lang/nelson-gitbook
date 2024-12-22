# break

exit evaluation loop.

## Syntax

- break

## Description

  <p><b>break</b> statement is used to exit a loop prematurely.</p>
  <p><b>break</b> statement can be used inside a <b>for</b> or a <b>while</b> loop.</p>

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

[return](abort.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
