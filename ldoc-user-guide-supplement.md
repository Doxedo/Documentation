# Check LDoc writing

After a LDoc document was created, you need to check the output formats of the LDoc. If every thing is fine, then you need to go to terminal to commit and push it.

## Check output formats

There are two output formats for LDoc so far, `html` and `pdf`, after creating the LDoc, writing the `xml`, you need to write some command lines to check the output formats:

1. Open `VNC`.

2. Go to `Applications`-`Accessories`-`Terminal`

3. Input `cd`, press `space` key, input the directory, press `enter` key.

4. Input `ls`, press `enter` key. Check the LDoc and xml documents you just created.

5. Input `lt ldocpublish xmlname`, press `enter` key. E.g.

    lt ldocpublish git tutorial.xml

6. Done, you could go to the directory path (you could see above)to check the formats, normally it is under `build` folder.

## Commit to the gerrit master

After checking the `pdf` or `html` formats, make sure all look well, you need to commit your LDoc and `xml` to the gerrit. In this way others in the git could fetch your document and share, here are the procedures:

1. Open `VNC`.

2. Go to `Applications`-`Accessories`-`Terminal`

3. Input `cd`, press `space` key, input the directory, press `enter` key.

4. Type `git gui` and press *Enter*

5. Moved the change files from `Unstaged Change` to `Staged Change`

6. Press 'Commit`.

7. Type `git push gerrit-master`. Press *Enter*.
