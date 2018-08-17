.class Lcom/pantech/app/music/component/ExtendCursorLoader$1;
.super Landroid/database/ContentObserver;
.source "ExtendCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/component/ExtendCursorLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/component/ExtendCursorLoader;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/component/ExtendCursorLoader;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pantech/app/music/component/ExtendCursorLoader$1;->this$0:Lcom/pantech/app/music/component/ExtendCursorLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pantech/app/music/component/ExtendCursorLoader$1;->this$0:Lcom/pantech/app/music/component/ExtendCursorLoader;

    iput-object p2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mChangedUri:Landroid/net/Uri;

    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/component/ExtendCursorLoader$1;->this$0:Lcom/pantech/app/music/component/ExtendCursorLoader;

    iget-object v0, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/component/ExtendCursorLoader$1;->this$0:Lcom/pantech/app/music/component/ExtendCursorLoader;

    iget-object v1, v1, Lcom/pantech/app/music/component/ExtendCursorLoader;->mChangedUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 92
    invoke-static {}, Lcom/pantech/app/music/library/helper/DuplicateHelper;->clearCursor()V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/component/ExtendCursorLoader$1;->this$0:Lcom/pantech/app/music/component/ExtendCursorLoader;

    invoke-virtual {v0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->forceLoad()V

    .line 95
    :cond_22
    return-void
.end method
