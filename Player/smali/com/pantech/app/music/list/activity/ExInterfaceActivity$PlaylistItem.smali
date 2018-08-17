.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaylistItem"
.end annotation


# instance fields
.field public mId:I

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;ILjava/lang/String;)V
    .registers 4
    .param p2, "_id"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;->mTitle:Ljava/lang/String;

    .line 876
    iput p2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;->mId:I

    .line 877
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
