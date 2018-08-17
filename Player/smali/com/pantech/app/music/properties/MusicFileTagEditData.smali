.class public Lcom/pantech/app/music/properties/MusicFileTagEditData;
.super Ljava/lang/Object;
.source "MusicFileTagEditData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/properties/MusicFileTagEditData$1;
    }
.end annotation


# static fields
.field private static INDEXS:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex; = null

.field public static final TAG_EDIT_DATA_MAX_NUM:I = 0x5

.field private static final TAG_EDIT_DATA_ORDER:[I


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public newTagTextMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oriTagTextMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public track:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    .line 26
    invoke-static {}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->values()[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->INDEXS:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "track"    # Ljava/lang/String;
    .param p6, "isCheck"    # Z

    .prologue
    const/4 v6, 0x5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    .line 36
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->oriTagTextMap:Landroid/util/SparseArray;

    .line 47
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->artist:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->album:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->oriTagTextMap:Landroid/util/SparseArray;

    .line 61
    if-eqz p6, :cond_dd

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5e
    if-ge v0, v6, :cond_92

    .line 66
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "text":Ljava/lang/String;
    sget-object v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->INDEXS:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v4, v4, v0

    aget-object v1, v3, v4

    .line 69
    .local v1, "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    if-eqz v2, :cond_8f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 70
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v4, v4, v0

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 73
    .end local v1    # "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    .end local v2    # "text":Ljava/lang/String;
    :cond_92
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    .line 74
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->artist:Ljava/lang/String;

    .line 75
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->album:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    .line 79
    .end local v0    # "i":I
    :cond_dd
    return-void
.end method

.method private getEmptyStrOfType(Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;)I
    .registers 5
    .param p1, "property"    # Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .prologue
    const v0, 0x7f080152

    .line 141
    sget-object v1, Lcom/pantech/app/music/properties/MusicFileTagEditData$1;->$SwitchMap$com$pantech$app$music$properties$MusicProperties$PropertyIndex:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 148
    :goto_e
    :pswitch_e
    return v0

    .line 144
    :pswitch_f
    const v0, 0x7f08014f

    goto :goto_e

    .line 145
    :pswitch_13
    const v0, 0x7f08014e

    goto :goto_e

    .line 146
    :pswitch_17
    const v0, 0x7f080151

    goto :goto_e

    .line 147
    :pswitch_1b
    const v0, 0x7f080154

    goto :goto_e

    .line 141
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public checkDataChanged()Z
    .registers 7

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "isChanged":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_3f

    .line 159
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v5, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "text":Ljava/lang/String;
    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->INDEXS:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    sget-object v5, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v5, v5, v0

    aget-object v2, v4, v5

    .line 163
    .local v2, "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v4, v4, v0

    sget-object v5, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v5}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_31

    .line 165
    if-eqz v3, :cond_2e

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/properties/MusicFileTagEditData;->checkTrackData(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 166
    const/4 v1, 0x1

    .line 157
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    :cond_31
    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 171
    const/4 v1, 0x1

    goto :goto_2e

    .line 175
    .end local v2    # "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    .end local v3    # "text":Ljava/lang/String;
    :cond_3f
    return v1
.end method

.method public checkSpecialCharacter()Z
    .registers 7

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4d

    .line 86
    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->newTagTextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_4a

    .line 90
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4a

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 94
    const-string v3, "VMusicTagEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found special character>> index["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v3, 0x1

    .line 101
    .end local v1    # "j":I
    .end local v2    # "text":Ljava/lang/String;
    :goto_46
    return v3

    .line 90
    .restart local v1    # "j":I
    .restart local v2    # "text":Ljava/lang/String;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 84
    .end local v1    # "j":I
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v2    # "text":Ljava/lang/String;
    :cond_4d
    const/4 v3, 0x0

    goto :goto_46
.end method

.method protected checkTrackData(Ljava/lang/String;)Z
    .registers 10
    .param p1, "newTrack"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v1, 0x1

    .line 187
    .local v1, "isDigit":Z
    sget-object v3, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "oldTrack":Ljava/lang/String;
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_28

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_25

    .line 194
    const/4 v1, 0x0

    .line 191
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 199
    .end local v0    # "i":I
    :cond_28
    const/4 v1, 0x0

    .line 202
    :cond_29
    if-eqz v1, :cond_41

    .line 203
    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getAndCheckEmptyData(Landroid/content/Context;I)Ljava/lang/String;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "genreVisibility"    # I

    .prologue
    const/4 v9, 0x1

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "emptyCount":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080153

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "emptyString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    const/4 v6, 0x5

    if-ge v2, v6, :cond_69

    .line 112
    iget-object v6, p0, Lcom/pantech/app/music/properties/MusicFileTagEditData;->oriTagTextMap:Landroid/util/SparseArray;

    sget-object v7, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    .local v5, "text":Ljava/lang/String;
    sget-object v6, Lcom/pantech/app/music/properties/MusicFileTagEditData;->INDEXS:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    sget-object v7, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v7, v7, v2

    aget-object v4, v6, v7

    .line 115
    .local v4, "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_66

    .line 117
    :cond_31
    const/4 v3, 0x1

    .line 120
    .local v3, "isEmpty":Z
    sget-object v6, Lcom/pantech/app/music/properties/MusicFileTagEditData;->TAG_EDIT_DATA_ORDER:[I

    aget v6, v6, v2

    sget-object v7, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_41

    if-eqz p2, :cond_41

    .line 121
    const/4 v3, 0x0

    .line 123
    :cond_41
    if-eqz v3, :cond_66

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/pantech/app/music/properties/MusicFileTagEditData;->getEmptyStrOfType(Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .end local v3    # "isEmpty":Z
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 128
    .end local v4    # "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    .end local v5    # "text":Ljava/lang/String;
    :cond_69
    if-ne v0, v9, :cond_92

    .line 129
    const-string v6, ", "

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_73
    :goto_73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080150

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    if-lez v0, :cond_a0

    .end local v1    # "emptyString":Ljava/lang/String;
    :goto_91
    return-object v1

    .line 130
    .restart local v1    # "emptyString":Ljava/lang/String;
    :cond_92
    if-le v0, v9, :cond_73

    .line 131
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_73

    .line 135
    :cond_a0
    const/4 v1, 0x0

    goto :goto_91
.end method
