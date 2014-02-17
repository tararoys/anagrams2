￼# Anagram Server 1: The Basics Challenge
We're going to write a simple web application that accepts a word via an HTML form and returns a list of anagrams. This will be our first database-backed web application.
##Learning Goals
Become more familiar with how HTML forms work
Understand the difference between the various HTTP methods (GET, POST, etc.). Gain familiarity with the core patterns of MVC on the web.

##Objectives
###Create Models & Migrations

- [X] First, download and decompress the [sinatra application skeleton here](http://cl.ly/2n3D2V0R0L2f) .
Second, we need to store the dictionary of words from which to construct anagrams in the database. We'll do it with a words table.
- [X] That means we'll need a Word model and a create_words migration. Y ou can generate them by running the following from the command line inside the application root directory:
        _Danny and I drilled creating blank words model and migration 5 times each_

```
$ rake generate:model NAME=Word
$ rake generate:migration NAME=create_words
```
These are custom rake tasks. Look in the Rakefile to see how they work, if you're curious.

###Import a Dictionary
OS X comes with its own big-ass dictionary. Try running this from the command line:

```
$ cat /usr/share/dict/words # outputs the contents of the file to STDOUT $ wc -w /usr/share/dict/words # counts the number of words in the file
```

Copy /usr/share/dict/words into your application directory. Edit db/seeds.rb to read the dictionary file in and create one entry in the
words table per word in the file.

We're copying the file into our application directory because in the world where we deploy the application to a server or someone else installs the application on their computer we want each instance to have the same dictionary, not whatever dictionary happens to be on the machine.

###Build The Form
Before we dive into constructing anagrams, let's get the form working. Start the application by running
```
$ shotgun config.ru
```
then visit [http://localhost:9393/chicken](http://localhost:9393/chicken) . Y ou should see something like this:
￼￼￼￼￼￼￼￼￼
￼￼Look at app/controllers/index.rb to see how the URL parameter is passed into your web application. Does this make sense to you? If not, find another student or staff to help you understand — this is the core type of interaction between a user's browser and your web application.
Now edit app/views/index.erb to make it look like you want. Feel free to add your own CSS, remove debugging information, etc. But make sure you understand the flow of data from the browser to the server and back to the browser again.
###Define a Word#anagrams Method Define a method on your Word model like this:
```
class Word < ActiveRecord::Base ...
# Returns an Array of Word objects which represent anagrams of this word
# This can and should make calls to the database
# Try to do it in as few calls as possible, without loading every word into memory. If you can't, that's ok. def anagrams
end
...
end
```
You should re-use some of the logic from [Anagrams 2: Generating Anagrams](http://socrates.devbootcamp.com/challenges/226) . You might think this means "re-use the anagrams_for method we defined there." That's not what we mean; we mean re-use the core logic. It should be written in an object-oriented style and return an Array of Words, not Strings.
###Display Anagrams
Edit app/controllers/index.rb so that then you visit http://localhost:9393/racecar, http://localhost:9393/apples, etc. it displays a nice list of anagrams for the given word as encoded in the URL.
￼￼￼
￼It should still render the same form, so your users can ask for a new set of anagrams. Remember: DRY! Small fragments of view code that are to be re-used between views are called partials.
See [How do I render partials?](http://www.sinatrarb.com/faq.html#partials) in Sinatra's FAQ.
###Upload Your Attempt
Upload to a gist any files that you've changed, or embed the github project repository URL in a gist and submit that if you prefer.
￼￼￼
