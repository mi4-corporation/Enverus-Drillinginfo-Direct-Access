using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Orders endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Orders
    {
        public string ActiveCommonName { get; set; }

        public string ActiveTickerName { get; set; }

        public int? AppOrderId { get; set; }

        public string CauseNumber { get; set; }

        public DateTime? CreatedDate { get; set; }

        public string DIBasin { get; set; }

        public string DICountryCode { get; set; }

        public string DICountryName { get; set; }

        public string DICountyParishName { get; set; }

        public string DIPlay { get; set; }

        public string DIStateProvinceCode { get; set; }

        public string DIStateProvinceName { get; set; }

        public string DISubPlay { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string Docket { get; set; }

        public string DocumentSubTypeCodes { get; set; }

        public string DocumentSubTypes { get; set; }

        public string DocumentTypeCode { get; set; }

        public bool? MultiunitHorizontal { get; set; }

        public string Notes { get; set; }

        public string OrderNumber { get; set; }

        public DateTime? PrimaryDate { get; set; }

        public string ReportedApplicant { get; set; }

        public DateTime? SignedDate { get; set; }

        public string StateCode { get; set; }

        public DateTime? UpdatedDate { get; set; }
    }

}
