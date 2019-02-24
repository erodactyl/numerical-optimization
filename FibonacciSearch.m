function minimum = FibonacciSearch(f, a, b, n)
	a0 = a;
	b0 = b;
	argmin = (a0 + b0) / 2;
	for i = 1:n
		distance = b0 - a0;
		r = 1 - fibonacci(n - i + 2) / fibonacci(n - i + 3);
		a1 = a0 + r * distance;
		b1 = b0 - r * distance;
		if (f(a1) < f(b1))
			b0 = b1;
		else
			a0 = a1;
		end
		argmin = (a0 + b0) / 2;
	end
	minimum = f(argmin);
end

function res = fibonacci(n)
	if (n == 1 | n == 2)
		 res = 1;
	else
		 fOld = 1;
		 fOlder = 1;
		 for i = 3 : n
			 res = fOld + fOlder;
			 fOlder = fOld;
			 fOld = res;
		 end
	end
end
