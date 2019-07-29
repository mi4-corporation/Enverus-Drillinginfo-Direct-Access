using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Trajectory Stations endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class TrajectoryStations
    {

        public int TrajectoryStationID { get; set; }

        public int? TrajectoryID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

        public string PointType { get; set; }

        public string Datum { get; set; }

        public decimal? MD { get; set; }

        public decimal? Azimuth { get; set; }

        public decimal? Inclination { get; set; }

        public decimal? TVD { get; set; }

        public decimal? XOffset { get; set; }

        public decimal? YOffset { get; set; }

        public decimal? VerticalSection { get; set; }

        public decimal? Latitude { get; set; }

        public decimal? Longitude { get; set; }

        public decimal? DoglegSeverity { get; set; }

    }

}
