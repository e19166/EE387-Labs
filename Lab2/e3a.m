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

function [ S ] = merchant( M )

 %M[n], monthly earnings is the input sequence.
 %S[n], the savinge at the end of every month is the output sequence.
 S=zeros(1,length(M));
 S(1)=0.5*M(1);

%since the balance brought forward is 0 and half the first month earnings is saved.
 for m=2:length(M)

 S(m)=S(m-1)+0.5*M(m);
%since half of every months earninge is added to the savings.

end

end

