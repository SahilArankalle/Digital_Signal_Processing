x = [1,2,3,4];
h = [-3,2,1,0];
l1 = length(x);
l2 = length(h);
N = max(l1,l2);
y = cconv(x,h,N);
disp('Inbuilt method');
disp(y);
x = [x, zeros(1,N-l1)];
h = [h, zeros(1,N-l2)];
y = zeros(1,N);
for m=0:N-1
    for n=0:N-1
        z = mod(m-n,N);
        y(m+1) = y(m+1)+x(n+1)*h(z+1);
    end
end
disp('Manual method');
disp(y);
