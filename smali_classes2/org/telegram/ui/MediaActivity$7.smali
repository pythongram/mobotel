.class Lorg/telegram/ui/MediaActivity$7;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 747
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 750
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_25

    :cond_13
    instance-of v3, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_25

    move-object v0, p1

    .line 751
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 752
    .local v0, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 753
    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    invoke-static {v3, v1, p1, v2}, Lorg/telegram/ui/MediaActivity;->access$3300(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v2

    .line 759
    .end local v0    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    .end local v1    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_24
    :goto_24
    return v2

    .line 754
    :cond_25
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_24

    instance-of v3, p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v3, :cond_24

    move-object v0, p1

    .line 755
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 756
    .local v0, "cell":Lorg/telegram/ui/Cells/SharedLinkCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 757
    .restart local v1    # "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    invoke-static {v3, v1, p1, v2}, Lorg/telegram/ui/MediaActivity;->access$3300(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v2

    goto :goto_24
.end method
