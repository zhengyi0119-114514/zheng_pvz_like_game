#include <format>
#include <iostream>

int main()
{
	auto message = std::format(L"");
	std::wcout<<message;
}
