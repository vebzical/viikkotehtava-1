using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for BLSerialisoija
/// </summary>
public class Serialisointi
{
        public static void SerialisoiXml(string tiedosto, AutoLista autot)
        {
            XmlSerializer xs = new XmlSerializer(autot.GetType());
            TextWriter tw = new StreamWriter(tiedosto);
            try
            {
                xs.Serialize(tw, autot);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                tw.Close();
            }
        }

        public static void DeSerialisoiXml(string filePath, ref AutoLista autot)
        {
            XmlSerializer deserializer = new XmlSerializer(typeof(AutoLista));
            try
            {
                FileStream xmlFile = new FileStream(filePath, FileMode.Open);
                autot = (AutoLista)deserializer.Deserialize(xmlFile);
                xmlFile.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }

        }

        public static void deSerialisoiKayttajat(string filePath, ref Users kayttajat) 
        {
            XmlSerializer deserializer = new XmlSerializer(typeof(Users));
            try
            {
                FileStream xmlFile = new FileStream(filePath, FileMode.Open);
                kayttajat = (Users)deserializer.Deserialize(xmlFile);
                xmlFile.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }
}