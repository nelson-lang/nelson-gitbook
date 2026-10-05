# isstatic

Checks if model is static or dynamic.

## 📝 Syntax

- res = isstatic(sys)

## 📥 Input argument

- sys - a lti model.

## 📤 Output argument

- res - a logical: true if model is static.

## 📄 Description


Checks if model is static.

## 💡 Example



```matlab
sys = tf(magic(3));
isstatic(sys)
```


## 🔗 See also

[isct](../../control_system/1_dynamic_system_models/isct.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
