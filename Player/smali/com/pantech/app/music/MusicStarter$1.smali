.class Lcom/pantech/app/music/MusicStarter$1;
.super Ljava/lang/Object;
.source "MusicStarter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/MusicStarter;->MusicStater_Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/MusicStarter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/MusicStarter;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/pantech/app/music/MusicStarter$1;->this$0:Lcom/pantech/app/music/MusicStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/pantech/app/music/MusicStarter$1;->this$0:Lcom/pantech/app/music/MusicStarter;

    invoke-virtual {v0}, Lcom/pantech/app/music/MusicStarter;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/pantech/app/music/MusicStarter$1;->this$0:Lcom/pantech/app/music/MusicStarter;

    invoke-virtual {v0}, Lcom/pantech/app/music/MusicStarter;->finish()V

    .line 229
    :cond_d
    return-void
.end method
