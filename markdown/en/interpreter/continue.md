# continue

continue evaluation in loop.

## 📝 Syntax

- continue

## 📄 Description


<b>continue</b> statement can be used inside a <b>for</b> or a<b>while</b> loop. 

<b>continue</b> statement is used to pass control to the next iteration of a loop.

## 💡 Example



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


## 🔗 See also

[for](../interpreter/for.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
