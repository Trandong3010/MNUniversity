﻿using System;
using System.Collections.Generic;
using System.Text;
using DataAccess.Entity;
using Microsoft.AspNetCore.Identity;

namespace Infrastructure.Models.Users
{
	public class AuthenticateResponse
	{
		public string Id { get; set; }
		public string UserName { get; set; }
		public string Email { get; set; }
		public string Token { get; set; }

		public AuthenticateResponse(IdentityUser user, string token)
		{
			Id = user.Id;
			UserName = user.UserName;
			Email = user.Email;
			Token = token;
		}
	}
}
