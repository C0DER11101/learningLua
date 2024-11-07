a = {};

i = 10; j = "10"; k = "+10";

a[i] = "one value";
a[j] = "another value";
a[k] = "yet another value";

print(a[i]);
print(a[j]);
print(a[k]);
print("-----------------");

print(a[j]);
print(a[k]);
print("-----------------");

print(a[tonumber(j)]); -- "10" converted to number is 10, so this prints the string 'one value'
print(a[tonumber(k)]); -- "+10" converted to number is again 10, so this again prints the string 'one value'
