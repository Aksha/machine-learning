function plotdata(X,y)

figure; hold on;

pos = find( y == 1);
neg = find(	y == 0);

plot(X(pos,1), X(pos,2), 'k+','LineWidth', 2,      'MarkerSize', 2);
plot(X(neg, 1), X(neg, 2), 'bo', 'MarkerFaceColor', 'y',      'MarkerSize', 2);


hold off;

end