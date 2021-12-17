# Attributes

All segments are labelled with additional attributes according to the following rules; some of these attributes must be labelled manually.

1. Every segment has a length (`length`).
2. Some segments are coded *manually* with (a combination of) additional tags, only if the segment:
    a) is addressed to youth or children (`youth`);
    b) refers to an item on a list with biblical texts, with psalms or hymns, or with liturgical scripts (`reference`);
    c) contains sensitive material as defined in GDPR (`sensitive`).

## References: `ref:`
Various genres contain meaningful references, such as `sp-r` and `mu-s`.

Use this tag only for segments that contain the actual hymn (music) or the actual reading (speech). Do NOT use this tag for segments that invite to sing or that announce a reading.

Appendix A contains various lists to ascertain consistency in annotation.

It may happen that, especially in the case of hymnbooks or liturgical scripts, a particular hymnbook or script is not included in the list. If this is the case: *create a new tag, and add the tag to a list to be discussed*.

Apply to the following liturgical genres:

### Bible readings (`sp-r`)
Bible readings refer to biblical books, chapters and verses in the Bible. Readings are taken from a particular translation. Lists of abbreviations of biblical books and translations can be found in Appendix A.

*Rule* Biblical books are abbrevated according to the list in the appendix. References are constructed by 

(a) between two to four *lowercase* letters of the English name of the book, 
(b) followed by a `.` (dot), 
(c) followed by the number of the chapter, 
(d) another `.` (dot) and 
(e) the starting verse of the reading. The range of verses is NOT annotated.

*Example* An annotated reading in the Dutch translation *NBV* from the first book of the Corinthians, chapter 1, from vers 1 to 14 has the following three labels:

1. `sp-r` to indicate the liturgical genre;
2. `ref:1cor.1.1` for the reference, with dots (`.`) between name of the book, chapter and starting-verse.
3. `ref:nbv`, the translation of the bible according to *NBV*.

**Decision 21-07-15**: no annotation of references to the biblical text; hence, for the moment we skip label 2 (`ref:1cor.1.1`) and continue with `sp-r` and `ref:nbv` (label 1 and 3).

### Liturgical scripts (`sp-l` and and `mu-l`)
Liturgical scripts (in `sp-l` or `mu-l`) are 'fixed' texts, like prayers, creeds, blessings etc.

*Rule* There are different texts of creeds, blessings, liturgical forms etc. These scripts are annotated at the lowest level of detail. At this level no distinction is made between versions of the creed (Apostolic, Nicene etc.). A list with liturgical scripts is found in Appendix A.

*Examples* An annotated segment with a sung creed gets the following two labels:

1. `mu-l` to indicate the liturgical genre, namely a sung liturgical script;
2. `ref:creed` to specify the sung confession of faith.

A liturgical blessing at the end of the service is annoted as: `sp-l` and `ref:blessing`.

### Congregational singing (`mu-s`)
Congregational singing is usually taken from a particular selection of Psalms and Hymns (hymnbook). In many cases, especially when the lyrics are projected at a screen, churches use different hymnbooks. Hymns and Psalms are numbered, depending upon the book they are taken from.

*Rule* Each segment with congregational singing has references to the hymnbook and to the number of the book. Appendix A contains a list with hymnbooks and ranges (e.g. 1:1016 in the case of Liedboek 2013). If a song is announced as 'Psalm', put a `p` before the number: `ref:p131`.

*Examples*

* The singing of Psalm 131 in the version of 1773 is annotated with three labels: `mu-s`, `ref:p131` and `ref:1773`.
* Hymn 131 in the version of the 'hymnbook of the churches' is annotated as: `mu-s`, `ref:131`, `ref:lvdk`, while
* Psalm 131 in the version of this hymnbook is annotated as: `mu-s`, `ref:p131` and `ref:lvdk`.

Disclaimer: When meta-data is collected, annotation can be simplified. This is *currently* not the case. Often churches only use one hymnbook. In those cases it would be sufficient to add the name of the hymnbook to the meta-data of the file and the numbers in the references follow the meta-data. Hence annotation proceeds as follows: only include name of the hymnbook in the annotation if the hymnbook is NOT included in the meta-data of the file.

## Special tags

### `youth`
Use this attribute in combination with a genre if children and youth in the audience are addressed explicitly and intentionally. Hence, when a reading, prayer, sermon or song is specifically announced as 'for children'.

For instance, a sermon for children combines tags `sp-s` and `youth`; likewise a children's song combines tags `mu-s` and `youth`.

Like `ref` use `youth` for the actual song or sermon, not for the preceding announcement.

### `sensitive`
Use this label if the segment contains sensitive personal data as defined by  GDPR, the European regulations for data protection.[^gdpr] Segments in the corpus are coded `sensitive` when they contain references to natural persons or personal information of individuals or groups.

*Note*: Apply the tag not for a each single individual instance (too time-consuming), but create larger segments that contain a series of references to identifiable natural persons.

[^gdpr]: See further  [OpenAIRE](https://www.openaire.eu/sensitive-data-guide).

In the data this most likely occurs in segments tagged with genre `sp-l` or `sp-p` and concerns for instance names of members of the congregation and information regarding their health or personal situation.

Segments tagged as `sensitive` can be hidden in the corpus or left out in the analysis.
