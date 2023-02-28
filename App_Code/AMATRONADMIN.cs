using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class AMATRONADMIN
{
    public int chiaveVenditore;
    public int chiaveCorriere;
    DATABASE D = new DATABASE();

    public AMATRONADMIN()
    {
 
    }

    // Metodo per abilitare i venditori
    public void AbilitaVenditori()
    {
        D.query = "spVENDITORI_Abilita";
        D.cmd.Parameters.AddWithValue("chiave", chiaveVenditore);
        D.EseguiSPNonRead();
    }

    // Metodo per abilitare i corrieri
    public void AbilitaCorrieri()
    {
        D.query = "spCORRIERI_Abilita";
        D.cmd.Parameters.AddWithValue("chiave", chiaveCorriere);
        D.EseguiSPNonRead();
    }
}