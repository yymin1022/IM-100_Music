.class public final enum Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
.super Ljava/lang/Enum;
.source "DBInterfacePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaylistMakeErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

.field public static final enum ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

.field public static final enum ERROR_EMOJI_CHAR:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

.field public static final enum ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

.field public static final enum ERROR_NO_NAME:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

.field public static final enum ERROR_TOO_LONG:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

.field public static final enum ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;


# instance fields
.field private playlistID:J

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    const-string v1, "ERROR_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 112
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    const-string v1, "ERROR_DUPLICATION"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 113
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    const-string v1, "ERROR_TOO_LONG"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_TOO_LONG:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 114
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    const-string v1, "ERROR_NO_NAME"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NO_NAME:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 115
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 116
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    const-string v1, "ERROR_EMOJI_CHAR"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_EMOJI_CHAR:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_TOO_LONG:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NO_NAME:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_EMOJI_CHAR:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->$VALUES:[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->value:I

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->playlistID:J

    .line 123
    iput p3, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->value:I

    .line 124
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->$VALUES:[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    return-object v0
.end method


# virtual methods
.method public getPlaylistID()J
    .registers 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->playlistID:J

    return-wide v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->value:I

    return v0
.end method

.method public isSuccess()Z
    .registers 3

    .prologue
    .line 145
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$2;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistMakeErrorType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 152
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 149
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 145
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public setPlaylistID(J)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .registers 4
    .param p1, "val"    # J

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->playlistID:J

    .line 135
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$2;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistMakeErrorType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 175
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    .line 162
    :pswitch_10
    const-string v0, "ERROR_NONE"

    goto :goto_f

    .line 164
    :pswitch_13
    const-string v0, "ERROR_DUPLICATION"

    goto :goto_f

    .line 166
    :pswitch_16
    const-string v0, "ERROR_TOO_LONG"

    goto :goto_f

    .line 168
    :pswitch_19
    const-string v0, "ERROR_NO_NAME"

    goto :goto_f

    .line 170
    :pswitch_1c
    const-string v0, "ERROR_UNKNOWN"

    goto :goto_f

    .line 172
    :pswitch_1f
    const-string v0, "ERROR_EMOJI_CHAR"

    goto :goto_f

    .line 159
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method
