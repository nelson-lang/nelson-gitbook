# switch

switch statement.

## 📝 Syntax

- switch(expression), case test\_expression\_1, statements, case test\_expression\_2, statements, otherwise statements, end

## 📄 Description


<b>switch</b> statement is used to selective execute code based on the value of either scalar value or a string. 

<b>otherwise</b> clause is optional.

## 💡 Examples

demo_switch.m

```matlab
function c = demo_switch(a)
 switch(a)
    case {'hello', 'world'}
      c = 'message';
    case {'red', 'green', 'blue'}
      c = 'color';
    otherwise
      c = 'not sure';
  end
end

```


```matlab
demo_switch('hello')
demo_switch('red')
demo_switch('?')

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
