.class Lorg/telegram/ui/ChatActivity$52;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 3691
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(I)V
    .registers 20
    .param p1, "button"    # I

    .prologue
    .line 3694
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_b

    .line 3729
    :cond_a
    :goto_a
    return-void

    .line 3697
    :cond_b
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_10d

    .line 3698
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 3699
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v17

    .line 3700
    .local v17, "selectedPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3701
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3702
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3703
    .local v7, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3704
    .local v8, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_de

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 3705
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3706
    .local v16, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_a5

    .line 3707
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3708
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a1

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_71
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3709
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a3

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_87
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3715
    :cond_8a
    :goto_8a
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 3716
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 3717
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 3718
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_44

    .line 3708
    :cond_a1
    const/4 v3, 0x0

    goto :goto_71

    .line 3709
    :cond_a3
    const/4 v3, 0x0

    goto :goto_87

    .line 3710
    :cond_a5
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_8a

    .line 3711
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3712
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_da

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_c0
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3713
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_dc

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_d6
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 3712
    :cond_da
    const/4 v3, 0x0

    goto :goto_c0

    .line 3713
    :cond_dc
    const/4 v3, 0x0

    goto :goto_d6

    .line 3720
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v16    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_de
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 3721
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 3722
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_a

    .line 3725
    .end local v2    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    .end local v17    # "selectedPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    :cond_10d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    if-eqz v3, :cond_124

    .line 3726
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissWithButtonClick(I)V

    .line 3728
    :cond_124
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    move/from16 v0, p1

    # invokes: Lorg/telegram/ui/ChatActivity;->processSelectedAttach(I)V
    invoke-static {v3, v0}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;I)V

    goto/16 :goto_a
.end method

.method public didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 5
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 3738
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 3743
    :cond_12
    :goto_12
    return-void

    .line 3741
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 3742
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_12
.end method

.method public getRevealView()Landroid/view/View;
    .registers 2

    .prologue
    .line 3733
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAttachButton()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public onCameraOpened()V
    .registers 2

    .prologue
    .line 3747
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 3748
    return-void
.end method
