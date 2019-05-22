namespace Finder.Dto
{
    public class CarrerDto
    {
        public int Id { get; set; }
        public int? UniversityId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string SNIESCode { get; set; }
        public string QualifiedRegistration { get; set; }
        public string Accreditation { get; set; }
        public string TitleGranted { get; set; }
        public int? Duration { get; set; }
        public string Modality { get; set; }
        public int? CityId { get; set; }

        public CityDto City { get; set; }
        public UniversityDto University { get; set; }

        #region No official properties
        public string CityName {
            get {
                return this.City == null ? string.Empty : this.City.Name;
            }
        }
        public string UniversityName
        {
            get {
                return this.University == null ? string.Empty : this.University.Name;
            }
        }
        
        #endregion
    }
}
