void SayHelloNTimes(int n)
{
	while(n > 0)
	{
	puts("Hello World: " + n);
	n = n - 1;
	}
}

main(){

	int d = 0;

	puts("");
	puts("Demo of subroutine 'SayHelloNTimes' ");
	puts("------------------------------------");
	puts("");

	puts("Say hello how many times?");
	d = gets();

	SayHelloNTimes(d);

}