using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;

namespace FalckNutecBachelor
{
    public class SendMail
    {
        WebMail.Send(to: customerEmail,
            subject: "Help request from - " + customerName,
            body: customerRequest
    }
}