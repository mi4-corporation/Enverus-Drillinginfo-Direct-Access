using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V1 Legal Leases endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class LegalLeases
    {

        public string township_direction { get; set; }

        public DateTime? expiration_date { get; set; }

        public int? id { get; set; }

        public string county_parish { get; set; }

        public double? acres { get; set; }

        public string grantee_alias { get; set; }

        public double? latitude { get; set; }

        public double? bonus { get; set; }

        public DateTime? instrument_date { get; set; }

        public string grantee_address { get; set; }

        public string state_province { get; set; }

        public string block_section { get; set; }

        public string instrument_type { get; set; }

        public DateTime? effective_date { get; set; }

        public double? maximum_depth { get; set; }

        public string township { get; set; }

        public string section { get; set; }

        public double? longitude { get; set; }

        public string county_state { get; set; }

        public string volume_page { get; set; }

        public string grantee_name { get; set; }

        public string range_direction { get; set; }

        public string range { get; set; }

        public string record_number { get; set; }

        public double? extension_term_months { get; set; }

        public double? blm_lease { get; set; }

        public string grantor_address { get; set; }

        public double? term_months { get; set; }

        public double? extension_bonus { get; set; }

        public double? royalty { get; set; }

        public DateTime? record_date { get; set; }

        public double? minimum_depth { get; set; }

        public string grantor_name { get; set; }

        public string geometry { get; set; }

        public double? state_lease { get; set; }

        public string abstract_number { get; set; }

        public double? extension { get; set; }

    }

}
