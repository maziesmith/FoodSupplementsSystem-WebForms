﻿using FoodSupplementsSystem.Data.Models;

namespace FoodSupplementsSystem.Data.Services.Contracts
{
    public interface ILikesServices
    {
        Like GetByAuthorIdAndCommentId(string userId, int commentId);

        void ChangeLike(string userId, int commentId);

        void CreateLike(Like like);
    }
}