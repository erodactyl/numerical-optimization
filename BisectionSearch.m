function result = BisectionSearch(f, fprime, a, b, n)
	a0 = a;
	b0 = b;
	result = (a0 + b0) / 2;
	for i = 1:n
		der = fprime(result);
		if (der == 0)
			result
			break;
		elseif (der < 0)
			a0 = result;
		else
			b0 = result;
		end
		result = (a0 + b0) / 2;
	end
end
