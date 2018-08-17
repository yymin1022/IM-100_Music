.class Lcom/pantech/app/music/service/MusicPlaybackService$2;
.super Landroid/os/AsyncTask;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;->handleMessageForMediaPlayer(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 517
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$2;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 517
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$2;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$100(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 522
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$2;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$200(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    return-object v0
.end method
