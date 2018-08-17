.class public Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;
.super Ljava/lang/Object;
.source "DBInterfaceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/DBInterfaceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryInfo"
.end annotation


# instance fields
.field projection:[Ljava/lang/String;

.field selection:Ljava/lang/String;

.field sortOrder:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/list/db/DBInterfaceHelper;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/db/DBInterfaceHelper;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->this$0:Lcom/pantech/app/music/list/db/DBInterfaceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->uri:Landroid/net/Uri;

    .line 722
    iput-object p3, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->selection:Ljava/lang/String;

    .line 723
    iput-object p4, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->projection:[Ljava/lang/String;

    .line 724
    iput-object p5, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->sortOrder:Ljava/lang/String;

    .line 725
    return-void
.end method


# virtual methods
.method public getBaseUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->sortOrder:Ljava/lang/String;

    return-object v0
.end method
