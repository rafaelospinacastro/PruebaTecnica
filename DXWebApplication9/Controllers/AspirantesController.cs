using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DXWebApplication9.Models;

namespace DXWebApplication9.Controllers
{
    public class AspirantesController : Controller
    {
        private readonly PruebaRazorContext _context;

        public AspirantesController(PruebaRazorContext context)
        {
            _context = context;
        }

        // GET: Aspirantes
        public async Task<IActionResult> Index()
        {
              return View(await _context.Aspirantes.ToListAsync());
        }

        // GET: Aspirantes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Aspirantes == null)
            {
                return NotFound();
            }

            var aspirante = await _context.Aspirantes
                .FirstOrDefaultAsync(m => m.Id == id);
            if (aspirante == null)
            {
                return NotFound();
            }

            return View(aspirante);
        }

        // GET: Aspirantes/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Aspirantes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,IdTipoDocumento,NumeroDocumento,Nombres,Apellidos,Telefono,Celular,Correo,IdDepartamento,IdCiudad,IdGrupoSanguineo,FechaNacimiento,FechaExpedicion,IdSexo,IdEstadoCivil")] Aspirante aspirante)
        {
            if (ModelState.IsValid)
            {
                _context.Add(aspirante);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(aspirante);
        }

        // GET: Aspirantes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Aspirantes == null)
            {
                return NotFound();
            }

            var aspirante = await _context.Aspirantes.FindAsync(id);
            if (aspirante == null)
            {
                return NotFound();
            }
            return View(aspirante);
        }

        // POST: Aspirantes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,IdTipoDocumento,NumeroDocumento,Nombres,Apellidos,Telefono,Celular,Correo,IdDepartamento,IdCiudad,IdGrupoSanguineo,FechaNacimiento,FechaExpedicion,IdSexo,IdEstadoCivil")] Aspirante aspirante)
        {
            if (id != aspirante.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(aspirante);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AspiranteExists(aspirante.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(aspirante);
        }

        // GET: Aspirantes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Aspirantes == null)
            {
                return NotFound();
            }

            var aspirante = await _context.Aspirantes
                .FirstOrDefaultAsync(m => m.Id == id);
            if (aspirante == null)
            {
                return NotFound();
            }

            return View(aspirante);
        }

        // POST: Aspirantes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Aspirantes == null)
            {
                return Problem("Entity set 'PruebaRazorContext.Aspirantes'  is null.");
            }
            var aspirante = await _context.Aspirantes.FindAsync(id);
            if (aspirante != null)
            {
                _context.Aspirantes.Remove(aspirante);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AspiranteExists(int id)
        {
          return _context.Aspirantes.Any(e => e.Id == id);
        }
    }
}
