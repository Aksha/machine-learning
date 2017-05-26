%predict if the person recovers or not

function pred = predictionFunction(X, theta)

pred =  X * theta;

%fprintf("prediction is %f", pred);

for i = 1: length(pred),
	if pred(i) >= 0.2
		pred(i) = 1;
	else
		pred(i) = 0;
	end
end
end






