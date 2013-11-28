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
        public static void SerialisoiXmlKysymykset(string tiedosto, QuestionLista kysymykset)
        {
            XmlSerializer xs = new XmlSerializer(kysymykset.GetType());
            TextWriter tw = new StreamWriter(tiedosto);
            try
            {
                xs.Serialize(tw, kysymykset);
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
        public static void SerialisoiXmlVastaukset(string tiedosto, AnswerList vastaukset)
        {
            XmlSerializer xs = new XmlSerializer(vastaukset.GetType());
            TextWriter tw = new StreamWriter(tiedosto);
            try
            {
                xs.Serialize(tw, vastaukset);
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

        public static void DeSerialisoiKysymyksetXml(string filePath, ref QuestionLista kysymykset)
        {
            XmlSerializer deserializer = new XmlSerializer(typeof(QuestionLista));
            try
            {
                FileStream xmlFile = new FileStream(filePath, FileMode.Open);
                kysymykset = (QuestionLista)deserializer.Deserialize(xmlFile);
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
        public static void DeSerialisoiVastauksetXml(string filePath, ref AnswerList vastaukset)
        {
            XmlSerializer deserializer = new XmlSerializer(typeof(AnswerList));
            try
            {
                FileStream xmlFile = new FileStream(filePath, FileMode.Open);
                vastaukset = (AnswerList)deserializer.Deserialize(xmlFile);
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