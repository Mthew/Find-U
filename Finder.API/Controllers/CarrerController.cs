namespace Finder.API.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Net.Http;
    using System.Web.Http;
    using Rules;
    using System.Web.Http.Cors;

    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class CarrerController : ApiController
    {
        // GET: api/Carrer
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Carrer/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST: api/Carrer

        [HttpGet]
        public IHttpActionResult Get(string name)
        {
            try
            {
                using (CarrerRule rule = new CarrerRule())
                {
                    var items = rule.ListByName(name);
                    return Ok(items);
                }
            }
            catch (Exception ex)
            {
                HttpResponseMessage msg = Request.CreateResponse(HttpStatusCode.InternalServerError, ex.Message);
                return ResponseMessage(msg);
            }
        }
    }
}
