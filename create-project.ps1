# Create a class library project and a test project
dotnet new classlib -f netstandard2.1 -o SampleNuGet
dotnet new xunit -f net6.0 -o SampleNuGet.Tests

dotnet add SampleNuGet.Tests reference SampleNuGet

# Add MinVer to handle package versioning based on the commit / tag
dotnet add SampleNuGet package MinVer

# Create a sln containing both projects
dotnet new sln --name SampleNuGet
dotnet sln add SampleNuGet
dotnet sln add SampleNuGet.Tests

# Create a global.json file to specify the required .NET SDK version.
# This file is used by GitHub Actions to install the required .NET SDK version.
dotnet new globaljson --roll-forward feature
