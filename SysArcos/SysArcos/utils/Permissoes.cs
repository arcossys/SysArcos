using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SysArcos.utils
{
    public enum Acoes
    {
        INCLUIR,
        ALTERAR,
        REMOVER,
    }

    public class Permissoes
    {
        public static bool validar(Acoes acao, String login_usuario_logado, String COD_VIEW, ARCOS_Entities conn)
        {
            String ID_GRUPO_PERMISSAO = conn.USUARIO.Where(l => l.LOGIN.Equals(login_usuario_logado)).First().GRUPO_PERMISSAO.ID.ToString();
            SISTEMA_ITEM_ENTIDADE_CADASTRO sie = (SISTEMA_ITEM_ENTIDADE_CADASTRO) 
                conn.SISTEMA_ITEM_ENTIDADE.Where(l => l.SISTEMA_ENTIDADE.COD_VIEW.Equals(COD_VIEW) &&
                                                      l.ID_GRUPO_PERMISSAO.ToString().Equals(ID_GRUPO_PERMISSAO)).First();
            if (acao == Acoes.ALTERAR)
                return sie.alterar;
            else if (acao == Acoes.INCLUIR)
                return sie.incluir;
            else if (acao == Acoes.REMOVER)
                return sie.remover;
            else
                return false;
        }
    }
}