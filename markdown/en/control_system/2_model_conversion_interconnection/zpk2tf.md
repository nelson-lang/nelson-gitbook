# zpk2tf

Convert zero-pole-gain model to transfer function.

## 📝 Syntax

- sys = zpk2tf(zpkObj)

## 📥 Input argument

- zpkObj - a zpk model.

## 📤 Output argument

- sys - the equivalent tf model.

## 📄 Description


<b>sys = zpk2tf(zpkObj)</b> converts a zero-pole-gain model into an equivalent transfer function model. 

The sample time, variable and model metadata of the input model are preserved in the result.

## 💡 Example



```matlab
z = zpk([], [-1 -2], 3);
sys = zpk2tf(z)

```


## 🔗 See also

[zpk](../../control_system/1_dynamic_system_models/zpk.md), [tf](../../control_system/1_dynamic_system_models/tf.md), [ss2tf](../../control_system/2_model_conversion_interconnection/ss2tf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
