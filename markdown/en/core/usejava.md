# usejava

Check whether a Java feature is available.

## 📝 Syntax

- tf = usejava(feature)

## 📥 Input argument

- feature - one of <b>'awt'</b>, <b>'jvm'</b> or <b>'swing'</b>.

## 📤 Output argument

- tf - a logical scalar.

## 📄 Description


<b>tf = usejava(feature)</b> returns whether the given Java <b>feature</b> is available. 

Nelson embeds no Java virtual machine, so <b>usejava</b> always returns <b>false</b>.

## 💡 Example



```matlab
tf = usejava('jvm')
```


## 🔗 See also

[version](../core/version.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
