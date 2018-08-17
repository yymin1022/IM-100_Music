.class Lcom/pantech/app/music/properties/MusicPropertiesActivity$1;
.super Ljava/lang/Object;
.source "MusicPropertiesActivity.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/properties/MusicPropertiesActivity;->updateHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$1;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 5
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 215
    const-string v1, "MusicPropActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlbumArtExtracted() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string v0, "getAlbumArt  NULL!!!"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 217
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$1;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    .line 218
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$1;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAlbumart:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$1;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v1, v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    :cond_39
    return-void

    .line 215
    :cond_3a
    const-string v0, "getAlbumArt  Success!!!"

    goto :goto_15
.end method
