.class public final Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox;
.super Ljava/lang/Object;
.source "MusicDBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicDBStore$Cloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UPlusBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Playlist;,
        Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;,
        Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$UPlusBoxMapColumns;,
        Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$UPlusBoxColumns;
    }
.end annotation


# static fields
.field public static final PathName:Ljava/lang/String; = "uplusBox"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method
