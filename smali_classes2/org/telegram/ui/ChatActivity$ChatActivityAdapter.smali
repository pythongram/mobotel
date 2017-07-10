.class public Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$Holder;
    }
.end annotation


# instance fields
.field private botInfoRow:I

.field private isBot:Z

.field private loadingDownRow:I

.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field private messagesStartRow:I

.field private rowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 10097
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 10091
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 10098
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    .line 10099
    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    .line 10100
    return-void

    .line 10099
    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic access$14400(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10086
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    return v0
.end method

.method static synthetic access$15400(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10086
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    return v0
.end method

.method static synthetic access$18000(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10086
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10086
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 10140
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 10145
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 10688
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_24

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_24

    .line 10689
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 10693
    :goto_23
    return v0

    .line 10690
    :cond_24
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne p1, v0, :cond_2a

    .line 10691
    const/4 v0, 0x3

    goto :goto_23

    .line 10693
    :cond_2a
    const/4 v0, 0x4

    goto :goto_23
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 10750
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10752
    :try_start_3
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10756
    :goto_6
    return-void

    .line 10753
    :catch_7
    move-exception v0

    .line 10754
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemChanged(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 10760
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10762
    :try_start_3
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10766
    :goto_6
    return-void

    .line 10763
    :catch_7
    move-exception v0

    .line 10764
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemInserted(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 10780
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10782
    :try_start_3
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10786
    :goto_6
    return-void

    .line 10783
    :catch_7
    move-exception v0

    .line 10784
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemMoved(II)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 10790
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10792
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10796
    :goto_6
    return-void

    .line 10793
    :catch_7
    move-exception v0

    .line 10794
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRangeChanged(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 10770
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10772
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10776
    :goto_6
    return-void

    .line 10773
    :catch_7
    move-exception v0

    .line 10774
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRangeInserted(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 10800
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10802
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10806
    :goto_6
    return-void

    .line 10803
    :catch_7
    move-exception v0

    .line 10804
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRangeRemoved(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 10820
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10822
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10826
    :goto_6
    return-void

    .line 10823
    :catch_7
    move-exception v0

    .line 10824
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRemoved(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 10810
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10812
    :try_start_3
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 10816
    :goto_6
    return-void

    .line 10813
    :catch_7
    move-exception v0

    .line 10814
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 24
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 10577
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_57

    .line 10578
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 10579
    .local v4, "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->botInfo:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->botInfo:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_4e
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(Ljava/lang/String;)V

    .line 10684
    .end local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_53
    :goto_53
    return-void

    .line 10579
    .restart local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_54
    const/16 v17, 0x0

    goto :goto_4e

    .line 10580
    .end local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_57
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_6f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_92

    .line 10581
    :cond_6f
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 10582
    .local v6, "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->loadsCount:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8f

    const/16 v17, 0x1

    :goto_89
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    goto :goto_53

    :cond_8f
    const/16 v17, 0x0

    goto :goto_89

    .line 10583
    .end local v6    # "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    :cond_92
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-lt v0, v1, :cond_53

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ge v0, v1, :cond_53

    .line 10584
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v19, v0

    sub-int v19, p2, v19

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 10585
    .local v7, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 10587
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v17, v0

    if-eqz v17, :cond_33c

    move-object/from16 v8, v16

    .line 10588
    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 10589
    .local v8, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_321

    const/16 v17, 0x1

    :goto_fa
    move/from16 v0, v17

    iput-boolean v0, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 10590
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v10

    .line 10591
    .local v10, "nextType":I
    add-int/lit8 v17, p2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v14

    .line 10594
    .local v14, "prevType":I
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    move/from16 v17, v0

    if-nez v17, :cond_328

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v17

    move/from16 v0, v17

    if-ne v10, v0, :cond_328

    .line 10595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v19, p2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 10596
    .local v9, "nextMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v17

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_325

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_192

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a0

    :cond_192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-nez v17, :cond_325

    :cond_1a0
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_325

    const/4 v11, 0x1

    .line 10600
    .end local v9    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    .local v11, "pinnedBotton":Z
    :goto_1c3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v17

    move/from16 v0, v17

    if-ne v14, v0, :cond_32e

    .line 10601
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v19, v0

    sub-int v19, p2, v19

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 10602
    .local v13, "prevMessage":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    move/from16 v17, v0

    if-nez v17, :cond_32b

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v17

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_32b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23f

    iget-object v0, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_24d

    :cond_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-nez v17, :cond_32b

    :cond_24d
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_32b

    const/4 v12, 0x1

    .line 10606
    .end local v13    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    .local v12, "pinnedTop":Z
    :goto_270
    invoke-virtual {v8, v7, v11, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 10607
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v17, v0

    if-eqz v17, :cond_28c

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v17

    if-eqz v17, :cond_28c

    .line 10608
    check-cast v16, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v16    # "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->downloadAudioIfNeed()V

    .line 10610
    :cond_28c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_331

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_331

    const/16 v17, 0x1

    :goto_2b5
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 10611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->searchContainer:Landroid/widget/FrameLayout;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v17

    if-eqz v17, :cond_334

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->searchContainer:Landroid/widget/FrameLayout;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_334

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_334

    .line 10612
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    .line 10617
    :goto_2e5
    sget-boolean v17, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v17, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_53

    .line 10618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10619
    move-object v3, v8

    .line 10620
    .local v3, "animatingView":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v17

    new-instance v18, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_53

    .line 10589
    .end local v3    # "animatingView":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v5    # "index":I
    .end local v10    # "nextType":I
    .end local v11    # "pinnedBotton":Z
    .end local v12    # "pinnedTop":Z
    .end local v14    # "prevType":I
    .restart local v16    # "view":Landroid/view/View;
    :cond_321
    const/16 v17, 0x0

    goto/16 :goto_fa

    .line 10596
    .restart local v9    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v10    # "nextType":I
    .restart local v14    # "prevType":I
    :cond_325
    const/4 v11, 0x0

    goto/16 :goto_1c3

    .line 10598
    .end local v9    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    :cond_328
    const/4 v11, 0x0

    .restart local v11    # "pinnedBotton":Z
    goto/16 :goto_1c3

    .line 10602
    .restart local v13    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    :cond_32b
    const/4 v12, 0x0

    goto/16 :goto_270

    .line 10604
    .end local v13    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    :cond_32e
    const/4 v12, 0x0

    .restart local v12    # "pinnedTop":Z
    goto/16 :goto_270

    .line 10610
    .end local v16    # "view":Landroid/view/View;
    :cond_331
    const/16 v17, 0x0

    goto :goto_2b5

    .line 10614
    :cond_334
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto :goto_2e5

    .line 10672
    .end local v8    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v10    # "nextType":I
    .end local v11    # "pinnedBotton":Z
    .end local v12    # "pinnedTop":Z
    .end local v14    # "prevType":I
    .restart local v16    # "view":Landroid/view/View;
    :cond_33c
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    move/from16 v17, v0

    if-eqz v17, :cond_354

    move-object/from16 v2, v16

    .line 10673
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 10674
    .local v2, "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 10675
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setAlpha(F)V

    goto/16 :goto_53

    .line 10676
    .end local v2    # "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    :cond_354
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatUnreadCell;

    move/from16 v17, v0

    if-eqz v17, :cond_53

    move-object/from16 v15, v16

    .line 10677
    check-cast v15, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .line 10678
    .local v15, "unreadCell":Lorg/telegram/ui/Cells/ChatUnreadCell;
    const-string v17, "NewMessages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->unread_to_load:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Cells/ChatUnreadCell;->setText(Ljava/lang/String;)V

    .line 10679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->createUnreadMessageAfterId:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    if-eqz v17, :cond_53

    .line 10680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->createUnreadMessageAfterId:I
    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/ChatActivity;->access$10102(Lorg/telegram/ui/ChatActivity;I)I

    goto/16 :goto_53
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10150
    const/4 v1, 0x0

    .line 10151
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_52

    .line 10152
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 10153
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "view":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 10154
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_26
    move-object v0, v1

    .line 10158
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 10159
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 10490
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_3a

    .line 10491
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    .line 10571
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_3a
    :goto_3a
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10572
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 10156
    :cond_4a
    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_26

    .line 10493
    :cond_52
    if-ne p2, v4, :cond_67

    .line 10494
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 10495
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_3a

    .line 10550
    :cond_67
    const/4 v2, 0x2

    if-ne p2, v2, :cond_72

    .line 10551
    new-instance v1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_3a

    .line 10552
    :cond_72
    const/4 v2, 0x3

    if-ne p2, v2, :cond_88

    .line 10553
    new-instance v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/BotHelpCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 10554
    check-cast v2, Lorg/telegram/ui/Cells/BotHelpCell;

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V

    goto :goto_3a

    .line 10568
    :cond_88
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3a

    .line 10569
    new-instance v1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_3a
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10698
    iget-object v5, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_94

    .line 10699
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 10700
    .local v2, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 10702
    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x0

    .line 10703
    .local v4, "selected":Z
    const/4 v0, 0x0

    .line 10704
    .local v0, "disableSelection":Z
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 10705
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_95

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 10706
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_2d
    if-eq v3, v1, :cond_54

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-nez v5, :cond_97

    move v5, v6

    :goto_44
    aget-object v5, v9, v5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 10707
    :cond_54
    const-string v5, "chat_selectedBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setBackgroundColor(I)V

    .line 10708
    const/4 v4, 0x1

    .line 10712
    :goto_5e
    const/4 v0, 0x1

    .line 10716
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_5f
    if-nez v0, :cond_a1

    move v8, v7

    :goto_62
    if-eqz v0, :cond_a3

    if-eqz v4, :cond_a3

    move v5, v7

    :goto_67
    invoke-virtual {v2, v8, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 10718
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;

    invoke-direct {v8, p0, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10736
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    const v8, 0x7fffffff

    if-eq v5, v8, :cond_a5

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    if-ne v5, v8, :cond_a5

    :goto_91
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 10738
    .end local v0    # "disableSelection":Z
    .end local v1    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v4    # "selected":Z
    :cond_94
    return-void

    .restart local v0    # "disableSelection":Z
    .restart local v1    # "message":Lorg/telegram/messenger/MessageObject;
    .restart local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v4    # "selected":Z
    :cond_95
    move-object v3, v8

    .line 10705
    goto :goto_2d

    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_97
    move v5, v7

    .line 10706
    goto :goto_44

    .line 10710
    :cond_99
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5e

    .line 10714
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_9d
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5f

    :cond_a1
    move v8, v6

    .line 10716
    goto :goto_62

    :cond_a3
    move v5, v6

    goto :goto_67

    :cond_a5
    move v7, v6

    .line 10736
    goto :goto_91
.end method

.method public updateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 10741
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 10742
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 10746
    :goto_b
    return-void

    .line 10745
    :cond_c
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    goto :goto_b
.end method

.method public updateRows()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 10103
    iput v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 10104
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_89

    .line 10105
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 10109
    :goto_1d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 10110
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_45

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_8c

    .line 10111
    :cond_45
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 10115
    :goto_4d
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 10116
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 10117
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 10118
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->forwardEndReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_80

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->forwardEndReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_8f

    .line 10119
    :cond_80
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 10129
    :goto_88
    return-void

    .line 10107
    :cond_89
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    goto :goto_1d

    .line 10113
    :cond_8c
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_4d

    .line 10121
    :cond_8f
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    goto :goto_88

    .line 10124
    :cond_92
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 10125
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 10126
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 10127
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    goto :goto_88
.end method
