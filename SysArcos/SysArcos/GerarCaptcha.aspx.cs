using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos
{
    public partial class GerarCaptcha : System.Web.UI.Page
    {
        private Color[] colorsFundo =
                    new Color[5] { Color.Red, Color.Blue,
                           Color.Green, Color.Gray, Color.Pink };

        private Brush[] colorTexto =
            new Brush[2] { Brushes.Black, Brushes.White };

        private String[] fonts =
            new String[3] { "Chiller", "Comic Sans MS", "Gabriola" };

        protected void Page_Load(object sender, EventArgs e)
        {
            Random random = new Random();

            try
            {
                Response.Clear();
                int height = 100;
                int width = 250;
                Bitmap objBmp = new Bitmap(width, height);
                RectangleF rectf = new RectangleF(10, 5, 0, 0);
                Graphics objGraphics = Graphics.FromImage(objBmp);
                objGraphics.Clear(colorsFundo[random.Next(0, colorsFundo.Length)]);
                objGraphics.SmoothingMode = SmoothingMode.AntiAlias;
                objGraphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                objGraphics.PixelOffsetMode = PixelOffsetMode.HighQuality;
                objGraphics.DrawString(Session["codigoCaptcha"].ToString(), new Font(fonts[random.Next(0, fonts.Length)], 38,
    FontStyle.Italic), colorTexto[random.Next(0, colorTexto.Length)], rectf);
                objGraphics.DrawRectangle(new Pen(colorsFundo[random.Next(0, colorsFundo.Length)]), 1, 1, width - 2, height - 2);
                objGraphics.Flush();
                Response.ContentType = "image/jpeg";
                objBmp.Save(Response.OutputStream, ImageFormat.Jpeg);
                objGraphics.Dispose();
                objBmp.Dispose();
            }
            catch
            {
                throw;
            }
        }
    }
}