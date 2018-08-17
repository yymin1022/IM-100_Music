.class public Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;
.super Lcom/pantech/multimedia/query/FeedQuery;
.source "MelonFeedQuery.java"


# static fields
.field private static final DEFAULT_ABSIZE:I = 0x4

.field private static final DEFAULT_ATSIZE:I = 0x2


# instance fields
.field private final SKY_CPID:Ljava/lang/String;

.field private final SKY_CPKEY:Ljava/lang/String;

.field private final SVC_CONTRACT:Ljava/lang/String;

.field private final SVC_MAINTENANCE:Ljava/lang/String;

.field private mThumbSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/query/FeedQuery;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    .line 35
    const-string v0, "PANTECH"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SKY_CPID:Ljava/lang/String;

    .line 36
    const-string v0, "11DOE3"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SKY_CPKEY:Ljava/lang/String;

    .line 38
    const-string v0, "CONTRACT"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SVC_CONTRACT:Ljava/lang/String;

    .line 39
    const-string v0, "MAINTENANCE"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SVC_MAINTENANCE:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setDefaultQuery()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "total"    # I
    .param p5, "startindex"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/pantech/multimedia/query/FeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    .line 35
    const-string v0, "PANTECH"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SKY_CPID:Ljava/lang/String;

    .line 36
    const-string v0, "11DOE3"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SKY_CPKEY:Ljava/lang/String;

    .line 38
    const-string v0, "CONTRACT"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SVC_CONTRACT:Ljava/lang/String;

    .line 39
    const-string v0, "MAINTENANCE"

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->SVC_MAINTENANCE:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setDefaultQuery()V

    .line 33
    return-void
.end method

.method private isChartType(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 268
    const/16 v0, 0x14

    if-eq p1, v0, :cond_10

    .line 269
    const/16 v0, 0x15

    if-eq p1, v0, :cond_10

    .line 270
    const/16 v0, 0x16

    if-eq p1, v0, :cond_10

    .line 271
    const/16 v0, 0x17

    if-ne p1, v0, :cond_12

    .line 272
    :cond_10
    const/4 v0, 0x1

    .line 273
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private setAlbumInfoQuery()V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "albumid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "absize"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method private setAlbumListQuery()V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "rcnt"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "absize"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "artistid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "page"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mStartIdx:I

    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method private setAlbumSongListQuery()V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "albumid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "rcnt"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "page"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mStartIdx:I

    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private setChartQuery()V
    .registers 5

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "total":I
    iget v1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mTotal:I

    if-lez v1, :cond_30

    .line 212
    iget v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mTotal:I

    .line 216
    :goto_7
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "page"

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mStartIdx:I

    div-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "rcnt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "absize"

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void

    .line 214
    :cond_30
    const/16 v0, 0x14

    goto :goto_7
.end method

.method private setDefaultQuery()V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "cpid"

    const-string v2, "PANTECH"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "cpkey"

    const-string v2, "11DOE3"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    .line 45
    return-void
.end method

.method private setFeedDataQuery()V
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "rcnt"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywords:Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 167
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "query"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :goto_1e
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "page"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mStartIdx:I

    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void

    .line 169
    :cond_30
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "query"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method private setLyricsQuery()V
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "songid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "ctype"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private setQueryMap()V
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->getQueryType()I

    move-result v0

    .line 228
    .local v0, "type":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 229
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setFeedDataQuery()V

    .line 253
    :cond_b
    :goto_b
    return-void

    .line 230
    :cond_c
    const/16 v1, 0xb

    if-ne v0, v1, :cond_14

    .line 231
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setLyricsQuery()V

    goto :goto_b

    .line 232
    :cond_14
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    .line 233
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setAlbumInfoQuery()V

    goto :goto_b

    .line 234
    :cond_1c
    const/16 v1, 0xd

    if-eq v0, v1, :cond_b

    .line 236
    const/16 v1, 0xf

    if-ne v0, v1, :cond_28

    .line 237
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setSongInfoQuery()V

    goto :goto_b

    .line 238
    :cond_28
    const/16 v1, 0x10

    if-ne v0, v1, :cond_30

    .line 239
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setAlbumListQuery()V

    goto :goto_b

    .line 240
    :cond_30
    const/16 v1, 0x11

    if-ne v0, v1, :cond_38

    .line 241
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setAlbumSongListQuery()V

    goto :goto_b

    .line 242
    :cond_38
    const/16 v1, 0x12

    if-ne v0, v1, :cond_40

    .line 243
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setRelatedArtistQuery()V

    goto :goto_b

    .line 244
    :cond_40
    const/16 v1, 0x13

    if-ne v0, v1, :cond_48

    .line 245
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setRelatedRecomQuery()V

    goto :goto_b

    .line 246
    :cond_48
    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->isChartType(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 247
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setChartQuery()V

    goto :goto_b

    .line 248
    :cond_52
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    .line 249
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setWebLyricsInfo()V

    goto :goto_b
.end method

.method private setRelatedArtistQuery()V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "artistid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method private setRelatedRecomQuery()V
    .registers 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "albumid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method private setSongInfoQuery()V
    .registers 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "songid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "absize"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method private setWebLyricsInfo()V
    .registers 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "songid"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public addKeywords(Ljava/lang/String;)V
    .registers 3
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method protected addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "first"    # Z
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 326
    if-eqz p4, :cond_3b

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    :goto_1b
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_39} :catch_4f

    move-result-object p1

    .line 342
    :cond_3a
    :goto_3a
    return-object p1

    .line 329
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 334
    :catch_4f
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3a
.end method

.method public getRequestHeaderMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestUrlByType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 129
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 130
    const-string v0, "http://m.melon.com/cds/search/skymusic/search_searchSongList.json"

    .line 160
    :goto_6
    return-object v0

    .line 131
    :cond_7
    const/16 v0, 0xb

    if-ne p1, v0, :cond_e

    .line 132
    const-string v0, "http://m.melon.com/cds/support/skymusic/lyric_detailLyric.json"

    goto :goto_6

    .line 133
    :cond_e
    const/16 v0, 0xc

    if-ne p1, v0, :cond_15

    .line 134
    const-string v0, "http://m.melon.com/cds/album/skymusic/album_detailAlbumInfo.json"

    goto :goto_6

    .line 135
    :cond_15
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1c

    .line 136
    const-string v0, "http://m.melon.com/cds/album/skymusic/detail_detailArtistInfo.json"

    goto :goto_6

    .line 137
    :cond_1c
    const/16 v0, 0xf

    if-ne p1, v0, :cond_23

    .line 138
    const-string v0, "http://m.melon.com/cds/album/skymusic/album_detailSongInfo.json"

    goto :goto_6

    .line 139
    :cond_23
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2a

    .line 140
    const-string v0, "http://m.melon.com/cds/artist/skymusic/artist_detailArtistAlbumList.json"

    goto :goto_6

    .line 141
    :cond_2a
    const/16 v0, 0x11

    if-ne p1, v0, :cond_31

    .line 142
    const-string v0, "http://m.melon.com/cds/album/skymusic/album_detailAlbumSongList.json"

    goto :goto_6

    .line 143
    :cond_31
    const/16 v0, 0x12

    if-ne p1, v0, :cond_38

    .line 144
    const-string v0, "http://m.melon.com/cds/album/skymusic/album_detailAffiliatedArtistInfo.json"

    goto :goto_6

    .line 145
    :cond_38
    const/16 v0, 0x13

    if-ne p1, v0, :cond_3f

    .line 146
    const-string v0, "http://m.melon.com/cds/album/skymusic/album_relatRecmSongList.json"

    goto :goto_6

    .line 147
    :cond_3f
    const/16 v0, 0x14

    if-ne p1, v0, :cond_46

    .line 148
    const-string v0, "http://m.melon.com/cds/chart/skymusic/chartrealtime_realTimeChartList.json"

    goto :goto_6

    .line 149
    :cond_46
    const/16 v0, 0x15

    if-ne p1, v0, :cond_4d

    .line 150
    const-string v0, "http://m.melon.com/cds/chart/skymusic/chartdaliy_todayTop100List.json"

    goto :goto_6

    .line 151
    :cond_4d
    const/16 v0, 0x16

    if-ne p1, v0, :cond_54

    .line 152
    const-string v0, "http://m.melon.com/cds/chart/skymusic/chartweekly_weekTop100List.json"

    goto :goto_6

    .line 153
    :cond_54
    const/16 v0, 0x17

    if-ne p1, v0, :cond_5b

    .line 154
    const-string v0, "http://m.melon.com/cds/chart/skymusic/chartalbum_albumTop20List.json"

    goto :goto_6

    .line 155
    :cond_5b
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_62

    .line 156
    const-string v0, "http://m.melon.com/cds/info/skymusic/info_getSongDtlUrl.json"

    goto :goto_6

    .line 157
    :cond_62
    const/16 v0, 0x19

    if-ne p1, v0, :cond_69

    .line 158
    const-string v0, "http://m.melon.com/cds/info/skymusic/info_getNotice.json"

    goto :goto_6

    .line 160
    :cond_69
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public makeQueryMap()Ljava/util/WeakHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    goto :goto_9
.end method

.method public makeRequestQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->setQueryMap()V

    .line 69
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->makeQueryMap()Ljava/util/WeakHashMap;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 70
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->getQueryType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->getRequestUrlByType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EUC-KR"

    invoke-virtual {p0, v1, v2}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v4, 0x1

    .line 279
    .local v4, "isFirst":Z
    move-object v1, p1

    .line 281
    .local v1, "query":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 283
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 317
    const-string v0, "MMDATAClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "make query string = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-object v1

    .line 284
    :cond_27
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    .local v2, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 286
    .local v9, "value":Ljava/lang/Object;
    const-string v3, ""

    .line 288
    .local v3, "changedVal":Ljava/lang/String;
    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_46

    move-object v3, v9

    .line 289
    check-cast v3, Ljava/lang/String;

    :cond_3c
    :goto_3c
    move-object v0, p0

    move-object v5, p2

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_c

    .line 290
    :cond_46
    instance-of v0, v9, Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    .line 291
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 292
    :cond_4f
    instance-of v0, v9, Ljava/lang/Long;

    if-eqz v0, :cond_58

    .line 293
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 294
    :cond_58
    instance-of v0, v9, Ljava/lang/Boolean;

    if-eqz v0, :cond_61

    .line 295
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 296
    :cond_61
    instance-of v0, v9, Ljava/util/List;

    if-eqz v0, :cond_3c

    .line 297
    const/4 v7, 0x0

    .local v7, "isAdded":Z
    move-object v0, v9

    .line 298
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 300
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_70
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_7c

    .line 310
    if-nez v7, :cond_3c

    goto :goto_c

    :cond_7c
    move-object v0, v9

    .line 301
    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d8

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v9

    .line 303
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_d7

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    const-string v0, "MMDATAClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "make query changedVal = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_d7
    const/4 v7, 0x1

    .line 300
    :cond_d8
    add-int/lit8 v6, v6, 0x1

    goto :goto_70
.end method

.method public requestQuery(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public setCategory(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 3
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywords:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywordsList:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mKeywords:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setQueryType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mQueryType:I

    .line 224
    return-void
.end method

.method public setStartIndex(I)V
    .registers 2
    .param p1, "startindex"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mStartIdx:I

    .line 119
    return-void
.end method

.method public setThumbSize(I)V
    .registers 2
    .param p1, "sizeType"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;->mThumbSize:I

    .line 107
    return-void
.end method
