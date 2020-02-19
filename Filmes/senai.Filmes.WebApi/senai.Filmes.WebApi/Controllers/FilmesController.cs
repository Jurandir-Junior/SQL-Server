using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai.Filmes.WebApi.Domains;
using senai.Filmes.WebApi.Interfaces;
using senai.Filmes.WebApi.Repositories;

namespace senai.Filmes.WebApi.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class FilmesController : ControllerBase
    {
        private IFilmeRepository _filmeRepository { get; set; }

        public FilmesController()
        {
            _filmeRepository = new FilmeRepository();
        }

        [HttpGet]
        public IEnumerable<FilmeDomain> Get()
        {                        
            return _filmeRepository.Listar();
        }
        
        [HttpPost]
        public IActionResult Post(FilmeDomain novoFilme)
        {
            _filmeRepository.Cadastrar(novoFilme);

            return StatusCode(201);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _filmeRepository.Deletar(id);

            return Ok("Filme Deletado");
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            FilmeDomain filmeBuscado = _filmeRepository.BuscarPorId(id);

            if(filmeBuscado == null)
            {
                return NotFound("Filme não encontrado");
            }
            return Ok(filmeBuscado);
        }

        [HttpPut]
        public IActionResult PutIdCorpo(FilmeDomain filmeAtualizado)
        {
            FilmeDomain filmeBuscado = _filmeRepository.BuscarPorId(filmeAtualizado.IdFilme);

            if(filmeBuscado != null)
            {
                try
                {
                    _filmeRepository.AtualizarIdCorpo(filmeAtualizado);

                    return NoContent();
                }
                catch (Exception erro)
                {
                    return BadRequest(erro);
                }
            }
            return NotFound
                (
                    new
                    {
                        mensagem = "Filme não encontrado",
                        erro = true
                    }
                );
        }
    }
}