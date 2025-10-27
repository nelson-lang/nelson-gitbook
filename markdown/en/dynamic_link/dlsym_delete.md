# dlsym_delete

Removes dlsym object.

## 📝 Syntax

- dlsym_delete(h)
- delete(h)

## 📥 Input argument

- h - a handle: an dlsym object.

## 📄 Description

<b>delete(h)</b> releases dlsym object.

Do not forget to clear h afterward.

## 💡 Example

```matlab
dlsym_used(),delete(dlsym_used())
```

## 🔗 See also

[dlsym](../dynamic_link/dlsym.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
