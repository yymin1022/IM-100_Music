.class public Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CircularArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/pantech/app/music/list/MusicItemInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CircularArrayAdapter"


# instance fields
.field private itemlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    iput-object p3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->itemlist:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method
