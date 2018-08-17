.class Lcom/pantech/app/music/properties/MusicPropertiesActivity$3;
.super Ljava/lang/Object;
.source "MusicPropertiesActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/properties/MusicPropertiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V
    .registers 2

    .prologue
    .line 402
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$3;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "classname"    # Landroid/content/ComponentName;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 406
    const-string v0, "VMusicTagEdit"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$3;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$202(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 409
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "classname"    # Landroid/content/ComponentName;

    .prologue
    .line 413
    const-string v0, "VMusicTagEdit"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$3;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$202(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 415
    return-void
.end method
