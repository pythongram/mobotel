.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DownloadSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 303
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 304
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 435
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableDMRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableWifiRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->disableWifiRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->justTodayRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_22

    .line 442
    :cond_21
    :goto_21
    return v0

    .line 437
    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->activeDaysRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2c

    .line 438
    const/4 v0, 0x1

    goto :goto_21

    .line 439
    :cond_2c
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->startTimeRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3c

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->endTimeRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_21

    .line 440
    :cond_3c
    const/4 v0, 0x2

    goto :goto_21
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 310
    .local v1, "position":I
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 311
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "download_just_today"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 312
    .local v0, "justToday":Z
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableDMRow:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v5

    if-eq v1, v5, :cond_4e

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->startTimeRow:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v5

    if-eq v1, v5, :cond_4e

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->activeDaysRow:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v5

    if-ne v1, v5, :cond_2e

    if-eqz v0, :cond_4e

    :cond_2e
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->endTimeRow:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v5

    if-eq v1, v5, :cond_4e

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableWifiRow:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v5

    if-eq v1, v5, :cond_4e

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->disableWifiRow:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v5

    if-eq v1, v5, :cond_4e

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->justTodayRow:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v5

    if-ne v1, v5, :cond_4f

    :cond_4e
    move v3, v4

    :cond_4f
    return v3
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 20
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 337
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v13, "mainconfig"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 338
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v12

    packed-switch v12, :pswitch_data_384

    .line 426
    :cond_10
    :goto_10
    return-void

    .line 340
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 341
    .local v2, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableDMRow:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_38

    .line 342
    const-string v12, "DownloaderEnableScheduler"

    const v13, 0x7f0706c2

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "download_receiver"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v2, v12, v13, v14}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_10

    .line 343
    :cond_38
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableWifiRow:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_59

    .line 344
    const-string v12, "DownloaderEnableWifi"

    const v13, 0x7f0706c3

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "download_ewifi"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v2, v12, v13, v14}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_10

    .line 345
    :cond_59
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->disableWifiRow:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_7a

    .line 346
    const-string v12, "DownloaderDisableWifi"

    const v13, 0x7f0706c1

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "download_dwifi"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v2, v12, v13, v14}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_10

    .line 347
    :cond_7a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->justTodayRow:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_10

    .line 348
    const-string v12, "DownloaderJustToday"

    const v13, 0x7f0706c5

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "download_just_today"

    const/4 v14, 0x1

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v13, v14}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_10

    .line 352
    .end local v2    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :pswitch_9c
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 353
    .local v3, "detailSettingsCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->activeDaysRow:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_10

    .line 354
    const-string v9, ""

    .line 355
    .local v9, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_b1
    const/4 v12, 0x7

    if-ge v1, v12, :cond_1f4

    .line 356
    if-nez v1, :cond_e2

    .line 357
    const-string v12, "dm_saturday"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 358
    .local v8, "tab":Z
    if-eqz v8, :cond_df

    .line 359
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Saturday"

    const v14, 0x7f0707a7

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 355
    .end local v8    # "tab":Z
    :cond_df
    :goto_df
    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    .line 361
    :cond_e2
    const/4 v12, 0x1

    if-ne v1, v12, :cond_10f

    .line 362
    const-string v12, "dm_sunday"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 363
    .restart local v8    # "tab":Z
    if-eqz v8, :cond_df

    .line 364
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Sunday"

    const v14, 0x7f0707e4

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_df

    .line 366
    .end local v8    # "tab":Z
    :cond_10f
    const/4 v12, 0x2

    if-ne v1, v12, :cond_13c

    .line 367
    const-string v12, "dm_monday"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 368
    .restart local v8    # "tab":Z
    if-eqz v8, :cond_df

    .line 369
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Monday"

    const v14, 0x7f07075d

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_df

    .line 371
    .end local v8    # "tab":Z
    :cond_13c
    const/4 v12, 0x3

    if-ne v1, v12, :cond_16a

    .line 372
    const-string v12, "dm_tuesday"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 373
    .restart local v8    # "tab":Z
    if-eqz v8, :cond_df

    .line 374
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Tuesday"

    const v14, 0x7f0707fe

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_df

    .line 376
    .end local v8    # "tab":Z
    :cond_16a
    const/4 v12, 0x4

    if-ne v1, v12, :cond_198

    .line 377
    const-string v12, "dm_wednesday"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 378
    .restart local v8    # "tab":Z
    if-eqz v8, :cond_df

    .line 379
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Wednesday"

    const v14, 0x7f07083b

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_df

    .line 381
    .end local v8    # "tab":Z
    :cond_198
    const/4 v12, 0x5

    if-ne v1, v12, :cond_1c6

    .line 382
    const-string v12, "dm_thursday"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 383
    .restart local v8    # "tab":Z
    if-eqz v8, :cond_df

    .line 384
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Thursday"

    const v14, 0x7f0707f7

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_df

    .line 386
    .end local v8    # "tab":Z
    :cond_1c6
    const/4 v12, 0x6

    if-ne v1, v12, :cond_df

    .line 387
    const-string v12, "dm_friday"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 388
    .restart local v8    # "tab":Z
    if-eqz v8, :cond_df

    .line 389
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Friday"

    const v14, 0x7f070711

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_df

    .line 393
    .end local v8    # "tab":Z
    :cond_1f4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .local v10, "textSB":Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_20a

    .line 395
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    const/16 v13, 0x20

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 397
    :cond_20a
    const-string v12, "DownloaderDays"

    const v13, 0x7f0706be

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v3, v12, v13, v14}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 398
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    goto/16 :goto_10

    .line 402
    .end local v1    # "a":I
    .end local v3    # "detailSettingsCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "textSB":Ljava/lang/StringBuilder;
    :pswitch_221
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 403
    .local v7, "settingsCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->startTimeRow:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_2d5

    .line 405
    const-string v12, "download_shour"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 406
    .local v4, "hour":I
    const-string v12, "download_sminute"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 407
    .local v5, "minute":I
    const/16 v12, 0xa

    if-ge v5, v12, :cond_29d

    .line 408
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 412
    .local v11, "time":Ljava/lang/String;
    :goto_28e
    const-string v12, "DownloaderStartTime"

    const v13, 0x7f0706c7

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v11, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_10

    .line 410
    .end local v11    # "time":Ljava/lang/String;
    :cond_29d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "time":Ljava/lang/String;
    goto :goto_28e

    .line 413
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v11    # "time":Ljava/lang/String;
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->endTimeRow:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_10

    .line 415
    const-string v12, "download_ehour"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 416
    .restart local v4    # "hour":I
    const-string v12, "download_eminute"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 417
    .restart local v5    # "minute":I
    const/16 v12, 0xa

    if-ge v5, v12, :cond_34b

    .line 418
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 422
    .restart local v11    # "time":Ljava/lang/String;
    :goto_33c
    const-string v12, "DownloaderEndTime"

    const v13, 0x7f0706c4

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v11, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_10

    .line 420
    .end local v11    # "time":Ljava/lang/String;
    :cond_34b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "time":Ljava/lang/String;
    goto :goto_33c

    .line 338
    nop

    :pswitch_data_384
    .packed-switch 0x0
        :pswitch_11
        :pswitch_9c
        :pswitch_221
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_3e

    .line 332
    :goto_4
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 320
    :pswitch_a
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 321
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 324
    :pswitch_1b
    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 325
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 328
    :pswitch_2c
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 329
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 318
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1b
        :pswitch_2c
    .end packed-switch
.end method
