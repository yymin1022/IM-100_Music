.class public Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ListEvent;
.super Ljava/lang/Object;
.source "FragmentMainHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/FragmentMainHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListEvent"
.end annotation


# static fields
.field public static final HANDLER_QUIT_SYNC:I = 0x1

.field public static final INVALIDATE_VIEWS:I = 0x4

.field public static final RESTORE_HIERARCHY_STATE:I = 0x3

.field public static final TOUCH_LOCK_FREE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
