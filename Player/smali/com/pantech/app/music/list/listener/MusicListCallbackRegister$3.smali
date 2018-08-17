.class Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$3;
.super Landroid/database/ContentObserver;
.source "MusicListCallbackRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$3;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$3;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;->onContentsDBChanged(ZLandroid/net/Uri;)V

    .line 140
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 141
    return-void
.end method
