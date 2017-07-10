.class Lorg/telegram/ui/PhotoViewer$32;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2115
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptionEnter()V
    .registers 3

    .prologue
    .line 2118
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4200(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 2119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2123
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    .line 2124
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getCursorPosition()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2126
    :cond_39
    return-void
.end method

.method public onWindowSizeChanged(I)V
    .registers 8
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 2130
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v3, v1, 0x24

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v1

    if-le v1, v4, :cond_54

    const/16 v1, 0x12

    :goto_21
    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2131
    .local v0, "height":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    if-ge v1, v0, :cond_56

    .line 2132
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->allowMentions:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$9802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2133
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_53

    .line 2134
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2142
    :cond_53
    :goto_53
    return-void

    .end local v0    # "height":I
    :cond_54
    move v1, v2

    .line 2130
    goto :goto_21

    .line 2137
    .restart local v0    # "height":I
    :cond_56
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->allowMentions:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/PhotoViewer;->access$9802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2138
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_53

    .line 2139
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_53
.end method
