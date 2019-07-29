using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V1 Landtrac Units endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class LandtracUnits
    {

        public string county_parish { get; set; }

        public double? acres { get; set; }

        public string current_operator { get; set; }

        public string unit_name { get; set; }

        public string state_province { get; set; }

        public string @abstract { get; set; }

        public string api_10 { get; set; }

        public string well_status { get; set; }

        public string county_state { get; set; }

        public int? id { get; set; }

        public string instrument { get; set; }

        public string geometry { get; set; }

    }

}
