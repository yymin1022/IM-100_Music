.class public Lcom/pantech/app/music/list/module/RemovingEmptyGenres;
.super Ljava/lang/Object;
.source "RemovingEmptyGenres.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mCursor:Landroid/database/Cursor;

.field mCursorLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/database/Cursor;Ljava/lang/Object;)V
    .registers 5
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 20
    invoke-static {p2, p3}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;->mCursor:Landroid/database/Cursor;

    .line 21
    if-nez p3, :cond_12

    new-instance p3, Ljava/lang/Object;

    .end local p3    # "cursorLock":Ljava/lang/Object;
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    :cond_12
    iput-object p3, p0, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;->mCursorLock:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;->mCursorLock:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteEmptyGenres(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Object;)I

    .line 29
    return-void
.end method
