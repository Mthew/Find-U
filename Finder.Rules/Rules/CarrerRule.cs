namespace Finder.Rules
{
    using System.Collections.Generic;
    using Dto;
    using Repository;
    using System;
    
    public class CarrerRule: IDisposable
    {
        #region private properties
        CarrerRpository repository = null;
        #endregion

        #region Constructors
        public CarrerRule() {
            this.repository = new CarrerRpository();
        }
        #endregion

        #region Public Methods
        public List<CarrerDto> List() {
            return repository.Get();
        }

        public List<CarrerDto> ListByName(string name)
        {
            return repository.Get(name);
        }
        #endregion

        public void Dispose()
        {
        }
    }
}
