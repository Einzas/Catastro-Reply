﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using REST_CE.Datos;
using REST_CE.Datos.Catastro;
using REST_CE.Models;
using REST_CE.Models.Catastro;
namespace REST_CE.Controllers.Catastro
{
    [ApiController]
    [Route("puesto")]
    public class Cls_PuestoController : ControllerBase
    {
        Cls_Puesto_DAL obj = new Cls_Puesto_DAL();

        [HttpGet]
        [Route("listar")]
        public async Task<ActionResult<List<Cls_Puesto_DAL>>> Get()
        {
            var function = new Cls_Puesto_Da();
            var lista = await function.MostrarProductos();
            return lista;
        }

        [HttpPost]
        [Route("guardar")]
        public async Task Post([FromBody] Cls_Puesto_DAL obj)
        {
            var function = new Cls_Puesto_Da();
            await function.Insert(obj);
        }

        [HttpPut("edit/{id}")]
        public async Task<ActionResult> Put(int id, [FromBody] Cls_Puesto_DAL obj)
        {
            var function = new Cls_Puesto_Da();
            obj.ayudante_id = id;
            await function.Edit(obj);
            return NoContent();
        }

        [HttpDelete("delete/{id}")]
        public async Task<ActionResult> Delete(int id)
        {
            var function = new Cls_Puesto_Da();
            await function.Delete(id);
            return NoContent();
        }

    }
}
