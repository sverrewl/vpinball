'static HRESULT WINAPI dictionary_get_Count(IDictionary *iface, LONG *count);
'static HRESULT WINAPI dictionary_Exists(IDictionary *iface, VARIANT *key, VARIANT_BOOL *exists);
'static HRESULT WINAPI dictionary_Items(IDictionary *iface, VARIANT *items);
'static HRESULT WINAPI dictionary_put_Key(IDictionary *iface, VARIANT *key, VARIANT *newkey);
'static HRESULT WINAPI dictionary_Keys(IDictionary *iface, VARIANT *keys);
'static HRESULT WINAPI dictionary_Remove(IDictionary *iface, VARIANT *key);
'static HRESULT WINAPI dictionary_RemoveAll(IDictionary *iface);
'static HRESULT WINAPI dictionary_put_CompareMode(IDictionary *iface, CompareMethod method);
'static HRESULT WINAPI dictionary_get_CompareMode(IDictionary *iface, CompareMethod *method);
'static HRESULT WINAPI dictionary__NewEnum(IDictionary *iface, IUnknown **ret);
'static HRESULT WINAPI dictionary_get_HashVal(IDictionary *iface, VARIANT *key, VARIANT *hash);

Dim obj_datadict
Set obj_datadict = CreateObject("Scripting.Dictionary")

obj_datadict.Add "a", "Apple"
obj_datadict.Add "b", "BlueTooth"
obj_datadict.Add "c", "C++"

Debug.Print "c exists: " & obj_datadict.Exists("c")
Debug.Print "d exists: " & obj_datadict.Exists("d")

a = obj_datadict.items
         
Debug.print "a(0) = " & a(0)
Debug.print "a(2) = " & a(2)

b = obj_datadict.Keys
         
Debug.print b(0)
Debug.print b(2)

Debug.print "b(0) = " & b(0)
Debug.print "b(2) = " & b(2)

Debug.print "Hash c: " & obj_datadict.HashVal("c")

obj_datadict.remove("b")  

Debug.Print "remove b, b exists: " & obj_datadict.Exists("b")

Debug.print "count: " & obj_datadict.Count

obj_datadict.RemoveAll 

Debug.print "remove all count: " & obj_datadict.Count
