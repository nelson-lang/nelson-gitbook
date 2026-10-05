# dcgain

Low-frequency (DC) gain of LTI system.

## 📝 Syntax

- k = dcgain(sys)

## 📥 Input argument

- sys - a LTI model.

## 📤 Output argument

- k - DC gain.

## 📄 Description


<b>k = dcgain(sys)</b> computes the DC gain <b>k</b> of the LTI model sys.

## 💡 Example



```matlab
A = [1 2; 3 4];
B = [1 0; 0 1];
C = [1 1; 1 1];
D = [0 0; 0 0];
sys = ss(A, B, C, D);
K = dcgain(sys)
```


## 🔗 See also

[tf](../../control_system/1_dynamic_system_models/tf.md), [ss](../../control_system/1_dynamic_system_models/ss.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
