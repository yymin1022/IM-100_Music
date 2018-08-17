.class Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "APAsyncQueryHandler"
.end annotation


# instance fields
.field reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/player/AudioPreview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/player/AudioPreview;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "audioPreview"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1108
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1109
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 1110
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1114
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 1116
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/AudioPreview;

    .line 1117
    .local v0, "audioPreview":Lcom/pantech/app/music/player/AudioPreview;
    if-eqz v0, :cond_10

    .line 1118
    invoke-static {v0, p1, p2, p3}, Lcom/pantech/app/music/player/AudioPreview;->access$1100(Lcom/pantech/app/music/player/AudioPreview;ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 1120
    :cond_10
    return-void
.end method
