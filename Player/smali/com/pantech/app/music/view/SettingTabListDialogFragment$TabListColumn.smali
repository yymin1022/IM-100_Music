.class public interface abstract Lcom/pantech/app/music/view/SettingTabListDialogFragment$TabListColumn;
.super Ljava/lang/Object;
.source "SettingTabListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SettingTabListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabListColumn"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final TABNAME:Ljava/lang/String; = "_tabname"

.field public static final TABSELECT:Ljava/lang/String; = "_tabselect"

.field public static final _COL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_tabname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_tabselect"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$TabListColumn;->_COL:[Ljava/lang/String;

    return-void
.end method
