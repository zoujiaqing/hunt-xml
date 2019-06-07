
import std.stdio;

import hunt.xml.Document;

void main()
{

    auto xml = "<?xml version='1.0'?>\n" ~
               "<foo attr='42'>\n" ~
               "    <bar/>\n" ~
               "    <!-- no comment -->\n" ~
               "    <baz hello='world'>\n" ~
               "    nothing to say.\n" ~
               "    nothing at all...\n" ~
               "    </baz>\n" ~
               "</foo>";

	Document doc = Document.parse(xml);

	writeln(doc);
}
