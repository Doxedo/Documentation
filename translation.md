# Document translation inside git

## Introduction

If a document is supposed to be translated inside git, you should use Virtaal to process it. Virtaal is a graphical tool, which is easy to use and powerful at the same time.(http://translate.souceforge.net/wiki/virtaal) LDoc can generate XLIFF files by .xml file, later it is possible to use the Virtaal tool to process the file. Support for UTF-8 characters for non-latin alphabets.

## Procedure

### Add language tags for target languages in.ldocmap.xml file.

For the translating document, when you defined a language tags for target languages in.ldocmap.xml file, after the title, you need to add a tag `title lang`, after the target, add tags `language name`. For example:

	<name>brochure-linkorb-medical</name>
	<title>title</title>
	<title lang="zh-CN">CHANGEME xiexie</title>
	
	 ...

	<target name="pdffull" mode="pdf" template="linkorb" />
	<target name="htmlfull" mode="html-single" template="linkorb" />
	<language name="src" />
        <language name="zh-CN" />
	<language name="nl-NL" />

### Translate

Use Virtaal to process the .xlf files, then work on it.

### Publish the document

Use the command `lt ldocpublish filename.ldocmap.xml` to publish document.

### Commit and push.

After this, you could commit and push the to the gerrit. Please refer to the above information how to push to the gerrit.

1. Input `git gui`, press `enter` key.

2. Single click `.md` file and `.xml` file you want to commit from `unstaged change` to `staged change`.

3. Write the description in the empty text field, click `commit` button.

4. Input `git fetch gerrit`, press `enter` key.

5. Input `git rebase gerrit/master`, press `enter` key.

6. Input `gitk`,press `enter` key. In this way, It is possible to check your commit contents, this is optional.

7. Input `git push gerrit-master`, press `enter` key.

8. Done
