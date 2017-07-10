.class Lorg/telegram/ui/DataUsageActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataUsageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataUsageActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataUsageActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 248
    iput-object p2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 249
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 382
    const/4 v0, 0x3

    .line 388
    :goto_9
    return v0

    .line 383
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4c

    .line 384
    :cond_4a
    const/4 v0, 0x0

    goto :goto_9

    .line 385
    :cond_4c
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_84

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_84

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_84

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_84

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_84

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_84

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_86

    .line 386
    :cond_84
    const/4 v0, 0x2

    goto :goto_9

    .line 388
    :cond_86
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 353
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 21
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 258
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_566

    .line 349
    :cond_7
    :goto_7
    return-void

    .line 260
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_29

    .line 261
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0200d7

    const-string v13, "windowBackgroundGrayShadow"

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 263
    :cond_29
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0200d6

    const-string v13, "windowBackgroundGrayShadow"

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 268
    :pswitch_3e
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 269
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_6c

    .line 270
    const-string v10, "windowBackgroundWhiteRedText2"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 271
    const-string v10, "ResetStatistics"

    const v11, 0x7f07049a

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 272
    const-string v10, "windowBackgroundWhiteRedText2"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_7

    .line 275
    :cond_6c
    const-string v10, "windowBackgroundWhiteBlackText"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 276
    const-string v10, "windowBackgroundWhiteBlackText"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_aa

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_aa

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_aa

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_e6

    .line 278
    :cond_aa
    const/4 v9, 0x0

    .line 292
    .local v9, "type":I
    :goto_ab
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1e7

    .line 293
    const-string v10, "OutgoingCalls"

    const v11, 0x7f0703e5

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 279
    .end local v9    # "type":I
    :cond_e6
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_116

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_116

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_116

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_118

    .line 280
    :cond_116
    const/4 v9, 0x1

    .restart local v9    # "type":I
    goto :goto_ab

    .line 281
    .end local v9    # "type":I
    :cond_118
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_148

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_148

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_148

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_14b

    .line 282
    :cond_148
    const/4 v9, 0x4

    .restart local v9    # "type":I
    goto/16 :goto_ab

    .line 283
    .end local v9    # "type":I
    :cond_14b
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17b

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17b

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17b

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_17e

    .line 284
    :cond_17b
    const/4 v9, 0x3

    .restart local v9    # "type":I
    goto/16 :goto_ab

    .line 285
    .end local v9    # "type":I
    :cond_17e
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1ae

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1ae

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1ae

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1b1

    .line 286
    :cond_1ae
    const/4 v9, 0x2

    .restart local v9    # "type":I
    goto/16 :goto_ab

    .line 287
    .end local v9    # "type":I
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1e1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1e1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1e1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1e4

    .line 288
    :cond_1e1
    const/4 v9, 0x5

    .restart local v9    # "type":I
    goto/16 :goto_ab

    .line 290
    .end local v9    # "type":I
    :cond_1e4
    const/4 v9, 0x6

    .restart local v9    # "type":I
    goto/16 :goto_ab

    .line 294
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_222

    .line 295
    const-string v10, "IncomingCalls"

    const v11, 0x7f070292

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 296
    :cond_222
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsTotalTimeRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_28f

    .line 297
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v11}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/StatsController;->getCallsTotalTime(I)I

    move-result v8

    .line 298
    .local v8, "total":I
    div-int/lit16 v4, v8, 0xe10

    .line 299
    .local v4, "hours":I
    mul-int/lit16 v10, v4, 0xe10

    sub-int/2addr v8, v10

    .line 300
    div-int/lit8 v5, v8, 0x3c

    .line 301
    .local v5, "minutes":I
    mul-int/lit8 v10, v5, 0x3c

    sub-int/2addr v8, v10

    .line 303
    if-eqz v4, :cond_277

    .line 304
    const-string v10, "%d:%02d:%02d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, "time":Ljava/lang/String;
    :goto_268
    const-string v10, "CallsTotalTime"

    const v11, 0x7f0700fd

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v7, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 306
    .end local v7    # "time":Ljava/lang/String;
    :cond_277
    const-string v10, "%d:%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "time":Ljava/lang/String;
    goto :goto_268

    .line 309
    .end local v4    # "hours":I
    .end local v5    # "minutes":I
    .end local v7    # "time":Ljava/lang/String;
    .end local v8    # "total":I
    :cond_28f
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_2cb

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_2cb

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_2cb

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_2cb

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_2fa

    .line 310
    :cond_2cb
    const-string v10, "CountSent"

    const v11, 0x7f07019e

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 311
    :cond_2fa
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_336

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_336

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_336

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_336

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_365

    .line 312
    :cond_336
    const-string v10, "CountReceived"

    const v11, 0x7f07019d

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 313
    :cond_365
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalBytesSentRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_3dc

    .line 314
    :cond_3b9
    const-string v10, "BytesSent"

    const v11, 0x7f0700e8

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v12}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 315
    :cond_3dc
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_430

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_430

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_430

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_430

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_430

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_430

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 316
    :cond_430
    const-string v10, "BytesReceived"

    const v11, 0x7f0700e7

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v12}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v12

    invoke-virtual {v10, v12, v9}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalBytesReceivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_45f

    const/4 v10, 0x1

    :goto_45a
    invoke-virtual {v6, v11, v12, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_45f
    const/4 v10, 0x0

    goto :goto_45a

    .line 322
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v9    # "type":I
    :pswitch_461
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 323
    .local v3, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalSectionRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_481

    .line 324
    const-string v10, "TotalDataUsage"

    const v11, 0x7f070547

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 325
    :cond_481
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSectionRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_49b

    .line 326
    const-string v10, "CallsDataUsage"

    const v11, 0x7f0700fc

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 327
    :cond_49b
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSectionRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_4b5

    .line 328
    const-string v10, "FilesDataUsage"

    const v11, 0x7f070219

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 329
    :cond_4b5
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSectionRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_4cf

    .line 330
    const-string v10, "LocalAudioCache"

    const v11, 0x7f0702ec

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 331
    :cond_4cf
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSectionRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_4e9

    .line 332
    const-string v10, "LocalVideoCache"

    const v11, 0x7f0702f5

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 333
    :cond_4e9
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSectionRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_503

    .line 334
    const-string v10, "LocalPhotoCache"

    const v11, 0x7f0702f4

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 335
    :cond_503
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSectionRow:I
    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 336
    const-string v10, "MessagesDataUsage"

    const v11, 0x7f07031a

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 341
    .end local v3    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_51d
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 342
    .local v2, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f0200d7

    const-string v12, "windowBackgroundGrayShadow"

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    const-string v10, "NetworkUsageSince"

    const v11, 0x7f07033b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/StatsController;->getResetStatsDate(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 258
    nop

    :pswitch_data_566
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3e
        :pswitch_461
        :pswitch_51d
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_46

    .line 375
    :goto_4
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 361
    :pswitch_14
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_4

    .line 364
    :pswitch_1c
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 365
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 368
    :pswitch_2d
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 369
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 372
    :pswitch_3e
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_4

    .line 359
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1c
        :pswitch_2d
        :pswitch_3e
    .end packed-switch
.end method
