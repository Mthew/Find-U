namespace Finder.Dto
{
    public class CityDto
    {
        public int Id { get; set; }
        public int DepartamentId { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }

        public DepartamentDto Departament { get; set; }        
    }
}
