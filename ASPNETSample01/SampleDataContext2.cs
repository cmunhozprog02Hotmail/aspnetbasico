using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNETSample01
{
    public partial class SampleDataContext
    {
        public void Update(Pessoa p)
        {
            this.UpdatePessoa(p);
        }
    }
}