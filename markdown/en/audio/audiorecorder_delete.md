# audiorecorder_delete

Removes audiorecorder object.

## 📝 Syntax

- audiorecorder_delete(h)
- delete(h)

## 📥 Input argument

- h - a handle: an audiorecorder object.

## 📄 Description

<b>delete(h)</b> releases audiorecorder object.

Do not forget to clear h afterward.

## 💡 Example

```matlab
audiorecorder_used(),delete(audiorecorder_used())
```

## 🔗 See also

[audiorecorder](../audio/audiorecorder.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
