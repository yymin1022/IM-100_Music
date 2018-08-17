.class public Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;
.super Ljava/lang/Object;
.source "QueryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryParam"
.end annotation


# instance fields
.field public cursor:Landroid/database/Cursor;

.field public mCondition:Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

.field public mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

.field public mLimit:I

.field public mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field public mPriority:I

.field public mQueryCompleteListener:Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;


# direct methods
.method public constructor <init>(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V
    .registers 8
    .param p1, "priority"    # I
    .param p2, "IFragment"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "condition"    # Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .param p5, "limit"    # I
    .param p6, "listener"    # Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPriority:I

    .line 55
    iput v0, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mLimit:I

    .line 63
    iput p1, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPriority:I

    .line 64
    iput-object p3, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 65
    iput-object p4, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mCondition:Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    .line 66
    iput p5, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mLimit:I

    .line 67
    iput-object p6, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mQueryCompleteListener:Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;

    .line 68
    iput-object p2, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 69
    return-void
.end method
