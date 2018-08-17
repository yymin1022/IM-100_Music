.class public Lcom/pantech/app/music/list/PageInfoType;
.super Ljava/lang/Object;
.source "PageInfoType.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/PageInfoType$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/app/music/list/PageInfoType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field private mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

.field private mExtraValue:Ljava/lang/String;

.field private mFromSecretBox:Z

.field private mIsCurrentFragment:Z

.field private mNowplayingCntsType:I

.field private mOrientaion:I

.field private mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

.field mScreenLayout:I

.field private mSearchMode:I

.field private mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field private mTargetPlaylistID:J

.field private mTargetPlaylistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType$1;

    invoke-direct {v0}, Lcom/pantech/app/music/list/PageInfoType$1;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/PageInfoType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v4, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 31
    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mScreenLayout:I

    .line 35
    iput-boolean v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 43
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 44
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    iput-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    .line 46
    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 50
    iput-wide v4, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 51
    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mNowplayingCntsType:I

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mScreenLayout:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/PageInfoType;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/app/music/list/PageInfoType$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/pantech/app/music/list/PageInfoType$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;ILjava/lang/String;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLjava/lang/String;ZLcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;)V
    .registers 13
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "editmode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .param p3, "searchMode"    # I
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "addPlaylistCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p6, "targetPlaylistID"    # J
    .param p8, "targetPlaylistName"    # Ljava/lang/String;
    .param p9, "fromSecretBox"    # Z
    .param p10, "pickerMode"    # Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mScreenLayout:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 77
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 78
    iput-object p2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 79
    iput p3, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    .line 80
    iput-object p4, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 84
    iput-wide p6, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 85
    iput-object p8, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 87
    iput-boolean p9, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 88
    iput-object p10, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V
    .registers 12
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "editmode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .param p3, "pickerMode"    # Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    .param p4, "searchMode"    # I
    .param p5, "extraValue"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v4, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 31
    iput-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mScreenLayout:I

    .line 35
    iput-boolean v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 59
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 60
    iput-object p2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 61
    iput p4, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    .line 62
    iput-object p5, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 66
    iput-wide v4, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 67
    iput-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 70
    iput-object p3, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 71
    return-void
.end method

.method public static getInstance(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;
    .registers 11
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "editmode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .param p2, "pickerMode"    # Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    .param p3, "searchMode"    # I
    .param p4, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    return-object v0
.end method

.method public static getScreenLayout(I)I
    .registers 2
    .param p0, "screenLayout"    # I

    .prologue
    .line 211
    and-int/lit8 v0, p0, 0xf

    return v0
.end method


# virtual methods
.method public clone()Lcom/pantech/app/music/list/PageInfoType;
    .registers 12

    .prologue
    .line 832
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    iget v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    iget-object v4, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-wide v6, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    iget-object v8, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    iget-object v10, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-direct/range {v0 .. v10}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;ILjava/lang/String;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLjava/lang/String;ZLcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;)V

    return-object v0
.end method

.method public clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;
    .registers 13
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 837
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    iget v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    iget-object v4, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-wide v6, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    iget-object v8, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    iget-object v10, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;ILjava/lang/String;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLjava/lang/String;ZLcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;)V

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;
    .registers 13
    .param p1, "groupID"    # Ljava/lang/String;

    .prologue
    .line 842
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    iget v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    iget-object v5, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-wide v6, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    iget-object v8, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    iget-object v10, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;ILjava/lang/String;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLjava/lang/String;ZLcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->clone()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;
    .registers 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->isPickingEditMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 522
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 536
    :cond_15
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v0

    :goto_1b
    return-object v0

    .line 525
    :pswitch_1c
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_1b

    .line 529
    :pswitch_1f
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_1b

    .line 532
    :pswitch_22
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_1b

    .line 522
    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public getAdapterViewLayoutID()I
    .registers 4

    .prologue
    const v0, 0x7f030066

    .line 653
    sget-object v1, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 681
    const/4 v0, 0x0

    :goto_13
    :pswitch_13
    return v0

    .line 656
    :pswitch_14
    const v0, 0x7f030065

    goto :goto_13

    .line 659
    :pswitch_18
    const v0, 0x7f030063

    goto :goto_13

    .line 667
    :pswitch_1c
    const v0, 0x7f030067

    goto :goto_13

    .line 669
    :pswitch_20
    const v0, 0x7f030068

    goto :goto_13

    .line 672
    :pswitch_24
    const v0, 0x7f03006c

    goto :goto_13

    .line 675
    :pswitch_28
    const v0, 0x7f030064

    goto :goto_13

    .line 678
    :pswitch_2c
    const v0, 0x7f030069

    goto :goto_13

    .line 653
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_14
        :pswitch_18
        :pswitch_13
        :pswitch_13
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method public getAdapterViewLayoutType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;
    .registers 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->isPickingEditMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 591
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 610
    :cond_15
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 648
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_3d
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 645
    :goto_3f
    return-object v0

    .line 600
    :pswitch_40
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 603
    :pswitch_43
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 606
    :pswitch_46
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 625
    :pswitch_49
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 628
    :pswitch_4c
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_GRID_2LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 631
    :pswitch_4f
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ALBUMART_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 634
    :pswitch_52
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 640
    :pswitch_55
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 645
    :pswitch_58
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_REARRANGE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    goto :goto_3f

    .line 591
    nop

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch

    .line 610
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_55
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_58
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method public getBroadcastMask()I
    .registers 3

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 688
    .local v0, "mask":I
    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->hasContentObserver()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 690
    or-int/lit8 v0, v0, 0x8

    .line 695
    :cond_b
    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v1

    if-nez v1, :cond_15

    .line 697
    or-int/lit16 v0, v0, 0x2444

    .line 700
    :cond_15
    or-int/lit8 v0, v0, 0x1

    .line 702
    or-int/lit8 v0, v0, 0x10

    .line 704
    or-int/lit8 v0, v0, 0x20

    .line 706
    return v0
.end method

.method public getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    return-object v0
.end method

.method public getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->isUBoxNowplayingList()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 244
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_8
.end method

.method public getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;
    .registers 15
    .param p1, "listID"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 463
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_68

    .line 498
    new-instance v6, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    iget-object v9, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    iget v10, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    move-object v0, v6

    .line 502
    :goto_28
    return-object v0

    .line 466
    :pswitch_29
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 467
    .local v1, "childCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    move-object v5, p1

    .line 469
    .local v5, "childGroupID":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 473
    .local v12, "nGroupID":I
    const/4 v0, -0x3

    if-ne v12, v0, :cond_4d

    .line 475
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 476
    const-string v5, ""

    .line 495
    .end local v12    # "nGroupID":I
    :cond_41
    :goto_41
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    iget v4, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    goto :goto_28

    .line 478
    .restart local v12    # "nGroupID":I
    :cond_4d
    const/4 v0, -0x4

    if-ne v12, v0, :cond_55

    .line 480
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 481
    const-string v5, ""

    goto :goto_41

    .line 483
    :cond_55
    const/4 v0, -0x5

    if-ne v12, v0, :cond_5d

    .line 485
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 486
    const-string v5, ""

    goto :goto_41

    .line 488
    :cond_5d
    const/4 v0, -0x6

    if-ne v12, v0, :cond_41

    .line 490
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 491
    const-string v5, ""

    goto :goto_41

    .end local v1    # "childCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v5    # "childGroupID":Ljava/lang/String;
    .end local v12    # "nGroupID":I
    :cond_65
    move-object v0, p0

    .line 502
    goto :goto_28

    .line 463
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_29
    .end packed-switch
.end method

.method public getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    return-object v0
.end method

.method public getEmptyPageItem()Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;
    .registers 6

    .prologue
    .line 386
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_12

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_12

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v3, v4, :cond_55

    .line 389
    :cond_12
    const v1, 0x7f08008b

    .line 397
    .local v1, "main":I
    :goto_15
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_39

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_39

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_39

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_39

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_39

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v3, v4, :cond_6f

    .line 404
    :cond_39
    const/4 v2, -0x1

    .line 415
    .local v2, "sub":I
    :goto_3a
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_4c

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v3, v4, :cond_4c

    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v3, v4, :cond_7d

    .line 418
    :cond_4c
    const v0, 0x7f020110

    .line 426
    .local v0, "icon":I
    :goto_4f
    new-instance v3, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;

    invoke-direct {v3, v1, v2, v0}, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;-><init>(III)V

    return-object v3

    .line 390
    .end local v0    # "icon":I
    .end local v1    # "main":I
    .end local v2    # "sub":I
    :cond_55
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 391
    const v1, 0x7f08008f

    .restart local v1    # "main":I
    goto :goto_15

    .line 392
    .end local v1    # "main":I
    :cond_61
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v3, v4, :cond_6b

    .line 393
    const v1, 0x7f080089

    .restart local v1    # "main":I
    goto :goto_15

    .line 395
    .end local v1    # "main":I
    :cond_6b
    const v1, 0x7f080087

    .restart local v1    # "main":I
    goto :goto_15

    .line 406
    :cond_6f
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 408
    const/4 v2, -0x1

    .restart local v2    # "sub":I
    goto :goto_3a

    .line 412
    .end local v2    # "sub":I
    :cond_79
    const v2, 0x7f080088

    .restart local v2    # "sub":I
    goto :goto_3a

    .line 419
    :cond_7d
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 420
    const v0, 0x7f020111

    .restart local v0    # "icon":I
    goto :goto_4f

    .line 421
    .end local v0    # "icon":I
    :cond_89
    iget-object v3, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v3, v4, :cond_93

    .line 422
    const v0, 0x7f02010f

    .restart local v0    # "icon":I
    goto :goto_4f

    .line 424
    .end local v0    # "icon":I
    :cond_93
    const v0, 0x7f020111

    .restart local v0    # "icon":I
    goto :goto_4f
.end method

.method public getExpandableAdapterOption()I
    .registers 4

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "option":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    if-ne v1, v2, :cond_b

    .line 510
    or-int/lit8 v0, v0, 0x1

    .line 512
    :cond_b
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 513
    or-int/lit8 v0, v0, 0x2

    .line 515
    :cond_1d
    return v0
.end method

.method public getExtraValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentLayoutID()I
    .registers 4

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, "layout_id":I
    sget-object v1, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 584
    :goto_10
    return v0

    .line 549
    :pswitch_11
    const v0, 0x7f030036

    .line 550
    goto :goto_10

    .line 553
    :pswitch_15
    const v0, 0x7f030035

    .line 554
    goto :goto_10

    .line 557
    :pswitch_19
    const v0, 0x7f030034

    .line 558
    goto :goto_10

    .line 561
    :pswitch_1d
    const v0, 0x7f030033

    .line 562
    goto :goto_10

    .line 565
    :pswitch_21
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 566
    const v0, 0x7f030037

    goto :goto_10

    .line 568
    :cond_2d
    const v0, 0x7f030039

    .line 569
    goto :goto_10

    .line 572
    :pswitch_31
    const v0, 0x7f030030

    .line 573
    goto :goto_10

    .line 576
    :pswitch_35
    const v0, 0x7f03003a

    .line 577
    goto :goto_10

    .line 580
    :pswitch_39
    const v0, 0x7f030031

    goto :goto_10

    .line 543
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_31
        :pswitch_35
        :pswitch_39
    .end packed-switch
.end method

.method public getGroupString(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0801b9

    const v3, 0x7f080190

    const v2, 0x7f080061

    .line 724
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_110

    .line 760
    :pswitch_16
    const-string v0, ""

    :goto_18
    return-object v0

    .line 727
    :pswitch_19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 729
    :pswitch_25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 731
    :pswitch_31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 733
    :pswitch_3d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 735
    :pswitch_49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 737
    :pswitch_55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 739
    :pswitch_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 741
    :pswitch_86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 743
    :pswitch_92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 745
    :pswitch_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 747
    :pswitch_c5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 749
    :pswitch_d2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 751
    :pswitch_df
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 753
    :pswitch_e9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 755
    :pswitch_f6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 757
    :pswitch_103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 724
    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_55
        :pswitch_19
        :pswitch_25
        :pswitch_31
        :pswitch_49
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_f6
        :pswitch_c5
        :pswitch_d2
        :pswitch_103
        :pswitch_16
        :pswitch_86
        :pswitch_92
        :pswitch_9c
        :pswitch_3d
        :pswitch_df
        :pswitch_5e
        :pswitch_16
        :pswitch_16
        :pswitch_e9
    .end packed-switch
.end method

.method public getHintPreferenceKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 716
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 717
    const-string v0, "com.pantech.app.music.preference.hint.show.nowplaying"

    .line 719
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "com.pantech.app.music.preference.hint.show"

    goto :goto_c
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mOrientaion:I

    return v0
.end method

.method public getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    return-object v0
.end method

.method public getQueryLimit()I
    .registers 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 443
    const/16 v0, 0x64

    .line 446
    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public getQueryWhereCondition()Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .registers 3

    .prologue
    .line 451
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getQueryWhereCondition(ZZILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .registers 11
    .param p1, "isMusic"    # Z
    .param p2, "isExcludeDRM"    # Z
    .param p3, "searchMode"    # I
    .param p4, "groupID"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    const-string v5, ""

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getScreenLayout()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mScreenLayout:I

    invoke-static {v0}, Lcom/pantech/app/music/list/PageInfoType;->getScreenLayout(I)I

    move-result v0

    return v0
.end method

.method public getSearchMode()I
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    return v0
.end method

.method public getSelectionManagerType()I
    .registers 2

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    return-object v0
.end method

.method public getTartgetPlaylistID()J
    .registers 3

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    return-wide v0
.end method

.method public getTartgetPlaylistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColumn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0800e9

    .line 765
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_40

    .line 780
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/PageInfoType;->getGroupString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    .line 767
    :sswitch_15
    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 769
    :sswitch_1d
    const v0, 0x7f0800e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 771
    :sswitch_25
    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 773
    :sswitch_2d
    const v0, 0x7f0800e7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 775
    :sswitch_35
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 777
    :sswitch_3a
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 765
    nop

    :sswitch_data_40
    .sparse-switch
        0x6 -> :sswitch_25
        0x7 -> :sswitch_1d
        0x8 -> :sswitch_2d
        0x9 -> :sswitch_15
        0x15 -> :sswitch_35
        0x16 -> :sswitch_3a
    .end sparse-switch
.end method

.method public isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z
    .registers 3
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isCurrentFragment()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mIsCurrentFragment:Z

    return v0
.end method

.method public isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z
    .registers 3
    .param p1, "editMode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFromScretBoxApp()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    return v0
.end method

.method public isLandscape()Z
    .registers 3

    .prologue
    .line 196
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mOrientaion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLargeScreen()Z
    .registers 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getScreenLayout()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isLayerCategory()Z
    .registers 2

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z
    .registers 3
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNotEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z
    .registers 3
    .param p1, "editMode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNotSearchMode(I)Z
    .registers 3
    .param p1, "searchMode"    # I

    .prologue
    .line 278
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPickerMode(Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;)Z
    .registers 3
    .param p1, "type"    # Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {p1, v0}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSearchMode(I)Z
    .registers 3
    .param p1, "searchMode"    # I

    .prologue
    .line 274
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSelectable()Z
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public isUBoxNowplayingList()Z
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mNowplayingCntsType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 365
    const/4 v0, 0x1

    .line 368
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "fromSecretBox":I
    if-lez v0, :cond_56

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 170
    :goto_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mOrientaion:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mNowplayingCntsType:I

    .line 174
    return-void

    .line 168
    :cond_56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    goto :goto_3f
.end method

.method public set(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;ILjava/lang/String;)V
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "editmode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .param p3, "searchMode"    # I
    .param p4, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 179
    iput-object p2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 180
    iput p3, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    .line 181
    iput-object p4, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setCategoryType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 2
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 226
    return-void
.end method

.method public setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V
    .registers 2
    .param p1, "editMode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 254
    return-void
.end method

.method public setExtraValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setFromSecretBox(Z)V
    .registers 2
    .param p1, "val"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    .line 294
    return-void
.end method

.method public setIsCurrentFragment(Z)V
    .registers 2
    .param p1, "isCurrentFragment"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mIsCurrentFragment:Z

    .line 354
    return-void
.end method

.method public setNowplayingCntsType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mNowplayingCntsType:I

    .line 359
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mOrientaion:I

    .line 187
    return-void
.end method

.method public setPickerMode(Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;)V
    .registers 2
    .param p1, "type"    # Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 304
    return-void
.end method

.method public setScreenLayout(I)V
    .registers 2
    .param p1, "screenLayout"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mScreenLayout:I

    .line 202
    return-void
.end method

.method public setSearchMode(I)V
    .registers 2
    .param p1, "searchMode"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    .line 271
    return-void
.end method

.method public setTargetCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 2
    .param p1, "addingPlaylistCategoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 324
    return-void
.end method

.method public setTargetPlaylistID(J)V
    .registers 4
    .param p1, "editPlaylistID"    # J

    .prologue
    .line 333
    iput-wide p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    .line 334
    return-void
.end method

.method public setTargetPlaylistName(Ljava/lang/String;)V
    .registers 2
    .param p1, "editPlaylistName"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " edit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] searchMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPickerMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addingCategory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "msg":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mCategoryType:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mEditMode:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mSearchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-wide v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mTargetPlaylistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mFromSecretBox:Z

    if-eqz v0, :cond_4b

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    :goto_37
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mOrientaion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mPickerMode:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/pantech/app/music/list/PageInfoType;->mNowplayingCntsType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void

    .line 137
    :cond_4b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/PageInfoType;->writeToParcel(Landroid/os/Parcel;)V

    .line 150
    return-void
.end method
