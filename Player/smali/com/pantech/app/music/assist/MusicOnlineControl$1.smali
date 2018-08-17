.class Lcom/pantech/app/music/assist/MusicOnlineControl$1;
.super Ljava/lang/Object;
.source "MusicOnlineControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/assist/MusicOnlineControl;->Show3gPopupWarningAndStartOnlineService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicOnlineControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicOnlineControl;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicOnlineControl$1;->this$0:Lcom/pantech/app/music/assist/MusicOnlineControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl$1;->this$0:Lcom/pantech/app/music/assist/MusicOnlineControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicOnlineControl;->access$000(Lcom/pantech/app/music/assist/MusicOnlineControl;)V

    .line 148
    return-void
.end method
