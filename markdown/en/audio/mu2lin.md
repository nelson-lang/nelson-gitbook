# mu2lin

Convert audio data from mu-law to linear signal.

## 📝 Syntax

- y = mu2lin(mu)

## 📥 Input argument

- mu - mu-law encoded 8-bit audio signals, with 0 ≤ mu ≤ 255.

## 📤 Output argument

- y - linear signal.

## 📄 Description

<b>y = mu2lin(mu)</b> converts audio data from mu-law to linear.

## 📚 Bibliography

"A New Digital Technique for Implementation of Any Continuous PCM Companding Law," Villeret, Michel, et al. 1973 IEEE Int. Conf. on Communications, Vol 1, 1973, pg. 11.12-11.17.

## 💡 Example

```matlab
l = mu2lin([0:20:255])
```

## 🔗 See also

[audioplayer](../audio/audioplayer.md), [lin2mu](../audio/lin2mu.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
