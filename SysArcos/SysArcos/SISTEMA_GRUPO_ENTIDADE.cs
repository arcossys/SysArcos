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
    
    public partial class SISTEMA_GRUPO_ENTIDADE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SISTEMA_GRUPO_ENTIDADE()
        {
            this.SISTEMA_ENTIDADE = new HashSet<SISTEMA_ENTIDADE>();
        }
    
        public int ID { get; set; }
        public string DESCRICAO { get; set; }
        public int ORDEM { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SISTEMA_ENTIDADE> SISTEMA_ENTIDADE { get; set; }
    }
}
