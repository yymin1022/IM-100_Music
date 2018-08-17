.class public Lcom/pantech/multimedia/data/vendor/MelonFeedData;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "MelonFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;,
        Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;
    }
.end annotation


# static fields
.field private static final ADULT_FIELD:I = 0xb

.field private static final ALBUMID:Ljava/lang/String; = "ALBUMID"

.field private static final ALBUMIMG:Ljava/lang/String; = "ALBUMIMG"

.field private static final ALBUMNAME:Ljava/lang/String; = "ALBUMNAME"

.field private static final ALBUMREVW:Ljava/lang/String; = "ALBUMREVW"

.field private static final ARTISTID:Ljava/lang/String; = "ARTISTID"

.field private static final ARTISTIMG:Ljava/lang/String; = "ARTISTIMG"

.field private static final ARTISTNAME:Ljava/lang/String; = "ARTISTNAME"

.field private static final CURRANK:Ljava/lang/String; = "CURRANK"

.field public static final KEY_CONTENTS:Ljava/lang/String; = "CONTENTS"

.field public static final KEY_CONTENTSNAME:Ljava/lang/String; = "CONTENTSNAME"

.field public static final KEY_LYRICDATA:Ljava/lang/String; = "LYRICDATA"

.field public static final KEY_MENUID:Ljava/lang/String; = "MENUID"

.field public static final KEY_PAGECNT:Ljava/lang/String; = "PAGECNT"

.field public static final KEY_RESULT:Ljava/lang/String; = "RESULT"

.field public static final KEY_SIZE:Ljava/lang/String; = "SIZE"

.field public static final KEY_STATUS:Ljava/lang/String; = "STATUS"

.field public static final KEY_TOTALCNT:Ljava/lang/String; = "TOTALCNT"

.field private static final LINK_URL_ALBUM:Ljava/lang/String; = "http://m.melon.com/cds/album/mobile/albumdetail_list.htm?albumId="

.field private static final LINK_URL_ARTIST:Ljava/lang/String; = "http://m.melon.com/cds/artist/mobile/artistsong_list.htm?artistId="

.field private static final LINK_URL_SONG:Ljava/lang/String; = "http://m.melon.com/pda/msvc/snsGatePage.jsp?type=son&sId="

.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE"

.field private static final MESSAGECODE:Ljava/lang/String; = "MESSAGECODE"

.field private static final MUINFO:Ljava/lang/String; = "MUINFO"

.field private static final PASTRANK:Ljava/lang/String; = "PASTRANK"

.field private static final PLAYTIME:Ljava/lang/String; = "PLAYTIME"

.field private static final RELARTISTID:Ljava/lang/String; = "RELARTISTID"

.field private static final RELARTISTNAME:Ljava/lang/String; = "RELARTISTNAME"

.field private static final REPARTISTNAME:Ljava/lang/String; = "REPARTISTNAME"

.field private static final SIMARTISTID:Ljava/lang/String; = "SIMARTISTID"

.field private static final SIMARTISTNAME:Ljava/lang/String; = "SIMARTISTNAME"

.field private static final SONGID:Ljava/lang/String; = "CONTENTID"

.field private static final SONGNAME:Ljava/lang/String; = "SONGNAME"

.field private static final TYPE_ALBUM_SEARCH:Ljava/lang/String; = "searchAlbumList"

.field private static final TYPE_ARTIST_INFO:Ljava/lang/String; = "detailArtistInfo"

.field private static final TYPE_ARTIST_SEARCH:Ljava/lang/String; = "searchArtistList"

.field private static final TYPE_SONG_SEARCH:Ljava/lang/String; = "searchSongList"

.field private static final URLPATH:Ljava/lang/String; = "URLPATH"

.field private static final VALUE_ZERO:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTSNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "STATUS"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MENUID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PAGECNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "TOTALCNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LYRICDATA"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RESULT"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTS"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private getResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RESULT"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private parseItemToArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 660
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 661
    :goto_7
    return-object v0

    :cond_8
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public createItem()Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;
    .registers 2

    .prologue
    .line 516
    new-instance v0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;-><init>(Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V

    .line 517
    .local v0, "items":Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;
    return-object v0
.end method

.method public bridge synthetic createItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 588
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 590
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getAlbumImgUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMIMG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMIMG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 602
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMIMG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 604
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getAlbumInfo()Lcom/pantech/multimedia/data/SongDetailFeedItem;
    .registers 4

    .prologue
    .line 667
    new-instance v0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;

    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    invoke-direct {v0, p0, v1}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;-><init>(Lcom/pantech/multimedia/data/vendor/MelonFeedData;Ljava/util/WeakHashMap;)V

    .line 672
    .local v0, "info":Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 675
    .end local v0    # "info":Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;
    :goto_13
    return-object v0

    .restart local v0    # "info":Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public bridge synthetic getAlbumInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getAlbumInfo()Lcom/pantech/multimedia/data/SongDetailFeedItem;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 595
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getAlbumReview()Ljava/lang/String;
    .registers 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMREVW"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMREVW"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 621
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMREVW"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 623
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getArtistID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 556
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "ARTISTID"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "ARTISTID"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 559
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "ARTISTID"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 563
    .local v1, "subNum":I
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 564
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 569
    :cond_30
    :goto_30
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 576
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "subNum":I
    :goto_35
    return-object v0

    .line 565
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v1    # "subNum":I
    :cond_36
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 566
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_30

    .line 576
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "subNum":I
    :cond_45
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public getArtistImgUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTIMG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTIMG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 609
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTIMG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 611
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 581
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getCharSet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 522
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getContentsName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTSNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPage()I
    .registers 4

    .prologue
    .line 527
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PAGECNT"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 529
    :goto_11
    return v1

    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_11
.end method

.method public getFeedItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "CONTENTS"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    .line 469
    :goto_b
    return-object v0

    .line 467
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/multimedia/data/FeedItem;>;"
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "CONTENTS"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTS"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsPerPage()I
    .registers 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SIZE"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 476
    :goto_11
    return v1

    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_11
.end method

.method public getLyrics()Ljava/lang/String;
    .registers 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LYRICDATA"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedArtistID()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RELARTISTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RELARTISTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 633
    :cond_14
    const/4 v0, 0x0

    .line 635
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RELARTISTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->parseItemToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getRelatedArtistName()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RELARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RELARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 640
    :cond_14
    const/4 v0, 0x0

    .line 642
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RELARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->parseItemToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getResCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getStatus()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getResult()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getSimilarArtistID()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIMARTISTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIMARTISTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 647
    :cond_14
    const/4 v0, 0x0

    .line 649
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIMARTISTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->parseItemToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getSimilarArtistName()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIMARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIMARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 654
    :cond_14
    const/4 v0, 0x0

    .line 656
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIMARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->parseItemToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getSongID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 543
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getSongName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 550
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getStartIdx()I
    .registers 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getItemsPerPage()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "STATUS"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .registers 4

    .prologue
    .line 486
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "TOTALCNT"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 488
    :goto_11
    return v1

    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getItemsPerPage()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_11
.end method

.method public getTotalCnt()Ljava/lang/String;
    .registers 4

    .prologue
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "TOTALCNT"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "0"

    .line 494
    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "TOTALCNT"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1d
.end method

.method public setItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTS"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 510
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTS"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTS"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public setItemsList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTS"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    return-void
.end method
