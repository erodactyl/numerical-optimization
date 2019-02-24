function result = GoldenSectionSearch(f, a, b, n)
	golden_ratio = (3 - sqrt(5)) / 2;
	a0 = a;
	b0 = b;
	result = (a0 + b0) / 2;
	for i = 1:n
		distance = b0 - a0;
		a1 = a0 + golden_ratio * distance;
		b1 = b0 - golden_ratio * distance;
		if (f(a1) < f(b1))
			b0 = b1;
		else
			a0 = a1;
		end
		result = (a0 + b0) / 2;
	end
end
