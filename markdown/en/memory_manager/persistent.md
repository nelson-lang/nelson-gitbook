# persistent

Persistent variable.

## 📝 Syntax

- persistent variable\_name
- persistent('variable\_name')
- persistent variable\_name1, ..., variable\_nameN

## 📥 Input argument

- variable\_name - a string: variable name.

## 📄 Description


<b>persistent</b> defines a variable defined by his name <b>variable\_name</b> as persistent in a function. 

Before to use a persistent variable, it is necessary to initializ value.

## 💡 Examples

function to define:

```matlab
function r = test_persistent_function()
 persistent calls;
 if isempty(calls)
    calls = 0;
 end
 disp(['nb calls to test_persistent_function: ', int2str(calls)]);
 r= calls;
 calls = calls + 1;
end
```
calls test_persistent_function

```matlab
for i = 1:30
  r = test_persistent_function();
end

```


## 🔗 See also

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md), [global](../memory_manager/global.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
