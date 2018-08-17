.class public Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;
.super Ljava/lang/Object;
.source "UBoxAlbumartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UBoxAlbumartParam"
.end annotation


# instance fields
.field public szKey:Ljava/lang/String;

.field public szURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;->szURL:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;->szKey:Ljava/lang/String;

    .line 43
    return-void
.end method
