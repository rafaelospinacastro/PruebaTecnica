using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using DXWebApplication9.Models;
using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DXWebApplication9.Controllers {

    [Route("api/[controller]")]
    public class SampleDataController : Controller {

        private readonly PruebaRazorContext _context;
        private readonly IConfiguration _configuration;

        public SampleDataController(PruebaRazorContext context, IConfiguration configuration)
        {
            _context = context;
            _configuration = configuration;
        }

        [HttpGet]
        public object Get(DataSourceLoadOptions loadOptions)
        {
            var aspirantes = _context.Aspirantes.ToList();
            return DataSourceLoader.Load(aspirantes, loadOptions);
        }
    }
}