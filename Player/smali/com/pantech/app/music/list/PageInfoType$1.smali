.class final Lcom/pantech/app/music/list/PageInfoType$1;
.super Ljava/lang/Object;
.source "PageInfoType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/PageInfoType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pantech/app/music/list/PageInfoType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/music/list/PageInfoType;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 107
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Landroid/os/Parcel;Lcom/pantech/app/music/list/PageInfoType$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/PageInfoType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pantech/app/music/list/PageInfoType;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 113
    new-array v0, p1, [Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/PageInfoType$1;->newArray(I)[Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    return-object v0
.end method
