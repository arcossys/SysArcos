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
    
    public partial class RECURSO
    {
        public int ID { get; set; }
        public string NOME { get; set; }
        public string DESCRICAO { get; set; }
        public int ID_TIPO { get; set; }
        public int ID_ENTIDADE { get; set; }
        public bool ATIVO { get; set; }
        public System.DateTime DATA_HORA_CRIACAO_REGISTRO { get; set; }
    
        public virtual ENTIDADE ENTIDADE { get; set; }
        public virtual TIPO_RECURSO TIPO_RECURSO { get; set; }
    }
}