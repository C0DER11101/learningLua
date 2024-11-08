-- mixing record-style and list-style initializations
-- Program taken from Programming in Lua: Chapter-3 - Section 3.6
-- Did small modifications

polyline = {color = "blue", thickness = 2, npoints = 4,
{x = 0, y = 0},
{x = -10, y = 0},
{x = -10, y = 1},
{x = 0, y = 1}

};

print(polyline.color);
print(polyline.thickness);
print(polyline["npoints"]);

print(polyline[1]); -- prints the address of the first table i.e. {x = 0, y = 0}
print(polyline[1].x .. "," .. polyline[1].y);
print(polyline[2]["x"] .. "," .. polyline[2]["y"]);
print(polyline[3].x .. "," .. polyline[3].y);
print(polyline[4]["x"] .. "," .. polyline[4].y);
