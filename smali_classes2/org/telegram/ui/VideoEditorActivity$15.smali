.class Lorg/telegram/ui/VideoEditorActivity$15;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private location:[I

.field private previousSize:I

.field private previousY:I

.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 1000
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$15;->location:[I

    return-void
.end method


# virtual methods
.method public onCaptionEnter()V
    .registers 3

    .prologue
    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->closeCaptionEnter(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1700(Lorg/telegram/ui/VideoEditorActivity;Z)V

    .line 1009
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$4800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getCursorPosition()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$4800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1016
    :cond_39
    return-void
.end method

.method public onWindowSizeChanged(I)V
    .registers 9
    .param p1, "size"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1020
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v3, v1, 0x24

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v1

    if-le v1, v5, :cond_7d

    const/16 v1, 0x12

    :goto_22
    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1021
    .local v0, "height":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    if-ge v1, v0, :cond_7f

    .line 1022
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$4902(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 1023
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_54

    .line 1024
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1032
    :cond_54
    :goto_54
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$15;->location:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1033
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->previousSize:I

    if-ne v1, p1, :cond_6b

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->previousY:I

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$15;->location:[I

    aget v2, v2, v4

    if-eq v1, v2, :cond_7c

    .line 1034
    :cond_6b
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1035
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->previousSize:I

    .line 1036
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->location:[I

    aget v1, v1, v4

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->previousY:I

    .line 1038
    :cond_7c
    return-void

    .end local v0    # "height":I
    :cond_7d
    move v1, v2

    .line 1020
    goto :goto_22

    .line 1027
    .restart local v0    # "height":I
    :cond_7f
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$4902(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 1028
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_54

    .line 1029
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$15;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_54
.end method
