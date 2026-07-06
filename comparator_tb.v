module comparator_tb;
reg a,b;
wire lt,gt,eq;

comparator ramesh(a,b,lt,gt,eq);
initial begin
$monitor("a=%b,b=%b,lt=%b,gt=%b,eq=%b",a,b,lt,gt,eq);
begin
#1;
a=0;b=0;#1;
a=0;b=1;#1;
a=1;b=0;#1;
a=1;b=1;#1;
end
end
endmodule