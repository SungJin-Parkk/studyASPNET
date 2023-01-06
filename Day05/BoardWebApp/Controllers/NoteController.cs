using BoardWebApp.Data;
using BoardWebApp.Models;
using Microsoft.AspNetCore.Mvc;

namespace BoardWebApp.Controllers
{
    public class NoteController : Controller
    {
        private readonly ApplicationDbContext _context;

        public NoteController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index() // Index 누르고 오른쪽 마우스 눌러서 뷰추가 !!
        {
            IEnumerable<Note> list = _context.Notes.ToList();   // DB 에서 데이터를 가져와서 
            return View(list);
        }
    }
}
