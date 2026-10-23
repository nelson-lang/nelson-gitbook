# zpk

Constructs a zero-pole-gain model.

## 📝 Syntax

- sys = zpk()
- sys = zpk('s')
- sys = zpk(z, p, k)
- sys = zpk(z, p, k, Ts)
- sys = zpk(sysIn)

## 📥 Input argument

- z - zeros: a vector (or cell array of vectors).
- p - poles: a vector (or cell array of vectors).
- k - scalar gain.
- Ts - Sampling time Ts, default: in seconds
- sysIn - LTI model.

## 📤 Output argument

- sys - Output zero-pole-gain system model.

## 📄 Description


<b>sys = zpk(z, p, k)</b> creates a continuous-time zero-pole-gain model. 

The model represents the transfer function <b>k \* (s - z(1))...(s - z(end)) / ((s - p(1))...(s - p(end)))</b> where <b>z</b> are the zeros, <b>p</b> the poles and <b>k</b> the scalar gain. 

When you include the <b>Ts</b> parameter, it allows you to create a discrete-time zero-pole-gain model. 

<b>sys = zpk(sysIn)</b> converts the LTI model <b>sysIn</b> (<b>tf</b> or <b>ss</b>) into a zero-pole-gain model. 

Complex zeros and poles of a real system must come in conjugate pairs. The model is displayed in factored form.

## 💡 Examples



```matlab
z = -1;
p = [-2 -3];
k = 5;
sys = zpk(z, p, k)
```


```matlab
sys = zpk(-1, [-2 -3], 5);
G = tf(sys)
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
