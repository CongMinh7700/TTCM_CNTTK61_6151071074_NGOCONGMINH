using System.Collections.Generic;

namespace Tesst1.Models
{
    public partial class DetailsModel
    {
        public IEnumerable<Comment> CommentView { get; set; }
        public IEnumerable<Products> ProductsView { get; set; }
        public double AverageRating { get; set; }

    }
}