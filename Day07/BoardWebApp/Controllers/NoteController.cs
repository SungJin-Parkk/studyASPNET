using BoardWebApp.Data;
using BoardWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace BoardWebApp.Controllers
{
	public class NoteController : Controller
	{
		private readonly ApplicationDbContext _context;

		public NoteController(ApplicationDbContext context)
		{
			_context = context;
		}

		/// <summary>
		/// 기본 리스트 조회 화면
		/// </summary>
		/// <returns></returns>
		public IActionResult Index(int page =1)
		{
			//IEnumerable<Note> list = _context.Notes.ToList(); // DB에서 데이터를 가져와서~

			//var list = _context.Notes.FromSqlRaw($"SELECT TOP 5 * FROM Notes").ToList();
			int totalCount = _context.Notes.FromSqlRaw($"SELECT * FROM Notes").Count();
			int countNum = 10; // 게시판 한페이지에 뿌릴 글 갯수
			int totalPage = totalCount / countNum;
			if (totalCount % countNum > 0) totalPage++; // 페이지수를 하나 더 증가
			if (totalPage < page) page = totalPage;

			int startPage = ((page - 1) / countNum) * countNum + 1; //1
			int endPage = startPage + countNum - 1; // 10
			if (totalPage < endPage) endPage = totalPage;

			int startCount = ((page - 1) * countNum) + 1;  //1
			int endCount = startCount + 9; // 10 , 20

			ViewBag.StartPage = startPage;
			ViewBag.EndPage = endPage;
			ViewBag.Page = page;
			ViewBag.TotalPage = totalPage;

			

			var list = _context.Notes.FromSqlRaw($"EXECUTE dbo.USP_PagingNotes @StartCount={startCount},@EndCount={endCount}").ToList();

            ViewData["Titel"] = "컨트롤러에서 온 게시판"; // ViewDate 는 백엔드/ 프론트엔에서 어디서든 쓸수 있음
			return View(list);
		}

		/// <summary>
		/// Get 액션(메서드)
		/// </summary>
		/// <returns></returns>

		public IActionResult Create()
		{
			return View();
		}
		/// <summary>
		/// POST 액션(매서드)
		/// </summary>
		/// <param name="note">프론트 엔드에서 작성한 모델</param> 
		/// <returns>리스트로 다시 돌아감</returns>
		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult Create(Note note)
		{
			_context.Notes.Add(note); // INSERT 쿼리 실행
			_context.SaveChanges();   // 트랜잭션 commit

			// 처리메세지 추가

			TempData["success"] = "저장되었습니다.";

			return RedirectToAction("Index", "Note");
		}
		/// <summary>
		/// Edit 액션
		/// </summary>
		/// <param name="id">수정할 글 아이디</param>
		/// <returns></returns>
		/// 

		[HttpGet]
		public IActionResult Edit(int? id)
		{
			if (id is null)
			{
				return NotFound();
			}
			var note = _context.Notes.Find(id);
			if (note == null) { return NotFound(); }



			return View(note);
		}

		[HttpPost]
		public IActionResult Edit(Note note)
		{
			_context.Notes.Update(note);
			_context.SaveChanges();
			TempData["success"] = "수정되었습니다.";

			return RedirectToAction("Index", "Note");
		}



		[HttpGet]
		public IActionResult Delete(int? id)
		{
			if (id is null) { return NotFound(); }
			var note = _context.Notes.Find(id);
			if (note == null) { return NotFound(); }



			return View(note);
		}

		// action 이름으로 delete로 잡아줌
		[HttpPost, ActionName("Delete")]
		[ValidateAntiForgeryToken]
		public IActionResult DeleteConfirmed(int? id)
		{
            if (id is null) { return NotFound(); }
            var note = _context.Notes.Find(id);
            if (note == null) { return NotFound(); }
            _context.Notes.Remove(note);
            _context.SaveChanges();

            TempData["success"] = "삭제되었습니다.";

            return RedirectToAction("Index", "Note");
        }

		/// <summary>
		/// 상세보기
		/// </summary>
		/// <param name="id">게시글 번호</param>
		/// <returns></returns>
		[HttpGet]
		public IActionResult Detail(int? id)
		{
			if (id is null)
			{
				return NotFound();
			}
			var note = _context.Notes.Find(id); // SELECT 쿼리
			if (note == null) { return NotFound(); }

			// 조회수 +1
			note.ReadCount++;
			_context.Notes.Update(note); // UPDATE 쿼리
			_context.SaveChanges();

			return View(note);
		}

		
	}
}
