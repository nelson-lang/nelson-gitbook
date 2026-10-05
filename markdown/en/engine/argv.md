# argv

Nelson command line arguments.

## 📝 Syntax

- args = argv()
- args = argv('user')

## 📥 Input argument

- 'user' - returns only arguments after the command line separator <b>--</b>.

## 📤 Output argument

- args - a cell array of strings.

## 📄 Description


<b>argv()</b> returns a cell array of strings containing the complete Nelson command line arguments. 

The first element of the cell array contains the path of the launched executable. 

<b>argv('user')</b> returns only the arguments placed after <b>--</b>. The separator itself is not returned. 

If the command line does not contain <b>--</b>, <b>argv('user')</b> returns an empty cell array. 

When a test is executed by <b>test\_run</b>, <b>argv('user')</b> can contain user arguments supplied by the test manager, for example startup control flags placed after <b>--</b>. 

Quotes used for grouping command line arguments are handled by the operating system or shell before Nelson starts. Nelson keeps the arguments exactly as received.

## 💡 Examples



```matlab
argv()
```


```matlab
argv('user')
```


```matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
```


## 🔗 See also

[executable](../engine/executable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
