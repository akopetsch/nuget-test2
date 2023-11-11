using CsvHelper;
using System.Globalization;
using System.IO;
using System.Linq;

namespace ExampleMe.NuGetXYZ
{
    public class ExampleCsvHelper
    {
        public Foo GetFoo(string baseDirectory = null)
        {
            string path = Path.Combine("Csv", "Test.csv");
            if (baseDirectory != null)
                path = Path.Combine(baseDirectory, path);
            using (var reader = new StreamReader(path))
            using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
            {
                return csv.GetRecords<Foo>().First();
            }
        }
    }
}
