using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

namespace BoardWebApp.Models
{
    //[Bind("id,UserName,Email,Password,ConfirmPassword")]
    public class RegisterModel
    {

        [Key]
        public int Id { get; set; }

		[Required(AllowEmptyStrings = false, ErrorMessage = "유저아이디를 입력하세요.")]
        [Display(Name = "유저아이디")]
        public string UserName { get; set; }

		[Required(AllowEmptyStrings = false, ErrorMessage = "이메일을 입력하세요.")]
        [EmailAddress(ErrorMessage = "이메일을 입력하세요.")]
        [Display(Name = "이메일")]
        public string Email { get; set; }

		[Required(AllowEmptyStrings = false, ErrorMessage = "패스워드를 입력하세요.")]
		[DataType(DataType.Password)]
        [Display(Name = "패스워드")]
        public string Password { get; set; }

		[Required(AllowEmptyStrings = false, ErrorMessage = "패스워드 확인을 확인하세요.")]
		[DataType(DataType.Password)]
        [Display(Name = "패스워드 확인")]
        [Compare("Password", ErrorMessage = "패스워드가 일치하지 않습니다.")]
        public string ConfirmPassword { get; set; }

		
		[Display(Name = "핸드폰번호")]
        public string? PhoneNumber { get; set; }
    }
}