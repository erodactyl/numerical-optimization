% Written in Octave
n = [2, 4, 8, 16];

f1 = @(x) log(x ^ 2 - 1.6 * x + 3);
f1prime = @(x) (2 * x - 1.6) / (x ^ 2 - 1.6 * x + 3);
f1primeprime = @(x) (-2 * (x ^ 2 - 1.6 * x - 1.72)) / ((x ^ 2 - 1.6 * x + 3) ^ 2);
a1 = 0;
b1 = 3;
actual_min1 = 0.85866;

f2 = @(x) (x - 1) * exp(-2 * x ^ 2 + 4 * x);
f2prime = @(x) exp(-2 * x ^ 2 + 4 * x) + (x - 1) * exp(-2 * x ^ 2 + 4 * x) * (-4 * x + 4);
f2primeprime = @(x) 4 * exp(-2 * (x - 2) * x) * (4 * x ^ 3 - 12 * x ^ 2 + 9 * x - 1);
a2 = 0;
b2 = 3;
actual_min2 = -2.24084;

f3 = f2;
f3prime = f2prime;
f3primeprime = f2primeprime;
a3 = -1;
b3 = 1;
actual_min3 = actual_min2;

fprintf('\n\n');
disp('FIRST FUNCTION');
for i = n
	fprintf('\n');
	disp(['--> n is ' num2str(i)]);
	golden = GoldenSectionSearch(f1, a1, b1, i)
	fib = FibonacciSearch(f1, a1, b1, i)
	bisection = BisectionSearch(f1, f1prime, a1, b1, i)
	newton = NewtonSearch(f1, f1prime, f1primeprime, a1, b1, i)
	fprintf('\n');
	golden_error = abs(golden - actual_min1)
	fib_error = abs(fib - actual_min1)
	bisection_error = abs(bisection - actual_min1)
	newton_error = abs(newton - actual_min1)
end

fprintf('\n\n');
disp('SECOND FUNCTION');
for i = n
	fprintf('\n');
	disp(['--> n is ' num2str(i)]);
	golden = GoldenSectionSearch(f2, a2, b2, i)
	fib = FibonacciSearch(f2, a2, b2, i)
	bisection = BisectionSearch(f2, f2prime, a2, b2, i)
	newton = NewtonSearch(f2, f2prime, f2primeprime, a2, b2, i)
	fprintf('\n');
	golden_error = abs(golden - actual_min2)
	fib_error = abs(fib - actual_min2)
	bisection_error = abs(bisection - actual_min2)
	newton_error = abs(newton - actual_min2)
end

fprintf('\n\n');
disp('THIRD FUNCTION');
for i = n
	fprintf('\n');
	disp(['--> n is ' num2str(i)]);
	golden = GoldenSectionSearch(f3, a3, b3, i)
	fib = FibonacciSearch(f3, a3, b3, i)
	bisection = BisectionSearch(f3, f3prime, a3, b3, i)
	newton = NewtonSearch(f3, f3prime, f3primeprime, a3, b3, i)
	fprintf('\n');
	golden_error = abs(golden - actual_min3)
	fib_error = abs(fib - actual_min3)
	bisection_error = abs(bisection - actual_min3)
	newton_error = abs(newton - actual_min3)
end
