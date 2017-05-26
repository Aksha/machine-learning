%predict if the patient's condition improves or not

function pred = prediction(X, theta)

pred = sigmoid(X * theta);

for i = 1: length(pred),
	if pred(i) >= 0.5
		pred(i) = 1;
	else
		pred(i) = 0;
	end
end
end






