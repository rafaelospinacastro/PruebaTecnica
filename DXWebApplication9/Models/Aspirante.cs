using System;
using System.Collections.Generic;

namespace DXWebApplication9.Models
{
    public partial class Aspirante
    {
        public int Id { get; set; }
        public int? IdTipoDocumento { get; set; }
        public string NumeroDocumento { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Correo { get; set; }
        public int? IdDepartamento { get; set; }
        public int? IdCiudad { get; set; }
        public int? IdGrupoSanguineo { get; set; }
        public string FechaNacimiento { get; set; }
        public string FechaExpedicion { get; set; }
        public int? IdSexo { get; set; }
        public int? IdEstadoCivil { get; set; }
    }
}
