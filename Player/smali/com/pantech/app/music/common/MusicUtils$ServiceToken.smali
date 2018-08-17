.class public Lcom/pantech/app/music/common/MusicUtils$ServiceToken;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/common/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceToken"
.end annotation


# instance fields
.field mWrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 2
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/pantech/app/music/common/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 43
    return-void
.end method
