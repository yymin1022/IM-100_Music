.class public Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
.super Ljava/lang/Object;
.source "DBProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/helper/DBProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryInfo"
.end annotation


# instance fields
.field public mContentUri:Landroid/net/Uri;

.field public mProjection:[Ljava/lang/String;

.field public mSelection:Ljava/lang/String;

.field public mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    .line 71
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    .line 74
    return-void
.end method
