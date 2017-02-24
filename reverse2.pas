/* 10/15/2016
 * Reverse the given string. Able to deal with longer input than reverse.pas.
 */
 
var ch:array[1..32767]of char;
    i,j:integer;
begin
    i:=1;
    while not eoln do
    begin
        read(ch[i]);
        inc(i);
    end;
    for j:=i-1 downto 1 do write(ch[j]);
end.    
