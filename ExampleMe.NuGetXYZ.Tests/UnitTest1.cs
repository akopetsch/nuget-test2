using ExampleMe.NuGetXYZ;

namespace ExampleMeNuGetXYZ.Tests;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {
        Foo foo = new ExampleCsvHelper().GetFoo();
        Assert.Equal(1, foo.Id);
        Assert.Equal("one", foo.Name);
    }
}