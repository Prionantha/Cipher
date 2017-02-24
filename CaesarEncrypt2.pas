/* 20/15/2014
 * Given shift in alphabet and plain text, print out the ciphertext.
 * Input : Two lines.
           1. Shift in alphabet
           2. Plain text.
 * Plain text can be either lower case or capitalized. The output would remain the same form.
 * How did I wrote so many code on the same day..
 */

var i,j,k,c:integer;
    a:char;
begin
    readln(i);
    i:=i mod 26;
    k:=1;
    while not eoln do
    begin
        read(a);
        if ord(a)>96 then
        begin
            c:=(ord(a)+i+7) mod 26 +97;
            write(chr(c));
        end
        else if ord(a)<91 then
        begin
            c:=(ord(a)+i+13) mod 26 +65;
               write(chr(c));
        end;
    end;
end.
