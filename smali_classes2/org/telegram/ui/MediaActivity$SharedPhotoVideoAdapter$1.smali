.class Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    .prologue
    .line 1762
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickItem(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;ILorg/telegram/messenger/MessageObject;I)V
    .registers 6
    .param p1, "cell"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .param p2, "index"    # I
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "a"    # I

    .prologue
    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    invoke-static {v0, p2, p1, p3, p4}, Lorg/telegram/ui/MediaActivity;->access$2800(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    .line 1766
    return-void
.end method

.method public didLongClickItem(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;ILorg/telegram/messenger/MessageObject;I)Z
    .registers 6
    .param p1, "cell"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .param p2, "index"    # I
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "a"    # I

    .prologue
    .line 1770
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    invoke-static {v0, p3, p1, p4}, Lorg/telegram/ui/MediaActivity;->access$3300(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
