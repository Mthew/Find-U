namespace Finder.Dto
{
    public class UniversityDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Nit { get; set; }
        public int TypeId { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }

        public UniversityTypeDto UniversityType { get; set; }

        #region No official properties
        public string TypeName
        {
            get
            {
                return this.UniversityType == null ? string.Empty : this.UniversityType.Name;
            }
        }
        #endregion
    }
}
