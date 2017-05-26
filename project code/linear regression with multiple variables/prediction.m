%predict if the person recovers or not

function pred = prediction(theta, mu, sigma);

pred = sum(theta'.* [1,(([4,522]-mu )./ sigma)]);

fprintf("prediction is %f \n", pred);

for i = 1: length(pred),
	if pred(i) >= 0.2
		pred(i) = 1;
	else
		pred(i) = 0;
	end
end
end






