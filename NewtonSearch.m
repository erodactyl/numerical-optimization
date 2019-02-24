function minimum = NewtonSearch(f, fprime, fprimeprime, a, b, n)
	argmin = (a + b) / 2;
	for i = 1:n
		argmin = argmin - (fprime(argmin) / fprimeprime(argmin));
	end
	minimum = f(argmin);
end
