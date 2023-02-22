% Sandeep Uprety 
% Md. Sariful Islam
% Ajaebili Felix Uzoma
% Group 10
%Q.6

file='wine.txt';
data = importdata(file).data;

y_w = data(:,2);
x_c = data(:,3);

b1 = (x_c'*y_w - length(x_c)*mean(x_c)*mean(y_w))/(norm(x_c)^2-length(x_c)*mean(x_c)^2)
b0 = mean(y_w)-b1*mean(x_c)

a = [ones(length(x_c),1) x_c ] ;
b = regress( y_w , a)

scatter (x_c, y_w, 15)
hold on
plot(x_c ,b(1)+b(2)*x_c)
xlabel('Cluster size')
ylabel('Wine production')

%yearly production of wine if the number of berries in a bunch of grapes is 100 
yp = b(1)+b(2)*100
% 4.1102