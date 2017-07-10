.class public Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$Holder;
    }
.end annotation


# instance fields
.field private botInfoRow:I

.field private loadingDownRow:I

.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field private messagesStartRow:I

.field private rowCount:I

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2784
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 2778
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I

    .line 2785
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    .line 2786
    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    .prologue
    .line 2774
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    .prologue
    .line 2774
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    return v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    .prologue
    .line 2774
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 2822
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 2827
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 3269
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_24

    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_24

    .line 3270
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 3274
    :goto_23
    return v0

    .line 3271
    :cond_24
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne p1, v0, :cond_2a

    .line 3272
    const/4 v0, 0x3

    goto :goto_23

    .line 3274
    :cond_2a
    const/4 v0, 0x4

    goto :goto_23
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 3313
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3315
    :try_start_3
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3319
    :goto_6
    return-void

    .line 3316
    :catch_7
    move-exception v0

    .line 3317
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemChanged(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3323
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3325
    :try_start_3
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3329
    :goto_6
    return-void

    .line 3326
    :catch_7
    move-exception v0

    .line 3327
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemInserted(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3343
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3345
    :try_start_3
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3349
    :goto_6
    return-void

    .line 3346
    :catch_7
    move-exception v0

    .line 3347
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemMoved(II)V
    .registers 5
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 3353
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3355
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3359
    :goto_6
    return-void

    .line 3356
    :catch_7
    move-exception v0

    .line 3357
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRangeChanged(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3333
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3335
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3339
    :goto_6
    return-void

    .line 3336
    :catch_7
    move-exception v0

    .line 3337
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRangeInserted(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3363
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3365
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3369
    :goto_6
    return-void

    .line 3366
    :catch_7
    move-exception v0

    .line 3367
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRangeRemoved(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3383
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3385
    :try_start_3
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3389
    :goto_6
    return-void

    .line 3386
    :catch_7
    move-exception v0

    .line 3387
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public notifyItemRemoved(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3373
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 3375
    :try_start_3
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 3379
    :goto_6
    return-void

    .line 3376
    :catch_7
    move-exception v0

    .line 3377
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 21
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 3219
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I

    move/from16 v0, p2

    if-ne v0, v11, :cond_9

    .line 3265
    :cond_8
    :goto_8
    return-void

    .line 3221
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingDownRow:I

    move/from16 v0, p2

    if-eq v0, v11, :cond_19

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingUpRow:I

    move/from16 v0, p2

    if-ne v0, v11, :cond_31

    .line 3222
    :cond_19
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 3223
    .local v4, "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loadsCount:I
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_2f

    const/4 v11, 0x1

    :goto_2b
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    goto :goto_8

    :cond_2f
    const/4 v11, 0x0

    goto :goto_2b

    .line 3224
    .end local v4    # "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    :cond_31
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v0, p2

    if-lt v0, v11, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesEndRow:I

    move/from16 v0, p2

    if-ge v0, v11, :cond_8

    .line 3225
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v12, v12, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v13, p2, v13

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 3226
    .local v5, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3228
    .local v10, "view":Landroid/view/View;
    const/4 v8, 0x0

    .line 3229
    .local v8, "selected":Z
    const/4 v3, 0x0

    .line 3230
    .local v3, "disableSelection":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v11

    if-eqz v11, :cond_11f

    .line 3231
    const/4 v7, 0x0

    .line 3232
    .local v7, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eq v7, v5, :cond_a0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-nez v11, :cond_117

    const/4 v11, 0x0

    :goto_90
    aget-object v11, v12, v11

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 3234
    :cond_a0
    const/4 v8, 0x1

    .line 3238
    :goto_a1
    const/4 v3, 0x1

    .line 3243
    .end local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_a2
    instance-of v11, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_132

    move-object v6, v10

    .line 3244
    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3245
    .local v6, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    const/4 v11, 0x0

    iput-boolean v11, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 3246
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v5, v11, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 3247
    if-nez v3, :cond_125

    const/4 v11, 0x1

    move v12, v11

    :goto_b5
    if-eqz v3, :cond_128

    if-eqz v8, :cond_128

    const/4 v11, 0x1

    :goto_ba
    invoke-virtual {v6, v12, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 3248
    instance-of v11, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_d1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 3249
    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v10    # "view":Landroid/view/View;
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->downloadAudioIfNeed()V

    .line 3251
    :cond_d1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v11

    const v12, 0x7fffffff

    if-eq v11, v12, :cond_12a

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v12

    if-ne v11, v12, :cond_12a

    const/4 v11, 0x1

    :goto_ed
    invoke-virtual {v6, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 3252
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->searchContainer:Landroid/widget/FrameLayout;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-eqz v11, :cond_12c

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->searchContainer:Landroid/widget/FrameLayout;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_12c

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12c

    .line 3253
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3232
    .end local v6    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v10    # "view":Landroid/view/View;
    :cond_117
    const/4 v11, 0x1

    goto/16 :goto_90

    .line 3236
    :cond_11a
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a1

    .line 3240
    .end local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_11f
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_a2

    .line 3247
    .restart local v6    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_125
    const/4 v11, 0x0

    move v12, v11

    goto :goto_b5

    :cond_128
    const/4 v11, 0x0

    goto :goto_ba

    .line 3251
    .end local v10    # "view":Landroid/view/View;
    :cond_12a
    const/4 v11, 0x0

    goto :goto_ed

    .line 3255
    :cond_12c
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3257
    .end local v6    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v10    # "view":Landroid/view/View;
    :cond_132
    instance-of v11, v10, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v11, :cond_13e

    move-object v2, v10

    .line 3258
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 3259
    .local v2, "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_8

    .line 3260
    .end local v2    # "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    :cond_13e
    instance-of v11, v10, Lorg/telegram/ui/Cells/ChatUnreadCell;

    if-eqz v11, :cond_8

    move-object v9, v10

    .line 3261
    check-cast v9, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .line 3262
    .local v9, "unreadCell":Lorg/telegram/ui/Cells/ChatUnreadCell;
    const-string v11, "NewMessages"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->unread_to_load:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Cells/ChatUnreadCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2832
    const/4 v1, 0x0

    .line 2833
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_4c

    .line 2834
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    .line 2835
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "view":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 2836
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatMessageCellsCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_26
    move-object v0, v1

    .line 2840
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2841
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 3141
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    .line 3213
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_34
    :goto_34
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3214
    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$Holder;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$Holder;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;Landroid/view/View;)V

    return-object v2

    .line 2838
    :cond_44
    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_26

    .line 3142
    :cond_4c
    if-ne p2, v4, :cond_61

    .line 3143
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 3144
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_34

    .line 3194
    :cond_61
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6c

    .line 3195
    new-instance v1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_34

    .line 3196
    :cond_6c
    const/4 v2, 0x3

    if-ne p2, v2, :cond_82

    .line 3197
    new-instance v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/BotHelpCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 3198
    check-cast v2, Lorg/telegram/ui/Cells/BotHelpCell;

    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V

    goto :goto_34

    .line 3210
    :cond_82
    const/4 v2, 0x4

    if-ne p2, v2, :cond_34

    .line 3211
    new-instance v1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_34
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3279
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_35

    .line 3280
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3281
    .local v0, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3299
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_36

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v2

    if-ne v1, v2, :cond_36

    const/4 v1, 0x1

    :goto_32
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 3301
    .end local v0    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_35
    return-void

    .line 3299
    .restart local v0    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_36
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public updateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3304
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3305
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 3309
    :goto_b
    return-void

    .line 3308
    :cond_c
    iget v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    goto :goto_b
.end method

.method public updateRows()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2789
    iput v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    .line 2790
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    .line 2792
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_5f

    .line 2793
    :cond_25
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 2797
    :goto_2d
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 2798
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    .line 2799
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 2800
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_56

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_62

    .line 2801
    :cond_56
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 2811
    :goto_5e
    return-void

    .line 2795
    :cond_5f
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_2d

    .line 2803
    :cond_62
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingDownRow:I

    goto :goto_5e

    .line 2806
    :cond_65
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 2807
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 2808
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 2809
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesEndRow:I

    goto :goto_5e
.end method
