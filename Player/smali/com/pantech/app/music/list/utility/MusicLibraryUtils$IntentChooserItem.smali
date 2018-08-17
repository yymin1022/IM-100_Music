.class public Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;
.super Ljava/lang/Object;
.source "MusicLibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/utility/MusicLibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentChooserItem"
.end annotation


# instance fields
.field public mActivityIcon:Landroid/graphics/drawable/Drawable;

.field public mActivityLabel:Ljava/lang/String;

.field public mResolveIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .registers 4
    .param p1, "szLabel"    # Ljava/lang/String;
    .param p2, "mIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mIntent"    # Landroid/content/Intent;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;->mActivityLabel:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;->mActivityIcon:Landroid/graphics/drawable/Drawable;

    .line 313
    iput-object p3, p0, Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;->mResolveIntent:Landroid/content/Intent;

    .line 314
    return-void
.end method
