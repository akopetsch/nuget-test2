# Create a class library project and a test project
dotnet new classlib -f netstandard2.1 -o SampleNuGetXYZ
dotnet new xunit -f net6.0 -o SampleNuGetXYZ.Tests

dotnet add SampleNuGetXYZ.Tests reference SampleNuGetXYZ

# Add MinVer to handle package versioning based on the commit / tag
dotnet add SampleNuGetXYZ package MinVer

# Create a sln containing both projects
dotnet new sln --name SampleNuGetXYZ
dotnet sln add SampleNuGetXYZ
dotnet sln add SampleNuGetXYZ.Tests

# Create a global.json file to specify the required .NET SDK version.
# This file is used by GitHub Actions to install the required .NET SDK version.
dotnet new globaljson --roll-forward feature
