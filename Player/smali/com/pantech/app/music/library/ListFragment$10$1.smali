.class Lcom/pantech/app/music/library/ListFragment$10$1;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment$10;->onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/ListFragment$10;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment$10;)V
    .registers 2

    .prologue
    .line 917
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$10$1;->this$1:Lcom/pantech/app/music/library/ListFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method
