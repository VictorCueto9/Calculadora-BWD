using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2
{
    public partial class Calculadora : System.Web.UI.Page
    {
        double nbitsA, frecmaxA, tcA, ncanal;
        double profV, resolV, framesV, tcV, segsV; DateTime hiniV, hfinV;
        double bwaudio, bwaudioc, bwvideo, bwvideoc, bwtotal;
        double espaudio, espaudioc, espvideo, espvideoc, esptotal, ahorro;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncalcula_Click(object sender, EventArgs e)
        {
            leeAudioData();
            leeVideoData();
            calRes();
        }
        private void calRes()
        {
            //para calcular el BW del audio
            bwaudio = 2 * frecmaxA * nbitsA * ncanal;
            bwaudioc = (1 - tcA) * bwaudio;
            muestraResBW(bwaudioc, tbbwa);

            //para calcular el BW del video
            bwvideo = profV * resolV * framesV;
            bwvideoc = (1 - tcV) * bwvideo;
            muestraResBW(bwvideoc, tbbwv);

            //para calcular el BW total
            bwtotal = bwaudioc + bwvideoc;
            muestraResBW(bwtotal, tbbwt);

            //para calcular el Espacio a Almacenar del audio
            espaudio = 2 * frecmaxA * (nbitsA / 8) * segsV * ncanal;
            espaudioc = (1 - tcA) * espaudio;
            muestraResEsp(espaudioc, tbespa);

            //para calcular el Espacio a Almacenar del video
            espvideo = resolV * (profV / 8) * framesV * segsV;
            espvideoc = (1 - tcV) * espvideo;
            muestraResEsp(espvideoc, tbespv);

            //para calcular el Espacio a Almacenar total
            esptotal = espaudioc + espvideoc;
            muestraResEsp(esptotal, tbespt);

            //para calcular el ahorro
            ahorro = (espaudio + espvideo) - (espaudioc + espvideoc);
            muestraResEsp(ahorro, tbahorro);

        }
        private void muestraResBW(double valor, TextBox textB)
        {
            if (valor < 1000) textB.Text = Math.Round(valor, 4) + " bps";
            else if (valor >= 1000 && valor < 100000) textB.Text = Math.Round(valor / 1000, 4) + " Kbps";
            else if (valor >= 100000) textB.Text = Math.Round(valor / 1000000, 4) + " Mbps";
        }
        private void muestraResEsp(double valor, TextBox textB)
        {
            if (valor < 1000) textB.Text = Math.Round(valor, 4) + " by";
            else if (valor >= 1000 && valor < 100000) textB.Text = Math.Round(valor / 1024, 4) + " Kby";
            else if (valor >= 100000) textB.Text = Math.Round(valor / (1024 * 1024), 4) + " Mby";
        }
        private void leeAudioData()
        {
            if(cbnbits.SelectedIndex != 0)
            {
                switch (cbnbits.SelectedIndex)
                {
                    case 1:
                        nbitsA = Convert.ToDouble(cbnbits.SelectedItem.Text);
                        break;
                    case 2:
                        nbitsA = Convert.ToDouble(cbnbits.SelectedItem.Text);
                        break;
                    case 3:
                        nbitsA = Convert.ToDouble(cbnbits.SelectedItem.Text);
                        break;
                    case 4:
                        nbitsA = Convert.ToDouble(cbnbits.SelectedItem.Text);
                        break;
                    default:
                        break;
                }
            }
            if (cbfrec.SelectedIndex != 0)
            {
                switch (cbfrec.SelectedIndex)
                {
                    case 1:
                        frecmaxA = Convert.ToDouble(cbfrec.SelectedItem.Text.Split(' ')[0]) * 1000;
                        break;
                    case 2:
                        frecmaxA = Convert.ToDouble(cbfrec.SelectedItem.Text.Split(' ')[0]) * 1000;
                        break;
                    case 3:
                        frecmaxA = Convert.ToDouble(cbfrec.SelectedItem.Text.Split(' ')[0]) * 1000;
                        break;
                    case 4:
                        frecmaxA = Convert.ToDouble(cbfrec.SelectedItem.Text.Split(' ')[0]) * 1000;
                        break;
                    default:
                        break;
                }
            }
            tcA = Convert.ToDouble(tbtca.Text) / 100;
            if (cbncanales.SelectedIndex != 0)
            {
                switch (cbncanales.SelectedIndex)
                {
                    case 1:
                        ncanal = Convert.ToDouble(cbncanales.SelectedItem.Text);
                        break;
                    case 2:
                        ncanal = Convert.ToDouble(cbncanales.SelectedItem.Text);
                        break;
                    case 3:
                        ncanal = Convert.ToDouble(cbncanales.SelectedItem.Text);
                        break;
                    default:
                        break;
                }
            }
        }
        private void leeVideoData()
        {
            if (cbprof.SelectedIndex != 0)
            {
                switch (cbprof.SelectedIndex)
                {
                    case 1:
                        profV = Convert.ToDouble(cbprof.SelectedItem.Text);
                        break;
                    case 2:
                        profV = Convert.ToDouble(cbprof.SelectedItem.Text);
                        break;
                    case 3:
                        profV = Convert.ToDouble(cbprof.SelectedItem.Text);
                        break;
                    case 4:
                        profV = Convert.ToDouble(cbprof.SelectedItem.Text);
                        break;
                    case 5:
                        profV = Convert.ToDouble(cbprof.SelectedItem.Text);
                        break;
                    default:
                        break;
                }
            }
            if (cbresol.SelectedIndex != 0)
            {
                switch (cbresol.SelectedIndex)
                {
                    case 1:
                        resolV = 320 * 240;
                        break;
                    case 2:
                        resolV = 640 * 480;
                        break;
                    case 3:
                        resolV = 1024 * 768;
                        break;
                    case 4:
                        resolV = 1920 * 1080;
                        break;
                    case 5:
                        resolV = 3840 * 2160;
                        break;
                    default:
                        break;
                }
            }
            if (cbframes.SelectedIndex != 0)
            {
                switch (cbframes.SelectedIndex)
                {
                    case 1:
                        framesV = Convert.ToDouble(cbframes.SelectedItem.Text);
                        break;
                    case 2:
                        framesV = Convert.ToDouble(cbframes.SelectedItem.Text);
                        break;
                    case 3:
                        framesV = Convert.ToDouble(cbframes.SelectedItem.Text);
                        break;
                    case 4:
                        framesV = Convert.ToDouble(cbframes.SelectedItem.Text);
                        break;
                    default:
                        break;
                }
            }
            tcV = Convert.ToDouble(tbtcv.Text) / 100;
            hiniV = Convert.ToDateTime(tbhini.Text);
            hfinV = Convert.ToDateTime(tbhfin.Text);
            segsV = hfinV.Subtract(hiniV).TotalSeconds;
        }
    }
}