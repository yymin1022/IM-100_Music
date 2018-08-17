.class public Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;
.super Ljava/lang/Object;
.source "PlayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakePlayInfoParam"
.end annotation


# instance fields
.field public mCallerType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

.field public mCursor:Landroid/database/Cursor;

.field public mCursorLock:Ljava/lang/Object;

.field public mIntentFlag:I

.field public mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field public mPlayCallback:Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

.field public mPlayType:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

.field public mPosition:I

.field public mStartMediaID:J

.field public mStartPlayer:Z


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;ILcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZLcom/pantech/app/music/list/module/PlayInterface$PlayType;ILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V
    .registers 16
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursorLock"    # Ljava/lang/Object;
    .param p4, "startPosition"    # I
    .param p5, "callerType"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .param p6, "startPlayback"    # Z
    .param p7, "type"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayType;
    .param p8, "intentFlag"    # I
    .param p9, "callback"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 346
    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    .line 347
    if-nez p3, :cond_e

    new-instance p3, Ljava/lang/Object;

    .end local p3    # "cursorLock":Ljava/lang/Object;
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    :cond_e
    iput-object p3, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    .line 348
    iput p4, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPosition:I

    .line 349
    iput p8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mIntentFlag:I

    .line 350
    iput-object p7, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayType:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    .line 351
    iput-object p5, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCallerType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 352
    iput-boolean p6, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mStartPlayer:Z

    .line 353
    iput-object p9, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayCallback:Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

    .line 355
    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_42

    if-eqz p4, :cond_42

    .line 357
    iget-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_25
    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 360
    .local v0, "tmpCursorPosition":I
    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 361
    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iget-object v3, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mStartMediaID:J

    .line 362
    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 363
    monitor-exit v2

    .line 365
    .end local v0    # "tmpCursorPosition":I
    :cond_42
    return-void

    .line 363
    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public constructor <init>(Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;Z)V
    .registers 7
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "callerType"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .param p3, "startPlayback"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 321
    iput-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    .line 322
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    .line 323
    iput v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPosition:I

    .line 324
    iput v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mIntentFlag:I

    .line 325
    sget-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    iput-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayType:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    .line 326
    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCallerType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 327
    iput-boolean p3, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mStartPlayer:Z

    .line 328
    iput-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayCallback:Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

    .line 341
    return-void
.end method
