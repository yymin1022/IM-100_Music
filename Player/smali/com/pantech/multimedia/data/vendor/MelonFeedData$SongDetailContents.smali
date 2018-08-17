.class public Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "MelonFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/SongDetailFeedItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/MelonFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SongDetailContents"
.end annotation


# static fields
.field private static final KEY_ALBUMID:Ljava/lang/String; = "ALBUMID"

.field private static final KEY_ALBUMIMG:Ljava/lang/String; = "ALBUMIMG"

.field private static final KEY_ALBUMNAME:Ljava/lang/String; = "ALBUMNAME"

.field private static final KEY_ARTISTID:Ljava/lang/String; = "ARTISTID"

.field private static final KEY_ARTISTNAME:Ljava/lang/String; = "ARTISTNAME"

.field private static final KEY_BITRATENAME:Ljava/lang/String; = "BITRATENAME"

.field private static final KEY_DISKNO:Ljava/lang/String; = "DISKNO"

.field private static final KEY_ISSUEDATE:Ljava/lang/String; = "ISSUEDATE"

.field private static final KEY_MLBMUSICCODE:Ljava/lang/String; = "MLBMUSICCODE"

.field private static final KEY_ORDERISSUEDATE:Ljava/lang/String; = "ORDERISSUEDATE"

.field private static final KEY_PLAYTIME:Ljava/lang/String; = "PLAYTIME"

.field private static final KEY_SONGID:Ljava/lang/String; = "SONGID"

.field private static final KEY_SONGNAME:Ljava/lang/String; = "SONGNAME"

.field private static final KEY_TRACKNO:Ljava/lang/String; = "TRACKNO"


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/MelonFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 105
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->this$0:Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    .line 88
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMIMG"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PLAYTIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ISSUEDATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "BITRATENAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ORDERISSUEDATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MLBMUSICCODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "TRACKNO"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "DISKNO"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MUINFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/MelonFeedData;Ljava/util/WeakHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "map":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;-><init>(Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V

    .line 108
    invoke-direct {p0, p2}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->setData(Ljava/util/WeakHashMap;)V

    .line 109
    return-void
.end method

.method private setData(Ljava/util/WeakHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "map":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGID"

    const-string v2, "SONGID"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGNAME"

    const-string v2, "SONGNAME"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTID"

    const-string v2, "ARTISTID"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    const-string v2, "ARTISTNAME"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMID"

    const-string v2, "ALBUMID"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    const-string v2, "ALBUMNAME"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMIMG"

    const-string v2, "ALBUMIMG"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PLAYTIME"

    const-string v2, "PLAYTIME"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ISSUEDATE"

    const-string v2, "ISSUEDATE"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "BITRATENAME"

    const-string v2, "BITRATENAME"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ORDERISSUEDATE"

    const-string v2, "ORDERISSUEDATE"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MLBMUSICCODE"

    const-string v2, "MLBMUSICCODE"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "TRACKNO"

    const-string v2, "TRACKNO"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "DISKNO"

    const-string v2, "DISKNO"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MUINFO"

    const-string v2, "MUINFO"

    invoke-virtual {p1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ALBUMID"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 177
    .end local v0    # "str":Ljava/lang/String;
    :goto_10
    return-object v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 188
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "ARTISTID"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 191
    const/4 v2, 0x0

    .line 204
    :goto_11
    return-object v2

    .line 193
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 195
    .local v1, "subNum":I
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 196
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 201
    :cond_24
    :goto_24
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 204
    goto :goto_11

    .line 197
    :cond_2b
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 198
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_24
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPlayUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    const/4 v0, 0x0

    .line 248
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.melon.com/pda/msvc/snsGatePage.jsp?type=son&sId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getDiskNo()I
    .registers 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "DISKNO"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 237
    :goto_18
    return v1

    :cond_19
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public getDuration()Ljava/lang/String;
    .registers 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PLAYTIME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 139
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PLAYTIME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    :goto_1a
    return-object v1

    :cond_1b
    const-string v1, "0"

    goto :goto_1a
.end method

.method public getIssueDate()Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ISSUEDATE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONGID"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 166
    .end local v0    # "str":Ljava/lang/String;
    :goto_10
    return-object v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getThumbUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ALBUMIMG"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 149
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ALBUMIMG"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    :goto_1a
    return-object v1

    .line 150
    :cond_1b
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 151
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->makeThumbUrlByAlbumID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 153
    :cond_2e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNo()I
    .registers 4

    .prologue
    .line 221
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "TRACKNO"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 226
    :goto_18
    return v1

    :cond_19
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public isAdultContents()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v3, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$SongDetailContents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v4, "MUINFO"

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 258
    :cond_11
    :goto_11
    return v2

    .line 257
    :cond_12
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 258
    .local v0, "ct":C
    const/16 v3, 0x31

    if-ne v0, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_11
.end method
