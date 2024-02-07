using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace DXWebApplication9.Models
{
    public partial class PruebaRazorContext : DbContext
    {
        public PruebaRazorContext()
        {
        }

        public PruebaRazorContext(DbContextOptions<PruebaRazorContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Aspirante> Aspirantes { get; set; }
        public virtual DbSet<AspiranteInscrito> AspiranteInscritos { get; set; }
        public virtual DbSet<Ciudad> Ciudads { get; set; }
        public virtual DbSet<Departamento> Departamentos { get; set; }
        public virtual DbSet<EstadoCivil> EstadoCivils { get; set; }
        public virtual DbSet<GrupoSanguineo> GrupoSanguineos { get; set; }
        public virtual DbSet<Sexo> Sexos { get; set; }
        public virtual DbSet<TipoDocumento> TipoDocumentos { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=localhost;Initial Catalog=PruebaRazor;Trusted_Connection=SSPI;MultipleActiveResultSets=true;Trust Server Certificate=true");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Aspirante>(entity =>
            {
                entity.ToTable("Aspirante");

                entity.Property(e => e.Apellidos)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.Celular)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.Correo)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.FechaExpedicion)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.FechaNacimiento)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.Nombres)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.NumeroDocumento)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Telefono)
                    .HasMaxLength(10)
                    .IsFixedLength();
            });

            modelBuilder.Entity<AspiranteInscrito>(entity =>
            {
                entity.ToTable("AspiranteInscrito");

                entity.Property(e => e.IdAspirante)
                    .HasMaxLength(10)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Ciudad>(entity =>
            {
                entity.ToTable("Ciudad");

                entity.Property(e => e.Nombre)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Departamento>(entity =>
            {
                entity.ToTable("Departamento");

                entity.Property(e => e.Nombre)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<EstadoCivil>(entity =>
            {
                entity.ToTable("EstadoCivil");

                entity.Property(e => e.Descripcion)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<GrupoSanguineo>(entity =>
            {
                entity.ToTable("GrupoSanguineo");

                entity.Property(e => e.Tipo)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Sexo>(entity =>
            {
                entity.ToTable("Sexo");

                entity.Property(e => e.Descripcion)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TipoDocumento>(entity =>
            {
                entity.ToTable("TipoDocumento");

                entity.Property(e => e.Descripcion)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
