namespace RealEstate_Dapper_UI.Dtos.ProductDtos
{
    public class UpdateProductDto
    {
        public int productID { get; set; }
        public string title { get; set; }
        public decimal price { get; set; }
        public string city { get; set; }
        public string district { get; set; }
        public string categoryName { get; set; }
        public string coverimage { get; set; }
        public string type { get; set; }
        public string address { get; set; }


        public string Description { get; set; }
        public string Type { get; set; }
        public bool DealOfTheDay { get; set; }
        public DateTime AdvertisementDate { get; set; }
        public bool ProductStatus { get; set; }
        public int ProductCategory { get; set; }
    }
}
