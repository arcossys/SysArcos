using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace ProjetoArcos
{
    public class GerConnetion
    {
        public static void create(HttpContext contexto)
        {
            ARCOS_Entities entities = new ARCOS_Entities();
            contexto.Session["_conexao"] = entities;
        }


        public static ARCOS_Entities get(HttpContext contexto)
        {
            return (ARCOS_Entities)contexto.Session["_conexao"];
        }

        public static void kill(HttpContext contexto)
        {
            contexto.Session["_conexao"] = null;
        }
    }
}