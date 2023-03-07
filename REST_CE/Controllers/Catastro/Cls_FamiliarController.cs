﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using REST_CE.Datos.Catastro;
using REST_CE.Models.Catastro;

namespace REST_CE.Controllers.Catastro
{
    [Route("familiar")]
    [ApiController]
    public class Cls_FamiliarController : ControllerBase
    {

        Cls_Familiar_DAL obj = new Cls_Familiar_DAL();

        [HttpGet]
        [Route("listar")]
        public async Task<ActionResult<List<Cls_Familiar_DAL>>> Get()
        {
            var function = new Cls_Familiar_Da();
            var lista = await function.MostrarProductos();
            return lista;
        }

        [HttpPost]
        [Route("guardar")]
        public async Task Post([FromBody] Cls_Familiar_DAL obj)
        {
            var function = new Cls_Familiar_Da();
            await function.Insert(obj);
        }

        [HttpPut("edit/{id}")]
        public async Task<ActionResult> Put(int id, [FromBody] Cls_Familiar_DAL obj)
        {
            var function = new Cls_Familiar_Da();
            obj.familiar_id = id;
            await function.Edit(obj);
            return NoContent();
        }

        [HttpDelete("delete/{id}")]
        public async Task<ActionResult> Delete(int id)
        {
            var function = new Cls_Familiar_Da();
            await function.Delete(id);
            return NoContent();
        }
    }
}
