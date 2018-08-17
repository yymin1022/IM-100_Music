.class Lcom/pantech/app/music/view/SkyMusicPopupList$1;
.super Ljava/util/TimerTask;
.source "SkyMusicPopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyMusicPopupList;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyMusicPopupList;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyMusicPopupList;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyMusicPopupList$1;->this$0:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList$1;->this$0:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 100
    return-void
.end method
