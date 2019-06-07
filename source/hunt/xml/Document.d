module hunt.xml.Document;

import hunt.xml.DocumentType;
import hunt.xml.Element;

import std.stdio;

class Document
{
    static Document parse(string xml)
    {
        foreach(word; xml)
        {
            string line = "";
            if (word == "\n")
            {
                line;
            }
            else
            {
                line ~= word;
            }
        }
        return this;
    }

    bool parsed()
    {
        return this._parsed;
    }

    Document bindingFromObject(T)(T obj)
    {
        return null;
    }

    string toString()
    {
        return null;
    }

    Element getRootElement()
    {
        return this._rootElement;
    }

    Document setRootElement(Element element)
    {
        this._rootElement = element;

        return this;
    }

    Element addElement(string name)
    {
        return new Element(name);
    }

    Document setEncoding(string encoding)
    {
        this._encoding = encoding;
        
        return this;
    }

    string getEncoding()
    {
        return this._encoding;
    }

    private
    {
        Element _rootElement;

        bool _parsed = false;

        string _encoding = "utf-8";
    }
}
