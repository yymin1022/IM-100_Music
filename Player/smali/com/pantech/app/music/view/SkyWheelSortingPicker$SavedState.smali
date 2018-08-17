.class Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SkyWheelSortingPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SkyWheelSortingPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMainType:I

.field private final mSubType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 264
    new-instance v0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState$1;

    invoke-direct {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mMainType:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mSubType:I

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/app/music/view/SkyWheelSortingPicker$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/pantech/app/music/view/SkyWheelSortingPicker$1;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .registers 4
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "mainType"    # I
    .param p3, "subType"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 238
    iput p2, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mMainType:I

    .line 239
    iput p3, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mSubType:I

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/pantech/app/music/view/SkyWheelSortingPicker$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/pantech/app/music/view/SkyWheelSortingPicker$1;

    .prologue
    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getMainType()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mMainType:I

    return v0
.end method

.method public getSubType()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mSubType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 258
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 259
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mMainType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->mSubType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return-void
.end method
