using System;
using System.Collections.Generic;

namespace DXWebApplication9.Models
{
    public partial class Ciudad
    {
        public int Id { get; set; }
        public int? IdDepartamento { get; set; }
        public string Nombre { get; set; }
    }
}
