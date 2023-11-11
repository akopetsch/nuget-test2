# Create a class library project and a test project
dotnet new classlib -f netstandard2.1 -o ExampleMe.NuGetXYZ
dotnet new xunit -f net6.0 -o ExampleMe.NuGetXYZ.Tests

dotnet add ExampleMe.NuGetXYZ.Tests reference ExampleMe.NuGetXYZ

# Add MinVer to handle package versioning based on the commit / tag
dotnet add ExampleMe.NuGetXYZ package MinVer

# Create a sln containing both projects
dotnet new sln --name ExampleMe.NuGetXYZ
dotnet sln add ExampleMe.NuGetXYZ
dotnet sln add ExampleMe.NuGetXYZ.Tests

# Create a global.json file to specify the required .NET SDK version.
# This file is used by GitHub Actions to install the required .NET SDK version.
dotnet new globaljson --roll-forward feature
