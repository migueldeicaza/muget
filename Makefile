muget.exe: muget.cs
	dmcs -debug muget.cs Options.cs -r:NuGet.Core.dll

list: muget.exe
	mono --debug muget.exe list

install: muget.exe
	mono --debug muget.exe install RazorEngine 2.1