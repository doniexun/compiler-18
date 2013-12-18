var a, b, c:integer;
	z:integer;
begin
	z := a + (b + c) + (b + c) + a;
	a := z;
	z := z + 1;
end.