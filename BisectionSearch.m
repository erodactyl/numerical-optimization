function minimum = BisectionSearch(f, fprime, a, b, n)
	a0 = a;
	b0 = b;
	argmin = (a0 + b0) / 2;
	for i = 1:n
		der = fprime(argmin);
		if (der == 0)
			break;
		elseif (der < 0)
			a0 = argmin;
		else
			b0 = argmin;
		end
		argmin = (a0 + b0) / 2;
	end
	minimum = f(argmin);
end
