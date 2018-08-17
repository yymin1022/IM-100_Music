.class public Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicPropertiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/properties/MusicPropertiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field layout:Landroid/widget/LinearLayout;

.field mainText:Landroid/widget/TextView;

.field rating:[Landroid/widget/ImageView;

.field subText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/properties/MusicPropertiesAdapter;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
