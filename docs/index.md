# Introduction
The specification *relMUSS* aims to annotate religious music, silence and speech in church liturgy and preaching for machine learning purposes.

# The relMUSS specification
The annotation for religious language in Christian worship and preaching is based upon three different types of segments:

* music (`mu`),
* silence (`.`) and
* speech (`sp`).

These segments concern various *genres*, such as prayers, hymns, sermons etc.

Further, these segments (or some of them) have additional *attributes*: every segment has a certain length; prayers may contain sensitive data (personal information); readings from the Bible contain references to a specific Biblical book and chapter.

The tags are thus ordered in two layers: (1) genre and (2) attributes. Finally, (3) there are labels that apply to an entire 'document' (=MP3 file) in the corpus.

These different classes of tags result in a three-phase process of annotation:

1. each segment of the data is labelled according to its *genre*;
3. for each tag in genre, add one or - if applicable - multiple labels  according to *attribute*;
3. meta-data of the MP3-file (the placeholder of the segments) is labelled according to *file*.

As a general rule, each instance of speech and music is tagged following the specification below. Usually worship services start and end with music. The final speech is called the 'blessing'. Consider the blessing (see `ref:blessing`) to be the final segment that needs annotation.

# Genre
Genre-tags label the differences between *music* (instrumental music or vocal sound, such as singing); *speech* (spoken discourse, male or female voice); *silence* (all parts of the MP3-file that do not contain either speech or music.)

Automated labelling can be done by using speech-music segmentation software, such as *inaSpeechSegmenter*.[^ina] For *relMUSS* these labels are too general, since both music and speech in church services indicate various genres.

[^ina]: https://github.com/ina-foss/inaSpeechSegmenter

All segments are labelled with only *ONE* tag that belongs to the class 'genre'. Thus, the tags of genre should be understood as mutually exclusive.

## Music (`mu`)
Basic decisions: instrumental/singing; live performed yes/no.

*Rule:* In case of congregational singing that is preceded by instrumental music and followed by an instrumental postlude, create three different segments: `mu-i` for the prelude; `mu-s` for the actual singing; `mu-i` for the postlude. Do NOT create segments of single stanzas.

### `mu-i`
Live performed instrumental music, for instance an organ. Use when the segment contains ONLY sound from (an) instrument(s), without human voices.

### `mu-s`
Live performed singing of the following hymnological genre: *psalms*, *hymns* or other types of *songs* meant for congregational singing. Use this tag with a reference to hymnbooks and number of hymns/psalms from the hymnbook. Do not use for sung liturgical scripts such as creeds or prayers.

For a list of hymnbooks with number-ranges, see tag `ref:` and Appendix A.

### `mu-l`
Live performed singing of *liturgical scripts*. Concerns sung liturgical scripts, such as a sung prayer. Do not use this tag for congregational singing of psalms or hymns. Use this tag with a reference to a liturgical script.

For a list with sung liturgical scripts, see tag `reference`.

### `mu-mm`
NOT live performed multimedia fragments, recorded music or video-clips. Use ONLY if the music/sound is not created live. Non-live multimedia music can be both instrumental or vocal.

## Speech (`sp`)

### Sermon: `sp-s`
Addressed to the audience: 'you' refers to the congregation and contains a longer (5 mins. plus) free speech of moral and spiritual guidance by the preacher, addressing the congregation, (usually) based upon and (always) preceded by a reading from the Bible.

Note: the segment `sp-s` usually starts with addressing the congregation with a phrase like: dear congregation, brothers and sisters, people of God etc. If the sermon precedes with an announcement, use `sp-l` (liturgical speech) for the segment containing the announcement.


### Prayer: `sp-p`
Addressed to the transcendent: 'you' refers to the divine.

Note: When there is longer silence within the prayer (longer than 3 seconds), the prayer is split into three segments. The silence is not annotated, the two surrounding segments are both tagged with `sp-p`.


### Bible readings: `sp-r`
Reading of a biblical text. Not a specific addressee. Bible readings often but not exclusively precede a sermon; for instance a reading of a the 10 Commandments.

The reading is usually introduced ('we will read from... chapter... etc.') in a segment that is labelled with `sp-liturgy`. Use `sp-r` annotation only for the actual reading.

Note: The tag `sp-r` is always followed by two reference tags: a reference to the specific translation and a reference to the biblical text that is read. Study the appropriate section of `reference` for the rules for annotation. For lists with translations and abbreviations of the books of the Bible, see tag `reference`.

### Liturgical speech: `sp-l`
Addressed to the audience: 'you' refers to the congregation.

Liturgical speech concerns the flow of the worship service. It also contains longer liturgical scripts, not being a sermon, a prayer or a biblical reading. It includes the announcement of a collection, a eucharistic prayer, a creedal text or a blessing etc.

For lists with references to liturgical speech, such as liturgical scripts, creedal texts, blessings etc., see further `reference`.

<!--
# Welcome to MkDocs

For full documentation visit [mkdocs.org](https://www.mkdocs.org).

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Test
gestart 211216
-->
