.class Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 301
    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 302
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSection2Row:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1b

    .line 454
    :cond_19
    const/4 v0, 0x0

    .line 462
    :cond_1a
    :goto_1a
    return v0

    .line 455
    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1a

    .line 457
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5b

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5b

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5d

    .line 458
    :cond_5b
    const/4 v0, 0x3

    goto :goto_1a

    .line 459
    :cond_5d
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_75

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_75

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1a

    .line 460
    :cond_75
    const/4 v0, 0x2

    goto :goto_1a
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 422
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 423
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    .line 424
    # getter for: Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiUsageRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_46

    :cond_44
    const/4 v1, 0x1

    .line 423
    :goto_45
    return v1

    .line 424
    :cond_46
    const/4 v1, 0x0

    goto :goto_45
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 311
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    packed-switch v6, :pswitch_data_2d8

    .line 418
    :cond_9
    :goto_9
    return-void

    .line 313
    :pswitch_a
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq p2, v6, :cond_23

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_34

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_34

    .line 314
    :cond_23
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0200d7

    const-string v9, "windowBackgroundGrayShadow"

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 316
    :cond_34
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0200d6

    const-string v9, "windowBackgroundGrayShadow"

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 321
    :pswitch_45
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 322
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_5e

    .line 323
    const-string v6, "StorageUsage"

    const v7, 0x7f07052c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_9

    .line 324
    :cond_5e
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_a3

    .line 325
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 326
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 327
    .local v5, "value":Ljava/lang/String;
    const-string v6, "VoipDataSaving"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_2e4

    .line 338
    :goto_78
    const-string v6, "VoipUseLessData"

    const v7, 0x7f07059a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 329
    :pswitch_85
    const-string v6, "UseLessDataNever"

    const v7, 0x7f07055d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 330
    goto :goto_78

    .line 332
    :pswitch_8f
    const-string v6, "UseLessDataOnMobile"

    const v7, 0x7f07055e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 333
    goto :goto_78

    .line 335
    :pswitch_99
    const-string v6, "UseLessDataAlways"

    const v7, 0x7f07055c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_78

    .line 339
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "value":Ljava/lang/String;
    :cond_a3
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileUsageRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_b9

    .line 340
    const-string v6, "MobileUsage"

    const v7, 0x7f07032f

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 341
    :cond_b9
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingUsageRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_cf

    .line 342
    const-string v6, "RoamingUsage"

    const v7, 0x7f0704aa

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 343
    :cond_cf
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiUsageRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_9

    .line 344
    const-string v6, "WiFiUsage"

    const v7, 0x7f0705ae

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 349
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_e5
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 350
    .local v0, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_ff

    .line 351
    const-string v6, "AutomaticMediaDownload"

    const v7, 0x7f0700cc

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 352
    :cond_ff
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_115

    .line 353
    const-string v6, "DataUsage"

    const v7, 0x7f0701b5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 354
    :cond_115
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_9

    .line 355
    const-string v6, "Calls"

    const v7, 0x7f0700fb

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 360
    .end local v0    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_12b
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 362
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq p2, v6, :cond_147

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq p2, v6, :cond_147

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_9

    .line 365
    :cond_147
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 366
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_2ad

    .line 367
    const-string v6, "WhenUsingMobileData"

    const v7, 0x7f0705a6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 368
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget v1, v6, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 376
    .local v1, "mask":I
    :goto_166
    const-string v3, ""

    .line 377
    .local v3, "text":Ljava/lang/String;
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_186

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "LocalPhotoCache"

    const v8, 0x7f0702f4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    :cond_186
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_1bd

    .line 381
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1a3

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    :cond_1a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "LocalAudioCache"

    const v8, 0x7f0702ec

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    :cond_1bd
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1f4

    .line 387
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1da

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    :cond_1da
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "LocalVideoCache"

    const v8, 0x7f0702f5

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    :cond_1f4
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_22b

    .line 393
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_211

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    :cond_211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FilesDataUsage"

    const v8, 0x7f070219

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    :cond_22b
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_262

    .line 399
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_248

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    :cond_248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AttachMusic"

    const v8, 0x7f0700c1

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    :cond_262
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_299

    .line 405
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_27f

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    :cond_27f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "LocalGifCache"

    const v8, 0x7f0702f2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    :cond_299
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2a8

    .line 411
    const-string v6, "NoMediaAutoDownload"

    const v7, 0x7f07035d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 413
    :cond_2a8
    invoke-virtual {v4, v5, v3, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 369
    .end local v1    # "mask":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2ad
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_2c6

    .line 370
    const-string v6, "WhenConnectedOnWiFi"

    const v7, 0x7f0705a4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 371
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget v1, v6, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .restart local v1    # "mask":I
    goto/16 :goto_166

    .line 373
    .end local v1    # "mask":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_2c6
    const-string v6, "WhenRoaming"

    const v7, 0x7f0705a5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 374
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget v1, v6, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .restart local v1    # "mask":I
    goto/16 :goto_166

    .line 311
    nop

    :pswitch_data_2d8
    .packed-switch 0x0
        :pswitch_a
        :pswitch_45
        :pswitch_e5
        :pswitch_12b
    .end packed-switch

    .line 327
    :pswitch_data_2e4
    .packed-switch 0x0
        :pswitch_85
        :pswitch_8f
        :pswitch_99
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_50

    .line 447
    :goto_4
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 432
    :pswitch_14
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 433
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_4

    .line 435
    :pswitch_1c
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 436
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 439
    :pswitch_2d
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 440
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 443
    :pswitch_3e
    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 444
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 430
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1c
        :pswitch_2d
        :pswitch_3e
    .end packed-switch
.end method
