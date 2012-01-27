void Rec(int a)
{
	if(a != 0)
	{
		a = a - 1;
		puts("a: " + a);
		Rec(a);
	}
	
}



main()
{
	int i = 10;

	Rec(10);
}