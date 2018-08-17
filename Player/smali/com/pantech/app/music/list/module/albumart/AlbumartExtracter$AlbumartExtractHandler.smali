.class public Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;
.super Landroid/os/Handler;
.source "AlbumartExtracter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumartExtractHandler"
.end annotation


# static fields
.field static final EVENT_EXTRACT_ALBUMART:I = 0x2

.field static final EVENT_EXTRACT_ALL_ALBUMARTS:I = 0x5

.field static final EVENT_EXTRACT_UBOX_ALBUMART:I = 0x4

.field static final EVENT_EXTRACT_UBOX_ALL_ALBUMARTS:I = 0x6

.field static final EVENT_QUIT:I = 0x1

.field static final UIMAIN_EVENT_ALBUMART_DEFAULT:I = 0x1


# instance fields
.field mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mMainHandler:Landroid/os/Handler;

.field mQueueID:I

.field final synthetic this$0:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;Landroid/content/Context;Landroid/os/Looper;I)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "id"    # I

    .prologue
    .line 810
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->this$0:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    .line 812
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 801
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->mQueueID:I

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 814
    iput p4, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->mQueueID:I

    .line 816
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 818
    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler$1;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler$1;-><init>(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;Landroid/os/Looper;Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->mMainHandler:Landroid/os/Handler;

    .line 847
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 853
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 991
    return-void
.end method
