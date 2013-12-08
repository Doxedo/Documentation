# LDoc tutorial

In the following sections we will provide a simple tutorial for getting started authoring and publishing your first LDoc content.

## Create 2 topic files

Create a new folder for your project, for example:

	mkdir ~/myldoc/
	cd ~/myldoc/
	
Now create a textfile called `hello-ldoc.en.md` and add the following content:

	# Hello world!
	
	This is my first `ldoc` project.
	
Create a second file called `my-subtopic.en.md` with the following content:

	# Sub topic
	
	This is a sub-topic in my first `ldoc` project.
	
You have created your first two topics.

## Create a map file

For your content topics to be used, you will now create a map file 
called `mybook.ldocmap.xml` with the following content:

	<?xml version="1.0" encoding="UTF-8"?>
	<ldocmap>

		<title>My first LDoc project</title>
		<subtitle>LDoc is awesome</subtitle>
		<copyright>Example corp. 2000-2011</copyright>
		<author>Joe Johnson</author>
		<version>0.1</version>
		
		<topic href="hello-ldoc">
			<topic href="my-subtopic" />
		</topic>
		
		<target name="pdffull" mode="pdf" template="default" />
		<target name="htmlfull" mode="html-single" template="default" />
	</ldocmap>
	
The first line declares a standard xml catalog:

	<?xml version="1.0" encoding="UTF-8"?>
	
Right below that you will see the root element:

	<ldocmap>
	
Which will later be closed using the final element:

	</ldocmap>
	
	
Below the root element you will declare metadata about this document:

	<title>My first LDoc project</title>
	<subtitle>LDoc is awesome</subtitle>
	<copyright>Example corp. 2000-2011</copyright>
	<author>Joe Johnson</author>
	<version>0.1</version>
	
For further information about the available document metadata elements, please refer to the appropriate section.

After the metadata, you will find the topic hierarchy:

		<topic href="hello-ldoc">
			<topic href="my-subtopic" />
		</topic>
	
Using standard xml elements you can see how the first topic `hello-ldoc` is included.
The first element has a sub element which includes `my-subtopic`.

Using standard xml element hierarchy you can construct any possible document structure.

At the end of the file the targets are defined:

		<target name="pdffull" mode="pdf" template="default" />
		<target name="htmlfull" mode="html-single" template="default" />
		
The first target has a name `pdffull` and uses processingmode `pdf` (generates a single pdf file).
The template used for layout and style is `default`.
Bellow the first target a second target is defined in the same way using processingmode `html-single` (generates a single html file).

## Document complete

After you have authored topics and one or more map files, your first content is complete. 
Now let's generate the output targets.

## Publishing output targets

Using the command-line, enter the directory of your project (containing 2 topics and a map).

Execute the following command to publish your two output targets in one run:

	lt ldocpublish mybook.ldocmap.xml
	
This line executes `lt` (LinkORB Tool) with subcommand `ldocpublish`. 

If `ldocpublish` not found. Execute the following methods:

1. Setup `ldoc` variables.

2. Fix the related configuration of `ldoc` plugin.

3. Config in LinkORB_LDocTopic.php (`~/git/linkorb.git/linkorb/plugins/ldoc/class`)

4. Fix three variables: 

*buildroot

*tplpath

*wkhtmltopdf

After that the map filename is provided for which you would like to publish all targets.

1. Enter terminal (`Applications/accessories/terminal`)

2. Type `cd`, write file name `/linkorb/content/~`, and press *Enter*. 

3. Input `ls` to check all the files.

    `lt ldoc ~.~.xml`

4. Congratulations, you have published your first LDoc project!

You can check the results by opening `build/document.pdf` using the following command:

	`acroread build/document.pdf`

Or found in `/linkorbdoc/build/pdffull`



