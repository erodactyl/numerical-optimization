function result = NewtonSearch(f, fprime, fprimeprime, a, b, n)
	result = (a + b) / 2;
	for i = 1:n
		result = result - (fprime(result) / fprimeprime(result));
	end
end
