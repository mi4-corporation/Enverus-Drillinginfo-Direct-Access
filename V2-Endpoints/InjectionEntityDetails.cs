using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Injection Entity Details endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class InjectionEntityDetails
    {
        public string ApiNo { get; set; }

        public double? AverageDailyGas { get; set; }

        public double? AverageDailyOther { get; set; }

        public double? AverageDailyWater { get; set; }

        public double? CasingPressure { get; set; }

        public DateTime? CreatedDate { get; set; }

        public double? CumGas { get; set; }

        public double? CumOther { get; set; }

        public double? CumWater { get; set; }

        public double? Days { get; set; }

        public DateTime? DeletedDate { get; set; }

        public int? EntityId { get; set; }

        public string InjectedGasType { get; set; }

        public double? InjectedGasVolume { get; set; }

        public string InjectedOtherType { get; set; }

        public string InjectedOtherUnit { get; set; }

        public double? InjectedOtherVolume { get; set; }

        public string InjectedProductTypes { get; set; }

        public string InjectedWaterType { get; set; }

        public double? InjectedWaterVolume { get; set; }

        public DateTime? InjectionDate { get; set; }

        public double? InjectionMonthNo { get; set; }

        public double? InjectionPressure { get; set; }

        public DateTime? UpdatedDate { get; set; }
    }

}
