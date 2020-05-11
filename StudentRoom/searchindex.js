// search index for WYSIWYG Web Builder
var database_length = 0;

function SearchPage(url, title, keywords, description)
{
   this.url = url;
   this.title = title;
   this.keywords = keywords;
   this.description = description;
   return this;
}

function SearchDatabase()
{
   database_length = 0;
   this[database_length++] = new SearchPage("index.aspx", "Student Room", "Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0  Γενικά   ", "");
   this[database_length++] = new SearchPage("master.aspx", "Untitled Page", " ", "");
   this[database_length++] = new SearchPage("master_loggedin.aspx", "Untitled Page", " ", "");
   this[database_length++] = new SearchPage("topics/ioannina/ioannina.aspx", "Πανεπιστήμιο Ιωαννίνων", "Πανεπιστήμιο Ιωαννίνων  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/ioannina/ioanninanotes.aspx", "Πανεπιστήμιο Ιωαννίνων", "Πανεπιστήμιο Ιωαννίνων  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/ioannina/posts/post.aspx", "Untitled Page", "Πανεπιστήμιο Ιωαννίνων  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια  0  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια   ", "");
   this[database_length++] = new SearchPage("topics/macedonia/macedonia.aspx", "Πανεπιστήμιο Μακεδονίας", "Πανεπιστήμιο Μακεδονίας  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/macedonia/macedonianotes.aspx", "Πανεπιστήμιο Μακεδονίας", "Πανεπιστήμιο Μακεδονίας  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/macedonia/posts/post.aspx", "Untitled Page", "Πανεπιστήμιο Μακεδονίας  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια   ", "");
   this[database_length++] = new SearchPage("topics/thessaly/thessaly.aspx", "Πανεπιστήμιο Θεσσαλίας", "Πανεπιστήμιο Θεσσαλίας  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/thessaly/thessalynotes.aspx", "Πανεπιστήμιο Θεσσαλίας", "Πανεπιστήμιο Θεσσαλίας  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/thessaly/posts/post.aspx", "posts", "Πανεπιστήμιο Θεσσαλίας  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια   ", "");
   this[database_length++] = new SearchPage("topics/patras/patras.aspx", "Πανεπιστήμιο Πατρών", "Πανεπιστήμιο Πατρών  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/patras/patrasnotes.aspx", "Πανεπιστήμιο Πατρών", "Πανεπιστήμιο Πατρών  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("topics/patras/posts/post.aspx", "Untitled Page", "Πανεπιστήμιο Πατρών  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια   ", "");
   this[database_length++] = new SearchPage("topics/general/posts/post.aspx", "Untitled Page", "Τιτλος  Περιγραφη  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια  0  Απαντηση  Απο τον ονομαχρηστη, ημερομηνια   ", "");
   this[database_length++] = new SearchPage("user/username/profile.html", "profile", "Ονομα Χρηστη  Συζητήσεις  Σημειωσεις  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0  Ακόλουθοι  Ακόλουθοι  Περιγραφή   ", "");
   this[database_length++] = new SearchPage("user/username/notes.html", "notes", "Ονομα Χρηστη  Περιγραφή  Συζητήσεις  Σημειωσεις  Ακόλουθοι  Ακόλουθοι  Τιτλος  Περιγραφη κειμενο  Απο τον ονομαχρηστη, ημερομηνια  0   ", "");
   this[database_length++] = new SearchPage("user/username/followers.html", "followers", "Ονομα Χρηστη  Περιγραφή  Συζητήσεις  Σημειωσεις  Ακόλουθοι  Ακόλουθοι  Ονομαχρηστη    ", "");
   this[database_length++] = new SearchPage("user/username/following.html", "following", "Ονομα Χρηστη  Περιγραφή  Συζητήσεις  Σημειωσεις  Ακόλουθοι  Ακόλουθοι  Ονομαχρηστη    ", "");
   this[database_length++] = new SearchPage("message.html.html", "Untitled Page", " ", "");
   this[database_length++] = new SearchPage("submit.html.html", "Untitled Page", " ", "");
   this[database_length++] = new SearchPage("register.html.html", "Untitled Page", " ", "");
   this[database_length++] = new SearchPage("sign-in.html.html", "Untitled Page", " ", "");
   return this;
}
