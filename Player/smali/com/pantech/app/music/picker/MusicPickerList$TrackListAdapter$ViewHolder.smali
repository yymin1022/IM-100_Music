.class Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicPickerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field idx:I

.field imgBtn:Landroid/widget/ImageView;

.field imgBtnGroup:Landroid/view/ViewGroup;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
