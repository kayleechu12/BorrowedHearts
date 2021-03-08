using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BHConsole.Models
{
    public class TimePunch
    {
        public DateTime ClockInTime { get; set; }

        DateTime ClockOutTime { get; set; } //Uneeded?

        public byte Type { get; set; }
    }
}