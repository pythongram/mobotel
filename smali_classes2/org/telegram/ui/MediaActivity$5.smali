.class Lorg/telegram/ui/MediaActivity$5;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


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
    .line 696
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$5;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$5;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$5;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    :cond_13
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_24

    .line 700
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$5;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    invoke-static {v1, p2, p1, v0, v2}, Lorg/telegram/ui/MediaActivity;->access$2800(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    .line 704
    :cond_23
    :goto_23
    return-void

    .line 701
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$5;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v0, :cond_23

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$5;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    invoke-static {v1, p2, p1, v0, v2}, Lorg/telegram/ui/MediaActivity;->access$2800(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    goto :goto_23
.end method
