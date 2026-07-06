module comparator(a,b,lt,gt,eq);
input a,b;
output lt,gt,eq;

wire na,nb;

not (na,a);
not (nb,b);
and (lt,na,b);
and (gt,a,nb);
xnor(eq,a,b);
endmodule