title	: LDOC Howto
author	: Joost Faassen

# LDoc - The LinkORB Documentation System

## What is LDoc?

LDoc is comprehensive set of tools, standards 
and methods for managing textual information such as:

*	Documentation (both internal and external)
*	Project proposals / descriptions and plans
*	Commercial material such as brochures and product descriptions.
*	Policies and procedures

More information can be found on the website: {{website}}

## Benefits

LDoc provides the following benefits over most other researched system:

*	Comprehensive: 

	The ldoc system provides tools, methods and standards for 
	Authoring, Versioning, Collaboration, Translation, Publishing and Terminology.
	Most other systems and tools provide one or several of these, but no system provides a complete tool-chain.
	
*	Encourages Topic-based writing:

	To quote <http://en.wikipedia.org/wiki/Topic-based_authoring>
	
	> Topic-based authoring is a modular content creation approach (popular in the technical publications
	> and documentation arenas) that supports XML content reuse, content management, and makes the 
	> dynamic assembly of personalized information possible.
	> 
	> A topic is a discrete piece of content that is about a specific subject, has an identifiable purpose, 
	> and can stand alone (does not need to be presented in context for the end-user to make sense of the content). 
	> Topics are also reusable. They can, when constructed properly (without reliance on other content for its meaning), 
	> be reused in any context anywhere needed.

	LDoc promotes this way of writing in order to fullfull the many requirements regarding output formats and reuse.


*	Topic syntax agnostic:

	LDoc can support various formats for topic content authoring. 
	Currently `tikiwiki`, `markdown`, `markdown-extra` and `markdown-linkorb` are supported.
	Support for formats such as `reStructuredText`, `dita`, `docbook`, `docx` and `odt` can be added at a later time.
	
*	Authoring tool agnostic

	LDoc topic can be authored using tools as simple as `notepad` or `gedit`, or as extensive as `eclipse`.
	Topic files are simple text or xml files which do not require a specific editor.
	
*	Highly structured information, while maintaining readability for humans:

	Normaly structured content requires xml markup which is complicated to read/write for humans.
	LDoc builds on `markdown` which was designed especialy for easy reading. 
	LDoc extends it's syntax to allow encoding more information in plain text files.
	
*	Collaboration and Versioning through Git

	As LDoc stores content in a similar way as software source-code,
	it is possible to use development tools such as Git to take care of
	versioning, collaboration, release management, and more.
	
*	Variables and terminology

	LDoc allows you to declare and reuse variable definitions around products, brands and target audiences.
	This allows you to reuse the majority of the authored content for many targets.
	Using variable declaration, LDoc allows central terminology management.
	
*	Conditional content
	
	LDoc can include or exclude full or partial topics, based on it's target variable definitions.
	
*	Generates various output formats

	Currently the following formats are supported:
	
	-	`pdf`
	-	`html-single` single-page document
	-	`html-chunked` multi-page document
	
	Support for output targets like `epub`, `chm`, `ppt` are possible to add at a later time.
	
	Additionally, the content can be used to generate context sensative help.
	
*	Topic attributes/metadata

	LDoc allows authors to *decorate* their topics for 
	further enrichment of the topic metadata with custom attributes
	like `author`, `seealso`, `uicontext`, etc. 
	
*	Translation through XLIFF

	LDoc can extract XLIFF files from topic and map files which can be processed 
	using standard translation tool-chains such as *virtaal*, *pootle*, *trados*, and many more.
	Support for UTF-8 characters for non-latin alphabets.

### Some code:

	<title>My first LDoc project</title>
	<subtitle>LDoc is awesome</subtitle>
	<copyright>Example corp. 2000-2011</copyright>
	<author>Joe Johnson</author>
	<version>0.1</version>
