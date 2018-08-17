.class Lcom/pantech/app/music/library/activity/ListBaseActivity$2;
.super Ljava/lang/Object;
.source "ListBaseActivity.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListMiniPlayer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ListBaseActivity;->attachMiniPlayer(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;)V
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNowPlayingButtonClicked()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->doMiniPlayerButton()V

    .line 336
    return-void
.end method
