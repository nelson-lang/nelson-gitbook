# freqresp

Evaluate system response over a grid of frequencies.

## 📝 Syntax

- [H, wout] = freqresp(sys, w)
- H = freqresp(sys, w)

## 📥 Input argument

- sys - LTI model
- w - Frequencies: vector

## 📤 Output argument

- H - Frequency response values
- wout - Output frequencies corresponding to the frequency response: vector.

## 📄 Description

<b>freqresp</b> computes the frequency response of a dynamic system<b>sys</b> at specified frequencies <b>w</b>.

To acquire magnitude and phase data, along with visual representations of the frequency response, utilize the<b>bode</b> function.

## 💡 Examples

```matlab
G = tf(1,[1 1]);
h1 = freqresp(G, 3)
```

```matlab
num = [1 2];
den = [1 3 2];
sys = tf(num,den);
w = linspace(0, 100, 60);
[resp,freq] = freqresp(sys, w);

f = figure();
subplot(2, 1, 1);
plot(freq, 20 * log10(abs(squeeze(resp))));
ylabel(_('Amplitude (dB)'));
subplot(2, 1, 2);
plot(freq, angle(squeeze(resp)) * 180/pi);
ylabel(_('Phase (degrees)'));
xlabel(_('Frequency (Hz)'));

```

<img src="freqresp.svg" align="middle"/>

## 🔗 See also

[bode](../control_system/bode.md), [evalfr](../control_system/evalfr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
