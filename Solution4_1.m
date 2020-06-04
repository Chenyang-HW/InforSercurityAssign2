clc;clear;close all;
d=randi([2 22],1,10);
% d=[2]

N=2.^d;

% n=1:100
for i=1:length(d)
    n(i,:)=1:100-1;
end

% r=1-exp(-0.5.*n.*n./N);
% plot(n,r)

for i=1:length(d)
    for j=1:100-1
        r(i,j)=1-exp(-0.5*n(i,j)*n(i,j)/N(i));
    end
end

for i=1:length(d)
subplot(2,1,1);
plot(d(i),r(i,:),'x-');
xlabel('Hash values');
ylabel('Hash collision probability r');
grid on
hold on

subplot(2,1,2);
plot(n(i,:),r(i,:),'x-');
xlabel('Number of collision');
ylabel('Hash collision probability r');
grid on
hold on

end
axis tight

