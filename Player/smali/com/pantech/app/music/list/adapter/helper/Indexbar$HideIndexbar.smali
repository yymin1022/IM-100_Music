.class public Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;
.super Ljava/lang/Object;
.source "Indexbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/helper/Indexbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HideIndexbar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/adapter/helper/Indexbar;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/adapter/helper/Indexbar;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;->this$0:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;->this$0:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->isTouchDowned()Z

    move-result v0

    if-nez v0, :cond_d

    .line 151
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;->this$0:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->hideScrollBars()V

    .line 153
    :cond_d
    return-void
.end method
