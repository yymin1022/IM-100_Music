.class public final Lcom/pantech/app/music/db/MusicDBStore$Setting;
.super Ljava/lang/Object;
.source "MusicDBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicDBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# static fields
.field public static final PathName:Ljava/lang/String; = "setting"

.field public static final SettingTitleAsFileName:Ljava/lang/String; = "titleAsFilename"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 136
    const-string v0, "content://com.pantech.app.music.db.common/setting/titleAsFilename"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
