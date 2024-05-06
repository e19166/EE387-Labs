function [ B ] = investor(P)

 %P[n], the net savinge per month is the input sequence.
 %B[n], the bank balance at the end of every month is the output sequence.
 B=zeros(1,length(P));

 %since the bank balance at the end of the firet month is only the net savings.
 B(1)=P(1);

 for m=2:length(P)

 %the new bank balance ie the previoue bank balance, intereet for it and the net eavinge of the month.
 B(m)=1.01*B(m-1)+P(m);

end

end

