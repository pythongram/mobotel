.class Lorg/telegram/ui/ChannelCreateActivity$13$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$13;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$13;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelCreateActivity$13;

    .prologue
    .line 745
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 748
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z
    invoke-static {v3, v5}, Lorg/telegram/ui/ChannelCreateActivity;->access$2302(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 749
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_16

    .line 750
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_17

    .line 807
    :cond_16
    :goto_16
    return-void

    .line 753
    :cond_17
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_18
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 754
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 756
    :cond_42
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 757
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 759
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_chats;
    const/4 v0, 0x0

    :goto_52
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a4

    .line 760
    new-instance v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;-><init>(Lorg/telegram/ui/ChannelCreateActivity$13$1;)V

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 801
    .local v1, "adminedChannelCell":Lorg/telegram/ui/Cells/AdminedChannelCell;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_a2

    const/4 v4, 0x1

    :goto_7f
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 802
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, -0x1

    const/16 v6, 0x48

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_a2
    move v4, v5

    .line 801
    goto :goto_7f

    .line 805
    .end local v1    # "adminedChannelCell":Lorg/telegram/ui/Cells/AdminedChannelCell;
    :cond_a4
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # invokes: Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$1800(Lorg/telegram/ui/ChannelCreateActivity;)V

    goto/16 :goto_16
.end method
