# addgateway

Adds dynamically builtin at runtime.

## 📝 Syntax

- addgateway(dyn\_lib\_path)
- addgateway(dyn\_lib\_path, mode)
- addgateway(dyn\_lib\_path, module\_name, mode)

## 📥 Input argument

- dyn\_lib\_path - a string: path of a dynamic library prepared for Nelson.
- mode - a string: <b>auto</b> uses the gateway cache and lazy-loading when possible, <b>loaded</b> forces immediate loading.

## 📄 Description


<b>addgateway(dyn\_lib\_path)</b> adds dynamically builtin at runtime. 

The dynamic library must provide <b>GetGatewayDescriptor</b> and <b>AddGateway</b>. 

By default, <b>auto</b> mode registers lazy builtins from the cache when possible. Use <b>loaded</b> to force the dynamic library to be loaded immediately. 

Gateway descriptors are stored in one cache file, <b>prefdir()/gateway\_cache.json</b>. Nelson rebuilds the cache entry automatically when the dynamic library changes. 

Set <b>NELSON\_GATEWAY\_TRACE=1</b> to print gateway cache and loading decisions. Set <b>NELSON\_GATEWAY\_FORCE\_LOADED=1</b> to force immediate loading for all gateways. 

If gateway was already loaded, no error or warning will be raised.

## 💡 Example

Add gateway for string module:

```matlab
addgateway(modulepath('time', 'builtin'), 'loaded')
```


## 🔗 See also

[removegateway](../modules_manager/removegateway.md), [gatewayinfo](../modules_manager/gatewayinfo.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
