# gatewayinfo

Returns information about an gateway.

## 📝 Syntax

- [gateway\_name, builtin\_list] = gatewayinfo(dyn\_lib\_path)
- [gateway\_name, builtin\_list, state] = gatewayinfo(dyn\_lib\_path)

## 📥 Input argument

- dyn\_lib\_path - a string: path of a dynamic library prepared for Nelson.

## 📤 Output argument

- gateway\_name - a string: gateway name
- builtin\_list - a cell of strings: list of builtin in this gateway
- state - a string: current gateway state, <b>loaded</b>, <b>lazy</b> or <b>not\_loaded</b>

## 📄 Description


<b>[gateway\_name, builtin\_list] = gatewayinfo(dyn\_lib\_path)</b> get information about an gateway. 

The dynamic library must have a C entry point named <b>GetGatewayDescriptor</b>. 

The optional third output reports whether the gateway is currently loaded, registered lazily, or not registered. 

Descriptor metadata can be reused from the unique cache file <b>prefdir()/gateway\_cache.json</b>; the cache entry is rebuilt automatically when the dynamic library changes. 

If file does not exist an error is raised.

## 💡 Example



```matlab
[gateway_name, builtin_list, state] = gatewayinfo(modulepath('time', 'builtin'))

```


## 🔗 See also

[addgateway](../modules_manager/addgateway.md), [removegateway](../modules_manager/removegateway.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
