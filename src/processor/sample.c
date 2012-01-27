void SayHelloNTimes(int n)
{
	while(n > 0)
	{
		puts("Hello World: " + n);
		n = n - 1;
	}
}

int $d  = 0;

void Sqr(int s)
{
	$d = s * s;
}

void Fibonacci(int r)
{
	int f = 0;
	int b = 1;
	int i = 0;
	int t = 0;
	
	while(i < r)
	{
		puts("F: " + f);
		t = b;
		b = f + b;
		f = t;
		i = i + 1;
	}
}

main(){
	
	int d = 0;
	string s = "hello";
	float f = 0.0;
	char c = 's';
	
	puts ("");
	puts ("Demo of input / output");
	puts("------------------------------");
	puts ("");
	puts ("Please enter a number:");
	
	d = gets();
	
	if(d >= 10)
	{
		if(d > 10)
		{
			puts ("Value of d (" + d + ") is greater than or equal 10");
		}
		else
		{
			puts ("Value of d (" + d + ") is equal 10");
		}	
	}
	else
	{
		puts ("Value of d: (" + d + ") is less than 10");
	}
	
	puts("");
	puts("Demo of subroutine 'SayHelloNTimes' ");
	puts("------------------------------------");
	puts("");
	
	puts("Say hello how many times?");
	d = gets();
	
	SayHelloNTimes(d);
	
	puts("");
	puts("Demo of subroutine 'Sqr' ");
	puts("------------------------------------");
	puts("");
	
	puts ("Find square of this number:");
	d = gets();
	
	Sqr(d);
	
	puts ("Answer: " + d);
	
	puts("");
	puts("Demo of subroutine 'Fibonacci' ");
	puts("------------------------------------");
	puts("");
	
	puts ("How many Fibonacci sequence you would like to print?");
	d = gets();
	
	Fibonacci(d);
	

}








