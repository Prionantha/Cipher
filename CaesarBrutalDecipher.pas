/* 10/16/2014
 * Print out result of all possible shifts.
 * Input: A line of cipher text.
 */

var i,j,k:integer;
    c:byte;
    a:array[1..32767]of char;
begin
    i:=1;
    while not eoln do
    begin
        read(a[i]);
        i:=i+1;
    end;
    for j:=0 to 25 do
    begin
        write(j,* *);
        for k:=1 to i-1 do
        begin
            c:=(ord(a[k])+j+7) mod 26 +97;
            write(chr(c))
        end;
        writeln(c);
        writeln;
    end;
end.
