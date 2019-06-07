module hunt.xml.Element;

import hunt.xml.ElementType;

class Element
{
    this(string name)
    {
        this._name = name;
    }

    Element addElement(string name)
    {
        return new Element(name);
    }

    Element[] getElements()
    {
        return this._elements;
    }

    Element getParentElement()
    {
        return this._parentElement;
    }

    Element removeAttribute(string key)
    {
        this._attributes.remove(key);
        
        return this;
    }

    Element addAttribute(string key, string value)
    {
        this._attributes[key] = value;

        return this;
    }

    Element setAttribute(string key, string value)
    {
        this._attributes[key] = value;

        return this;
    }

    Element addCDATA(string cdata)
    {
        this._cdata = cdata;

        return this;
    }

    Element addComment(string comment)
    {
        this._comments ~= comment;

        return this;
    }

    Element addText(string text)
    {
        this._text = text;

        return this;
    }

    private
    {
        string _name;
        Element[] _elements;
        Element _parentElement;
        string[string] _attributes;
        string[] _comments;
        string _text;
        string _cdata;
    }
}
