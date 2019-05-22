namespace Finder.Dto
{
    using System.Collections.Generic;
    public class DepartamentDto
    {
        public int Id { get; set; }
        public int CountyId { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }

        public CountryDto Country { get;set; }
        public List<CityDto> Cities { get; set; }
    }
}
