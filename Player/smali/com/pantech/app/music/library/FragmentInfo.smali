.class public Lcom/pantech/app/music/library/FragmentInfo;
.super Ljava/lang/Object;
.source "FragmentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/FragmentInfo$2;,
        Lcom/pantech/app/music/library/FragmentInfo$Category;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final OPTION_ACTION_MODE_ANIMATION_DISABLE:I = 0x80

.field public static final OPTION_ACTION_MODE_DISABLE:I = 0x2

.field public static final OPTION_ACTION_MODE_ONLY:I = 0x1

.field public static final OPTION_COLORFUL_TEXT_DISABLE:I = 0x10

.field public static final OPTION_DIALOG_TYPE:I = 0x40

.field public static final OPTION_HELP_GUIDE:I = 0x20

.field public static final OPTION_NO_CONTENT_ONLY_TEXT:I = 0x100

.field public static final OPTION_REARRANGE_ENABLE:I = 0x4

.field public static final OPTION_SWIPE_ENABLE:I = 0x8


# instance fields
.field private mAlbumID:J

.field private mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field private mGroupID:J

.field private mHeaderSubTitle:Ljava/lang/String;

.field private mHeaderTitle:Ljava/lang/String;

.field private mHeaderTitleResId:I

.field private mLimit:I

.field private mOptions:I

.field private mPlayListID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 227
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$1;

    invoke-direct {v0}, Lcom/pantech/app/music/library/FragmentInfo$1;-><init>()V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 130
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 138
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 188
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/library/FragmentInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/library/FragmentInfo$Category;I)V
    .registers 6
    .param p1, "type"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "titleResId"    # I

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 130
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 138
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 142
    iput-object p1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 143
    iput p2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/library/FragmentInfo$Category;II)V
    .registers 7
    .param p1, "type"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "titleResId"    # I
    .param p3, "limit"    # I

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 130
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 138
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 152
    iput-object p1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 153
    iput p2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 154
    iput p3, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/library/FragmentInfo$Category;IJJ)V
    .registers 10
    .param p1, "type"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "titleResId"    # I
    .param p3, "albumID"    # J
    .param p5, "groupID"    # J

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 130
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 138
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 158
    iput-object p1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 159
    iput-wide p3, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 160
    iput-wide p5, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 161
    iput p2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 130
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 138
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 147
    iput-object p1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 148
    iput-object p2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitle:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;JJ)V
    .registers 10
    .param p1, "type"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "albumID"    # J
    .param p5, "groupID"    # J

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 130
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 138
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 165
    iput-object p1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 166
    iput-wide p3, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 167
    iput-wide p5, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 168
    iput-object p2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitle:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 12
    .param p1, "type"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "albumID"    # J
    .param p6, "groupID"    # J

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 130
    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 138
    iput v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 172
    iput-object p1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 173
    iput-wide p4, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 174
    iput-wide p6, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 175
    iput-object p2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitle:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderSubTitle:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;
    .registers 4
    .param p0, "ordinal"    # I

    .prologue
    .line 591
    const-class v2, Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 592
    .local v0, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    if-ne v2, p0, :cond_a

    .line 596
    .end local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :goto_1c
    return-object v0

    :cond_1d
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    goto :goto_1c
.end method


# virtual methods
.method public addOptions(I)V
    .registers 3
    .param p1, "options"    # I

    .prologue
    .line 180
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 181
    return-void
.end method

.method createHolderHelper(Landroid/view/View;)Lcom/pantech/app/music/library/IListHolderHelper;
    .registers 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 277
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6a

    .line 330
    const/4 v0, 0x0

    .line 333
    .local v0, "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :goto_e
    return-object v0

    .line 285
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_f
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;-><init>(Landroid/view/View;)V

    .line 286
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 288
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_15
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;-><init>(Landroid/view/View;)V

    .line 289
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 291
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_1b
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;-><init>(Landroid/view/View;)V

    .line 292
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 294
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_21
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;-><init>(Landroid/view/View;)V

    .line 295
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 297
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_27
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;-><init>(Landroid/view/View;)V

    .line 298
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 300
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_2d
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;-><init>(Landroid/view/View;)V

    .line 301
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 303
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_33
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderFolderHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderFolderHelper;-><init>(Landroid/view/View;)V

    .line 304
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 306
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_39
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;-><init>(Landroid/view/View;)V

    .line 307
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 309
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_3f
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistDialogHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderPlaylistDialogHelper;-><init>(Landroid/view/View;)V

    .line 310
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 312
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_45
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistShortcutHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderPlaylistShortcutHelper;-><init>(Landroid/view/View;)V

    .line 313
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 315
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_4b
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;-><init>(Landroid/view/View;)V

    .line 316
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 318
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_51
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;-><init>(Landroid/view/View;)V

    .line 319
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 321
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_57
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;-><init>(Landroid/view/View;)V

    .line 322
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 324
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_5d
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;-><init>(Landroid/view/View;)V

    .line 325
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 327
    .end local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    :pswitch_63
    new-instance v0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;-><init>(Landroid/view/View;)V

    .line 328
    .restart local v0    # "iHolderHelper":Lcom/pantech/app/music/library/IListHolderHelper;
    goto :goto_e

    .line 277
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_27
        :pswitch_21
        :pswitch_2d
        :pswitch_39
        :pswitch_33
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_3f
        :pswitch_45
        :pswitch_4b
        :pswitch_51
        :pswitch_57
        :pswitch_5d
        :pswitch_63
    .end packed-switch
.end method

.method public createLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 581
    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1a

    .line 583
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 587
    :goto_19
    return-object v0

    .line 585
    :cond_1a
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_19

    .line 587
    :cond_20
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_19
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuID()I
    .registers 4

    .prologue
    .line 418
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 452
    :pswitch_d
    const/high16 v0, 0x7f110000

    .line 455
    .local v0, "menuID":I
    :goto_f
    return v0

    .line 420
    .end local v0    # "menuID":I
    :pswitch_10
    iget v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    .line 421
    const v0, 0x7f110003

    .restart local v0    # "menuID":I
    goto :goto_f

    .line 423
    .end local v0    # "menuID":I
    :cond_1a
    const v0, 0x7f110004

    .line 424
    .restart local v0    # "menuID":I
    goto :goto_f

    .line 429
    .end local v0    # "menuID":I
    :pswitch_1e
    iget v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    .line 430
    const v0, 0x7f110003

    .restart local v0    # "menuID":I
    goto :goto_f

    .line 432
    .end local v0    # "menuID":I
    :cond_28
    const/high16 v0, 0x7f110000

    .line 433
    .restart local v0    # "menuID":I
    goto :goto_f

    .line 435
    .end local v0    # "menuID":I
    :pswitch_2b
    const v0, 0x7f110002

    .line 436
    .restart local v0    # "menuID":I
    goto :goto_f

    .line 444
    .end local v0    # "menuID":I
    :pswitch_2f
    const v0, 0x7f110004

    .line 445
    .restart local v0    # "menuID":I
    goto :goto_f

    .line 449
    .end local v0    # "menuID":I
    :pswitch_33
    const v0, 0x7f110001

    .line 450
    .restart local v0    # "menuID":I
    goto :goto_f

    .line 418
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_2b
        :pswitch_1e
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_2f
        :pswitch_2f
        :pswitch_d
        :pswitch_d
        :pswitch_2f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_33
    .end packed-switch
.end method

.method public getAlbumID()J
    .registers 3

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    return-wide v0
.end method

.method public getAnimationID()I
    .registers 4

    .prologue
    .line 501
    const/4 v0, -0x1

    .line 502
    .local v0, "animationID":I
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 518
    :goto_e
    :pswitch_e
    return v0

    .line 510
    :pswitch_f
    const v0, 0x7f04002c

    .line 511
    goto :goto_e

    .line 515
    :pswitch_13
    const v0, 0x7f04002d

    goto :goto_e

    .line 502
    nop

    :pswitch_data_18
    .packed-switch 0x7
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_13
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    return-object v0
.end method

.method public getGroupID()J
    .registers 3

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    return-wide v0
.end method

.method public getHeaderButtonID()I
    .registers 4

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "resID":I
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14

    .line 564
    :goto_e
    return v0

    .line 561
    :pswitch_f
    const v0, 0x7f0800b2

    goto :goto_e

    .line 559
    nop

    :pswitch_data_14
    .packed-switch 0x12
        :pswitch_f
    .end packed-switch
.end method

.method public getHeaderTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 253
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitle:Ljava/lang/String;

    goto :goto_b
.end method

.method public getLayoutAdapterID()I
    .registers 4

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "layoutID":I
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 407
    :pswitch_e
    iget v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_36

    .line 408
    const v0, 0x7f03005f

    .line 413
    :cond_17
    :goto_17
    return v0

    .line 385
    :pswitch_18
    const v0, 0x7f03005a

    .line 386
    goto :goto_17

    .line 388
    :pswitch_1c
    const v0, 0x7f03005e

    .line 389
    goto :goto_17

    .line 391
    :pswitch_20
    iget v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_17

    .line 392
    const v0, 0x7f030057

    goto :goto_17

    .line 396
    :pswitch_2a
    const v0, 0x7f03005c

    .line 397
    goto :goto_17

    .line 401
    :pswitch_2e
    const v0, 0x7f03005b

    .line 402
    goto :goto_17

    .line 404
    :pswitch_32
    const v0, 0x7f030056

    .line 405
    goto :goto_17

    .line 410
    :cond_36
    const v0, 0x7f03005d

    goto :goto_17

    .line 383
    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_18
        :pswitch_e
        :pswitch_2e
        :pswitch_2e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_32
        :pswitch_2e
        :pswitch_1c
        :pswitch_2a
        :pswitch_20
    .end packed-switch
.end method

.method public getLayoutID()I
    .registers 4

    .prologue
    .line 338
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 375
    :pswitch_d
    const v0, 0x7f03007a

    .line 378
    .local v0, "layoutID":I
    :goto_10
    return v0

    .line 348
    .end local v0    # "layoutID":I
    :pswitch_11
    iget v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1b

    .line 349
    const v0, 0x7f030083

    .restart local v0    # "layoutID":I
    goto :goto_10

    .line 351
    .end local v0    # "layoutID":I
    :cond_1b
    const v0, 0x7f030082

    .line 352
    .restart local v0    # "layoutID":I
    goto :goto_10

    .line 354
    .end local v0    # "layoutID":I
    :pswitch_1f
    const v0, 0x7f03007d

    .line 355
    .restart local v0    # "layoutID":I
    goto :goto_10

    .line 357
    .end local v0    # "layoutID":I
    :pswitch_23
    const v0, 0x7f03007e

    .line 358
    .restart local v0    # "layoutID":I
    goto :goto_10

    .line 365
    .end local v0    # "layoutID":I
    :pswitch_27
    iget v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_31

    .line 366
    const v0, 0x7f03007c

    .restart local v0    # "layoutID":I
    goto :goto_10

    .line 368
    .end local v0    # "layoutID":I
    :cond_31
    const v0, 0x7f03007b

    .line 369
    .restart local v0    # "layoutID":I
    goto :goto_10

    .line 371
    .end local v0    # "layoutID":I
    :pswitch_35
    const v0, 0x7f030081

    .line 372
    .restart local v0    # "layoutID":I
    goto :goto_10

    .line 338
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_1f
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_23
        :pswitch_11
        :pswitch_d
        :pswitch_11
        :pswitch_11
        :pswitch_35
        :pswitch_d
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    return v0
.end method

.method public getNoContentResID()I
    .registers 4

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "resID":I
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 554
    :goto_e
    :pswitch_e
    return v0

    .line 525
    :pswitch_f
    const v0, 0x7f0800f4

    .line 526
    goto :goto_e

    .line 528
    :pswitch_13
    const v0, 0x7f0800f5

    .line 529
    goto :goto_e

    .line 531
    :pswitch_17
    const v0, 0x7f0800f3

    .line 532
    goto :goto_e

    .line 534
    :pswitch_1b
    const v0, 0x7f0800f2

    .line 535
    goto :goto_e

    .line 542
    :pswitch_1f
    const v0, 0x7f0800f2

    .line 543
    goto :goto_e

    .line 545
    :pswitch_23
    const v0, 0x7f0800f6

    .line 546
    goto :goto_e

    .line 523
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_e
        :pswitch_e
        :pswitch_1b
        :pswitch_e
        :pswitch_13
        :pswitch_17
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_23
    .end packed-switch
.end method

.method public getOptionMenuID()I
    .registers 4

    .prologue
    .line 460
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 491
    :pswitch_d
    const v0, 0x7f110005

    .line 494
    .local v0, "menuID":I
    :goto_10
    iget v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    .line 495
    const v0, 0x7f110008

    .line 497
    :cond_19
    return v0

    .line 465
    .end local v0    # "menuID":I
    :pswitch_1a
    const v0, 0x7f11000b

    .line 466
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 468
    .end local v0    # "menuID":I
    :pswitch_1e
    const v0, 0x7f11000d

    .line 469
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 471
    .end local v0    # "menuID":I
    :pswitch_22
    const v0, 0x7f11000c

    .line 472
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 474
    .end local v0    # "menuID":I
    :pswitch_26
    const v0, 0x7f110009

    .line 475
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 477
    .end local v0    # "menuID":I
    :pswitch_2a
    const v0, 0x7f11000a

    .line 478
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 481
    .end local v0    # "menuID":I
    :pswitch_2e
    const v0, 0x7f110008

    .line 482
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 485
    .end local v0    # "menuID":I
    :pswitch_32
    const v0, 0x7f110007

    .line 486
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 488
    .end local v0    # "menuID":I
    :pswitch_36
    const v0, 0x7f110006

    .line 489
    .restart local v0    # "menuID":I
    goto :goto_10

    .line 460
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_22
        :pswitch_1a
        :pswitch_36
        :pswitch_d
        :pswitch_32
        :pswitch_d
        :pswitch_d
        :pswitch_32
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_2e
        :pswitch_d
        :pswitch_2e
        :pswitch_d
        :pswitch_2a
        :pswitch_26
    .end packed-switch
.end method

.method public getPlaylistID()J
    .registers 3

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    return-wide v0
.end method

.method public getSubHeaderTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasOptions(I)Z
    .registers 3
    .param p1, "options"    # I

    .prologue
    .line 184
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCustomCursor()Z
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0}, Lcom/pantech/app/music/library/helper/DBCursorHelper;->isCustomCursor(Lcom/pantech/app/music/library/FragmentInfo$Category;)Z

    move-result v0

    return v0
.end method

.method public isGridView()Z
    .registers 3

    .prologue
    .line 572
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 576
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 574
    :pswitch_f
    const/4 v0, 0x1

    goto :goto_e

    .line 572
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_f
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->valueOf(Ljava/lang/String;)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_3b

    .line 216
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitle:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderSubTitle:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 225
    return-void

    .line 213
    :catch_3b
    move-exception v0

    .line 214
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    goto :goto_a
.end method

.method public setPlayListID(J)V
    .registers 4
    .param p1, "playListID"    # J

    .prologue
    .line 268
    iput-wide p1, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    .line 269
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    if-nez v0, :cond_32

    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mAlbumID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    iget-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mGroupID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mHeaderTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-wide v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mPlayListID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    return-void

    .line 198
    :cond_32
    iget-object v0, p0, Lcom/pantech/app/music/library/FragmentInfo;->mCategory:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
