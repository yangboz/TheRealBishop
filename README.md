TheRealBishop
=============

Standalone the source code from https://github.com/yangboz/godpaper/tree/master/TheRealBishop

#About:

TheRealBishop project code base translated on TheKnightErrant by ActionScript3 language.

Also based on the great open source project Sparrow framework.

#Design:

##Collections##

Almost all classes implement the Collection interface, which defines the following methods:

<code>contains(obj:*), for checking if an item exists</code>
<code>clear(), for removing all items</code>
<code>getIterator(), for creating an iterator object to step through all items</code>
<code>size, the total number of items and</code>
<code>toArray(), which simply converts the structure into an array.</code>

##Iterators##

Every class that implements the Collection interface is also able to create an iterator object using the getIterator() method. Once you have an iterator, you can walk through the data and read/write the values...


# UML Diagram:

![Screenshot of "UML Diagram"](https://raw.githubusercontent.com/yangboz/TheRealBishop/master/assets/UML_DataStructure.jpeg)

#Notes and tips:

1.All of AS3 featured "protected/private" function translate to "public" at Obj-c level;

2.All of AS3 featured "interface" functions translate to "protocol" at Obj-c level;

3.All of AS3 featured "internal class" must be seperated as stand-alone class files at Obj-c level;

4.All of AS3 single class files must be seperated ".h" && ".m" files at Obj-c level;(except Obj-c protocol)

#TODO list:

1.an objective-c "Vector" template class implementation required;

2.more unit test on "ds" relevant class and protocol class files;

3.double check the objective-c pointer and reference translation;


#Known issues:
1.Obj-c properties at protocol implementation issues;
2.Obj-c dynamic function required;
#Wish list:

#Reference:
http://lab.polygonal.de/?page_id=179

Online UML design: https://app.genmymodel.com/
