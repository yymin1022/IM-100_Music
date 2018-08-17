.class public Lcom/pantech/app/music/list/MusicItemInfo;
.super Ljava/lang/Object;
.source "MusicItemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/MusicItemInfo$2;,
        Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_TITLE_LEN:I = 0xc8

.field public static final PLAY_LOAD_IN_SERVICE:I = 0x4

.field public static final PLAY_LOCAL:I = 0x0

.field public static final PLAY_NONE:I = -0x1

.field public static final PLAY_NOWPLAYING:I = 0x1

.field public static final PLAY_UPLUS_BOX:I = 0x3

.field static final TAG:Ljava/lang/String; = "VMusicMusicItemInfo"


# instance fields
.field public lAudioID:J

.field public lRating:J

.field public nAlbumID:I

.field public nCntType:I

.field public nDateModified:I

.field public nDuration:I

.field public nSize:I

.field public nSkipCount:I

.field public szAlbum:Ljava/lang/String;

.field public szAlbumartUrl:Ljava/lang/String;

.field public szArtist:Ljava/lang/String;

.field public szData:Ljava/lang/String;

.field public szDisplayName:Ljava/lang/String;

.field public szMimeType:Ljava/lang/String;

.field public szTitle:Ljava/lang/String;

.field private szUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 455
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$1;

    invoke-direct {v0}, Lcom/pantech/app/music/list/MusicItemInfo$1;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 204
    iput-wide v4, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    .line 205
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    .line 206
    iput-wide v4, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    .line 207
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    .line 209
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    .line 218
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    .line 219
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    .line 220
    return-void
.end method

.method public constructor <init>(IJIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 20
    .param p1, "_nCntType"    # I
    .param p2, "_nAudioID"    # J
    .param p4, "_nAlbumID"    # I
    .param p5, "_rating"    # J
    .param p7, "_duration"    # I
    .param p8, "_tryCount"    # I
    .param p9, "_szTitle"    # Ljava/lang/String;
    .param p10, "_szDisplayName"    # Ljava/lang/String;
    .param p11, "_szAlbum"    # Ljava/lang/String;
    .param p12, "_szArtist"    # Ljava/lang/String;
    .param p13, "_szUrl"    # Ljava/lang/String;
    .param p14, "_szData"    # Ljava/lang/String;
    .param p15, "_albumartUrl"    # Ljava/lang/String;
    .param p16, "size"    # I
    .param p17, "date_modified"    # I
    .param p18, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 420
    iput-wide p2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    .line 421
    iput p4, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    .line 422
    iput-wide p5, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    .line 423
    iput p7, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    .line 425
    iput-object p9, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    .line 426
    iput-object p10, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    .line 427
    iput-object p11, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    .line 428
    iput-object p12, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    .line 429
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    .line 431
    iput-object p13, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    .line 432
    iput-object p14, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    .line 435
    iput p8, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    .line 438
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    .line 439
    move/from16 v0, p17

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    .line 440
    move/from16 v0, p16

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorType"    # I

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    packed-switch p2, :pswitch_data_134

    .line 395
    :goto_6
    :pswitch_6
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 396
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->RATING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    .line 399
    :cond_18
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_ID:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    .line 400
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DURATION:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    .line 401
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DATE_MODIFIED:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    .line 402
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->SIZE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    .line 403
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DRM_TRY_COUNT:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    .line 405
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->TITLE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    .line 406
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DISPLAY_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    .line 407
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ARTIST_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    .line 409
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PATH:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    .line 410
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PLAY_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    .line 411
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->MIMETYPE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    .line 413
    return-void

    .line 374
    :pswitch_f5
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 375
    invoke-static {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID(Landroid/database/Cursor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    goto/16 :goto_6

    .line 379
    :pswitch_100
    const-string v0, "contentsType"

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 380
    invoke-static {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID(Landroid/database/Cursor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    goto/16 :goto_6

    .line 384
    :pswitch_110
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 385
    const-string v0, "fileID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    goto/16 :goto_6

    .line 389
    :pswitch_121
    const-string v0, "contentsType"

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 390
    const-string v0, "audioID"

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    goto/16 :goto_6

    .line 372
    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_100
        :pswitch_6
        :pswitch_110
        :pswitch_121
    .end packed-switch
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/MusicItemInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 453
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/app/music/list/MusicItemInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/pantech/app/music/list/MusicItemInfo$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static chooseCntsType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 2
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    const/4 v0, 0x3

    .line 234
    :goto_7
    return v0

    .line 228
    :cond_8
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 230
    const/4 v0, 0x1

    goto :goto_7

    .line 234
    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getArtistAlbumList(Landroid/content/Context;JJ)Ljava/util/ArrayList;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "artistID"    # J
    .param p3, "albumID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v7, "idArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v8

    .line 242
    .local v8, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v8, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v8, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v8, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_1d
    :goto_1d
    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 244
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1d

    .line 246
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 249
    :cond_45
    if-eqz v6, :cond_4a

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_4a
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {p0, v7, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getAudioID(Landroid/database/Cursor;)J
    .registers 9
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 872
    const/4 v0, -0x1

    .line 873
    .local v0, "colidx":I
    const-wide/16 v4, -0x1

    .line 875
    .local v4, "value":J
    if-nez p0, :cond_8

    const-wide/16 v6, -0x1

    .line 895
    :goto_7
    return-wide v6

    .line 879
    :cond_8
    :try_start_8
    const-string v3, "audio_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_14

    move-result v0

    .line 888
    :goto_e
    :try_start_e
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_11
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_1c

    move-result-wide v4

    :goto_12
    move-wide v6, v4

    .line 895
    goto :goto_7

    .line 881
    :catch_14
    move-exception v2

    .line 883
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    .line 890
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1c
    move-exception v1

    .line 892
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_12
.end method

.method private static getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 6
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 900
    const/4 v1, -0x1

    .line 902
    .local v1, "value":I
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    .line 904
    :cond_5
    const/4 v2, -0x1

    .line 917
    :goto_6
    return v2

    .line 909
    :cond_7
    :try_start_7
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_11

    move-result v1

    :goto_f
    move v2, v1

    .line 917
    goto :goto_6

    .line 911
    :catch_11
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private static getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 8
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 922
    const-wide/16 v2, -0x1

    .line 924
    .local v2, "value":J
    if-eqz p0, :cond_6

    if-nez p1, :cond_9

    .line 926
    :cond_6
    const-wide/16 v4, -0x1

    .line 939
    :goto_8
    return-wide v4

    .line 931
    :cond_9
    :try_start_9
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_13

    move-result-wide v2

    :goto_11
    move-wide v4, v2

    .line 939
    goto :goto_8

    .line 933
    :catch_13
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "columnName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private static getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 944
    const-string v1, ""

    .line 946
    .local v1, "value":Ljava/lang/String;
    if-eqz p0, :cond_6

    if-nez p1, :cond_9

    .line 948
    :cond_6
    const-string v2, ""

    .line 966
    :goto_8
    return-object v2

    .line 953
    :cond_9
    :try_start_9
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 954
    if-nez v1, :cond_1c

    .line 956
    const-string v2, "VMusicMusicItemInfo"

    const-string v3, "[getCursorString] value is Null "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v1, ""
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1e

    :cond_1c
    :goto_1c
    move-object v2, v1

    .line 966
    goto :goto_8

    .line 960
    :catch_1e
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public static getList(Landroid/content/Context;JLcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupID"    # J
    .param p3, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v8, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/4 v0, -0x1

    invoke-static {p3, p1, p2, v0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 259
    .local v7, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_1b
    if-eqz v6, :cond_2d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 261
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 264
    :cond_2d
    if-eqz v6, :cond_32

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_32
    return-object v8
.end method

.method public static getList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "idArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    invoke-static {p0, p1, p2}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTrackCursor(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pantech/app/music/library/FragmentInfo$Category;)Landroid/database/Cursor;

    move-result-object v0

    .line 274
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_9
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 275
    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 278
    :cond_1b
    if-eqz v0, :cond_20

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_20
    return-object v1
.end method

.method public static getList(Lcom/pantech/app/music/library/FragmentInfo$Category;Landroid/database/Cursor;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 16
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    .line 285
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/4 v7, 0x0

    .line 290
    .local v7, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_13a

    .line 359
    :cond_15
    :goto_15
    :pswitch_15
    if-eqz v7, :cond_139

    .line 360
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 361
    .local v11, "newCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_139

    .line 362
    :goto_2a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 363
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v0, v11, v12}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 300
    .end local v11    # "newCursor":Landroid/database/Cursor;
    :pswitch_39
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v0, p1, v12}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 303
    :pswitch_42
    const-string v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 304
    .local v8, "itemID":J
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 305
    goto :goto_15

    .line 307
    .end local v8    # "itemID":J
    :pswitch_53
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 308
    .restart local v8    # "itemID":J
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 309
    goto :goto_15

    .line 311
    .end local v8    # "itemID":J
    :pswitch_64
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 312
    .restart local v8    # "itemID":J
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 313
    goto :goto_15

    .line 315
    .end local v8    # "itemID":J
    :pswitch_75
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 316
    .restart local v8    # "itemID":J
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 317
    goto :goto_15

    .line 319
    .end local v8    # "itemID":J
    :pswitch_86
    const-string v0, "itemID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 320
    .restart local v8    # "itemID":J
    const-string v0, "category"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/library/FragmentInfo;->fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v10

    .line 321
    .local v10, "itemType":Lcom/pantech/app/music/library/FragmentInfo$Category;
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_15

    .line 323
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {v10}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_164

    goto/16 :goto_15

    .line 325
    :pswitch_b1
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 326
    goto/16 :goto_15

    .line 328
    :pswitch_b9
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 329
    goto/16 :goto_15

    .line 331
    :pswitch_c1
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    goto/16 :goto_15

    .line 336
    .end local v8    # "itemID":J
    .end local v10    # "itemType":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :pswitch_c9
    const-string v0, "itemID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 337
    .restart local v8    # "itemID":J
    const-string v0, "category"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/library/FragmentInfo;->fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v10

    .line 338
    .restart local v10    # "itemType":Lcom/pantech/app/music/library/FragmentInfo$Category;
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {v10}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16e

    .line 349
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 350
    goto/16 :goto_15

    .line 340
    :pswitch_f4
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v4, v5, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 341
    goto/16 :goto_15

    .line 343
    :pswitch_fc
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v4, v5, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 344
    goto/16 :goto_15

    .line 346
    :pswitch_104
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v4, v5, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    .line 347
    goto/16 :goto_15

    .line 354
    .end local v8    # "itemID":J
    .end local v10    # "itemType":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :pswitch_10c
    const-string v0, "itemID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 355
    .restart local v8    # "itemID":J
    const-string v0, "VMusicMusicItemInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, v8, v9, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v7

    goto/16 :goto_15

    .line 365
    .end local v8    # "itemID":J
    .restart local v11    # "newCursor":Landroid/database/Cursor;
    :cond_136
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 368
    .end local v11    # "newCursor":Landroid/database/Cursor;
    :cond_139
    return-object v6

    .line 290
    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_64
        :pswitch_53
        :pswitch_39
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_42
        :pswitch_75
        :pswitch_86
        :pswitch_c9
        :pswitch_10c
    .end packed-switch

    .line 323
    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_b9
        :pswitch_c1
    .end packed-switch

    .line 338
    :pswitch_data_16e
    .packed-switch 0x4
        :pswitch_f4
        :pswitch_fc
        :pswitch_104
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 776
    iput-wide v4, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    .line 777
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    .line 778
    iput-wide v4, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    .line 779
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    .line 781
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    .line 782
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    .line 783
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    .line 784
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    .line 785
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    .line 786
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    .line 787
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    .line 789
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    .line 790
    iput v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    .line 791
    iput-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    .line 792
    return-void
.end method

.method public clone()Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 21

    .prologue
    .line 446
    new-instance v1, Lcom/pantech/app/music/list/MusicItemInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v1 .. v19}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(IJIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 851
    instance-of v1, p1, Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_85

    move-object v0, p1

    .line 852
    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo;

    .line 853
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    iget v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    iget v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    if-ne v1, v2, :cond_85

    iget-wide v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    iget-wide v4, v0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_85

    iget v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    iget v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    if-ne v1, v2, :cond_85

    iget v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    iget v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    if-ne v1, v2, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 864
    const/4 v1, 0x1

    .line 867
    .end local v0    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :goto_84
    return v1

    :cond_85
    const/4 v1, 0x0

    goto :goto_84
.end method

.method public getAlbum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbum(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum(Z)Ljava/lang/String;
    .registers 5
    .param p1, "full"    # Z

    .prologue
    const/16 v2, 0xc8

    .line 697
    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_18

    .line 699
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 702
    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    goto :goto_17
.end method

.method public getAlbumID()I
    .registers 2

    .prologue
    .line 562
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    return v0
.end method

.method public getAlbumartUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist(Z)Ljava/lang/String;
    .registers 5
    .param p1, "full"    # Z

    .prologue
    const/16 v2, 0xc8

    .line 720
    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_18

    .line 722
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 725
    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    goto :goto_17
.end method

.method public getAudioID()J
    .registers 3

    .prologue
    .line 548
    iget-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    return-wide v0
.end method

.method public getCntsType()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()I
    .registers 2

    .prologue
    .line 755
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    return v0
.end method

.method public getDisaplyTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 581
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()J
    .registers 3

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    return-wide v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 765
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    return v0
.end method

.method public getSkipCount()I
    .registers 2

    .prologue
    .line 590
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Z)Ljava/lang/String;
    .registers 5
    .param p1, "full"    # Z

    .prologue
    const/16 v2, 0xc8

    .line 661
    invoke-static {}, Lcom/pantech/app/music/utils/PreferenceUtils;->isDisplayAsFilename()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 662
    invoke-virtual {p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getDisaplyTitle()Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_c
    return-object v0

    .line 664
    :cond_d
    if-nez p1, :cond_23

    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_23

    .line 666
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 669
    :cond_23
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    goto :goto_c
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getURL(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    const-string v2, "uplus_sessionid_pref"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 626
    .local v1, "session_prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_uplus_sessionid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "sessionId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SESSION_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 837
    iget v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    iget-wide v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    add-int v0, v1, v2

    .line 839
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_18
    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 841
    :cond_23
    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 842
    :cond_2e
    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    :cond_39
    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 844
    :cond_44
    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 846
    :cond_4f
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .registers 2
    .param p1, "szAlbum"    # Ljava/lang/String;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    .line 708
    return-void
.end method

.method public setAlbumID(I)V
    .registers 2
    .param p1, "nAlbumID"    # I

    .prologue
    .line 567
    iput p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    .line 568
    return-void
.end method

.method public setAlbumartUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    .line 741
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 2
    .param p1, "szArtist"    # Ljava/lang/String;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    .line 731
    return-void
.end method

.method public setAudioID(J)V
    .registers 4
    .param p1, "nAudioID"    # J

    .prologue
    .line 553
    iput-wide p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    .line 554
    return-void
.end method

.method public setCntsType(I)V
    .registers 2
    .param p1, "nCntType"    # I

    .prologue
    .line 539
    iput p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 540
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2
    .param p1, "szData"    # Ljava/lang/String;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setDateModified(I)V
    .registers 2
    .param p1, "nDateModified"    # I

    .prologue
    .line 760
    iput p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    .line 761
    return-void
.end method

.method public setDisplayTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    .line 577
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "szMimeType"    # Ljava/lang/String;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    .line 751
    return-void
.end method

.method public setRate(J)V
    .registers 4
    .param p1, "valuse"    # J

    .prologue
    .line 609
    iput-wide p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    .line 610
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .param p1, "nSize"    # I

    .prologue
    .line 770
    iput p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    .line 771
    return-void
.end method

.method public setSkipCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 595
    iput p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    .line 596
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "szTitle"    # Ljava/lang/String;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nCntType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nAudioID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Artist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " szUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "szData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 478
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 480
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-wide v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 482
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbumartUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/MusicItemInfo;->writeToParcel(Landroid/os/Parcel;)V

    .line 503
    return-void
.end method
