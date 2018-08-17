.class public Lcom/pantech/app/music/list/module/ShareUTubeVideo;
.super Ljava/lang/Object;
.source "ShareUTubeVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mSelectContentsInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V
    .registers 4
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "selectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .param p3, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 24
    iput-object p2, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mSelectContentsInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .line 26
    iput-object p3, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "query"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mSelectContentsInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    iget-object v3, v3, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v3, v3, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mSelectContentsInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    iget-object v3, v3, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v3, v3, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "android.intent.extra.artist"

    iget-object v2, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mSelectContentsInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "android.intent.extra.title"

    iget-object v2, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mSelectContentsInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 42
    iget-object v1, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    iget-object v1, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v5, v2, v6}, Lcom/pantech/app/music/list/listener/ISelectMenuCallback;->onSelectMenuResult(IZLjava/lang/Object;)V

    .line 49
    :goto_73
    return-void

    .line 47
    :cond_74
    iget-object v1, p0, Lcom/pantech/app/music/list/module/ShareUTubeVideo;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    invoke-interface {v1, v5, v4, v6}, Lcom/pantech/app/music/list/listener/ISelectMenuCallback;->onSelectMenuResult(IZLjava/lang/Object;)V

    goto :goto_73
.end method
