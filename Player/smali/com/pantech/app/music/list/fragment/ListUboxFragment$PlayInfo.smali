.class Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayInfo"
.end annotation


# instance fields
.field mPlayCursor:Landroid/database/Cursor;

.field mPlayPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;->mPlayCursor:Landroid/database/Cursor;

    .line 93
    iput p2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;->mPlayPosition:I

    .line 94
    return-void
.end method
