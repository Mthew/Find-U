namespace Finder.Dto
{
    using System.Collections.Generic;
    public class CountryDto
    {
        public int Id { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }

        List<DepartamentDto> Departaments { get; set; }
    }
}
