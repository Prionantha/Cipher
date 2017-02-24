/* 10/18/2014
 * Implemented Vigenere cipher. The shift in alphabet depends on the letter in key accordingly. 
 * Case sensitive. Output would have the same case as input.
 * If plain text is longer than key, key would automatically be duplicated to fit the length.
 * /
 
var a:array[1..1000]of char;
    b:array[1..1000]of char;
    c:array[1..1000]of char;
    i,j,k,l:integer;
begin
    i:=1;
    while not eoln do
    begin
        read(a[i]);
        inc(i);
    end;//miyue
    readln;
    j:=1;
    while not eoln do
    begin
        read(b[j]);
        inc(j);
    end;//miwen
    for k:=i to j-1 do
        a[k]:=a[k-i+1];
    for k:=1 to j-1 do
    begin
        if ord(a[k])> 96 then l:=(ord(a[k])+7)mod 26 -26 //-26
        else l:=(ord(a[k])+13) mod 26 -26; //-6
        if ord(b[k])> 96 then
            c[k]:=chr((ord(b[k])-l+7) mod 26 +97) //-l
        else
            c[k]:=chr((ord(b[k])-l+13)mod 26 +65); //-l
        write(c[k]);
    end;
end.
