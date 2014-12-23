function TForm1.Freedom (x, y: Integer; Field: TField): Boolean;
const d: array[1..8,1..2] of Integer =
      ((0,1),(1,0),(0,-1),(-1,0),(1,1),(-1,1),(1,-1),(-1,-1));
var i: Integer;
    dx, dy: Integer;
begin
  if (x > 0) and (x < 11) and (y > 0) and (y < 11) and (Pole[x,y] = 0) then
  begin
    for i := 1 to 8 do
    begin
      dx := x + d[i,1];
      dy := y + d[i,2];
      if (dx > 0) and (dx < 11) and (dy > 0) and (dy < 11) and (Pole[dx,dy] > 0) then
      begin
        Result := False;
        Exit;
      end; {if}
    end; {for}
    Result := True;
  end else Result := False;
end; 
