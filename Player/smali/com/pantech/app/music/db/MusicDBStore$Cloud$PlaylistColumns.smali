.class public interface abstract Lcom/pantech/app/music/db/MusicDBStore$Cloud$PlaylistColumns;
.super Ljava/lang/Object;
.source "MusicDBStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicDBStore$Cloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaylistColumns"
.end annotation


# static fields
.field public static final PLAYLIST_ADDED:Ljava/lang/String; = "data_added"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "_id"

.field public static final PLAYLIST_MODIFIED:Ljava/lang/String; = "data_modified"

.field public static final PLAYLIST_NAME:Ljava/lang/String; = "playlist_name"
