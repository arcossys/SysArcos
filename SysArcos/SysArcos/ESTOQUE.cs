//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SysArcos
{
    using System;
    using System.Collections.Generic;
    
    public partial class ESTOQUE
    {
        public int ID { get; set; }
        public float QUANTIDADE { get; set; }
        public int ID_ENTIDADE { get; set; }
        public int ID_PRODUTO { get; set; }
        public System.DateTime DATA_HORA_CRIACAO_REGISTRO { get; set; }
    
        public virtual PRODUTO PRODUTO { get; set; }
        public virtual ENTIDADE ENTIDADE { get; set; }
    }
}
