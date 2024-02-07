using System;
using System.Collections.Generic;

namespace DXWebApplication9.Models
{
    public partial class AspiranteInscrito
    {
        public int Id { get; set; }
        public int? IdTipoAspirante { get; set; }
        public int? IdModalidad { get; set; }
        public int? IdSede { get; set; }
        public int? IdPrograma { get; set; }
        public int? IdPeriodo { get; set; }
        public string IdAspirante { get; set; }
    }
}
