.class abstract Lcom/pantech/audiotag/data/AbsData;
.super Ljava/lang/Object;
.source "AbsData.java"


# static fields
.field public static final TYPE_ALBUM:I = 0x3

.field public static final TYPE_ARTIST:I = 0x2

.field public static final TYPE_COMMENT:I = 0x8

.field public static final TYPE_GENRE:I = 0x4

.field public static final TYPE_LYRICS:I = 0x6

.field public static final TYPE_TITLE:I = 0x1

.field public static final TYPE_TRACK:I = 0x5

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_YEAR:I = 0x7


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_1e

    .line 28
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 20
    :pswitch_6
    const-string v0, "TITLE"

    goto :goto_5

    .line 21
    :pswitch_9
    const-string v0, "ARTIST"

    goto :goto_5

    .line 22
    :pswitch_c
    const-string v0, "ALBUM"

    goto :goto_5

    .line 23
    :pswitch_f
    const-string v0, "GENRE"

    goto :goto_5

    .line 24
    :pswitch_12
    const-string v0, "TRACK"

    goto :goto_5

    .line 25
    :pswitch_15
    const-string v0, "LYRICS"

    goto :goto_5

    .line 26
    :pswitch_18
    const-string v0, "YEAR"

    goto :goto_5

    .line 27
    :pswitch_1b
    const-string v0, "COMMENT"

    goto :goto_5

    .line 18
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
