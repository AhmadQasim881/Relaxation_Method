A=input('Enter the coefficient matrix : ');
B=input('Enter source vector : ');
I=input('Enter intial value  : ');
n=input('Enter Number of iterations : ');

N=length(B);
X=zeros(1,N);
c=diag(A);

D=zeros(N,N);
E=zeros(1,N);

r=zeros(1,N);

for i=1:N 
    R=-1*c(i);
    for j=1:N
        D(i,j)=A(i,j)/R;
    end
    E(i)=B(i)/(-1*R);
end


for i=1:n
    for j=1:N
        for k=1:length(A)
            r(1,j)=r(1,j)+I(k)*D(j,k);
        end
        r(1,j)=r(1,j)+E(1,j);
    end
    [val,ind]=max(abs(r));
    I(ind)=I(ind)+r(ind);
    X=I;
    r(:)=0;
end

fprintf("%d ",X);
fprintf("\n");

