namespace Finder.Repository
{
    using System.Collections.Generic;
    using System.Linq;
    using Model;
    using Dto;

    public class CarrerRpository
    {
        #region Private Properties
        private FinderModelDataContext db = null;
        #endregion

        #region Contructors
        public CarrerRpository()
        {
            this.db = new FinderModelDataContext();
        }
        #endregion

        #region Public Methods

        #region Getters
        public List<CarrerDto> Get()
        {
            return this.db.CarrersUniversities.Select(e => new CarrerDto
            {
                Id = e.Id,
                UniversityId = e.UniversityId,
                Name = e.Name,
                Description = e.Description,
                SNIESCode = e.SNIESCode,
                QualifiedRegistration = e.QualifiedRegistration,
                Accreditation = e.Accreditation,
                TitleGranted = e.TitleGranted,
                Duration = e.Duration,
                Modality = e.Modality,
                CityId = e.CityId
            }).ToList();
        }

        public CarrerDto Get(int id)
        {
            return this.db.CarrersUniversities
                .Where(e => e.Id == id)
                .Select(e => new CarrerDto
                {
                    Id = e.Id,
                    UniversityId = e.UniversityId,
                    Name = e.Name,
                    Description = e.Description,
                    SNIESCode = e.SNIESCode,
                    QualifiedRegistration = e.QualifiedRegistration,
                    Accreditation = e.Accreditation,
                    TitleGranted = e.TitleGranted,
                    Duration = e.Duration,
                    Modality = e.Modality,
                    CityId = e.CityId
                }).FirstOrDefault();
        }

        public List<CarrerDto> Get(string name)
        {
            return this.db.CarrersUniversities
                .Where(e => e.Name.Contains(name))
                .Select(e => new CarrerDto
                {
                    Id = e.Id,
                    UniversityId = e.UniversityId,
                    Name = e.Name,
                    Description = e.Description,
                    SNIESCode = e.SNIESCode,
                    QualifiedRegistration = e.QualifiedRegistration,
                    Accreditation = e.Accreditation,
                    TitleGranted = e.TitleGranted,
                    Duration = e.Duration,
                    Modality = e.Modality,
                    CityId = e.CityId,
                    University = new UniversityDto() { 
                        Id = e.University.Id,
                        Name = e.University.Name,
                    } 
                }).ToList();
        }
        #endregion

        #endregion
    }
}