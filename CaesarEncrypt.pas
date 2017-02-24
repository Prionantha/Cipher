/* 10/15/2014
 * Print out the ciphertext given the shift and plain text.
 * Input: Two lines. 
        1.The number of shift in alphabet. 
        2. The plain text.(restricted to lower case) 
 */

var i,j,k,c:integer;
    a:array[1..32767]of char;
begin
    readln(i);
    i:=i mod 26;
    k:=1;
    while not eoln do
    begin
        read(a[k]);
        inc(k);
    end;
    for j:=1 to k-1 do
       begin
        c:=(ord(a[j])+i+7) mod 7 +97;
        write(chr(c));
    end;
end.
