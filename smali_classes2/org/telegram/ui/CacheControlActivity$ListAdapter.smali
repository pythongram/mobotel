.class Lorg/telegram/ui/CacheControlActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 539
    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 540
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$1900(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->databaseInfoRow:I
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheInfoRow:I
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->keepMediaInfoRow:I
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2200(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 615
    :cond_18
    const/4 v0, 0x1

    .line 617
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 544
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 545
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->databaseRow:I
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1300(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_28

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheRow:I
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1500(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->totalSize:J
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_28

    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->keepMediaRow:I
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1200(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2a

    :cond_28
    const/4 v1, 0x1

    :goto_29
    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f07017b

    const v8, 0x7f0200d6

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 571
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_128

    .line 610
    :cond_f
    :goto_f
    return-void

    .line 573
    :pswitch_10
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 574
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->databaseRow:I
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$1300(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v5

    if-ne p2, v5, :cond_33

    .line 575
    const-string v5, "LocalDatabase"

    const v6, 0x7f0702ee

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->databaseSize:J
    invoke-static {v6}, Lorg/telegram/ui/CacheControlActivity;->access$1400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_f

    .line 576
    :cond_33
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheRow:I
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$1500(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v5

    if-ne p2, v5, :cond_80

    .line 577
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->calculating:Z
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$900(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 578
    const-string v5, "ClearMediaCache"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalculatingSize"

    const v7, 0x7f0700eb

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_f

    .line 580
    :cond_56
    const-string v5, "ClearMediaCache"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->totalSize:J
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_75

    const-string v5, "CacheEmpty"

    const v7, 0x7f0700ea

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_71
    invoke-virtual {v3, v6, v5, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_f

    :cond_75
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->totalSize:J
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_71

    .line 582
    :cond_80
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->keepMediaRow:I
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$1200(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v5

    if-ne p2, v5, :cond_f

    .line 583
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 584
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "keep_media"

    const/4 v6, 0x2

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 586
    .local v0, "keepMedia":I
    if-nez v0, :cond_ad

    .line 587
    const-string v5, "Weeks"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "value":Ljava/lang/String;
    :goto_9f
    const-string v5, "KeepMedia"

    const v6, 0x7f0702b4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_f

    .line 588
    .end local v4    # "value":Ljava/lang/String;
    :cond_ad
    if-ne v0, v7, :cond_b6

    .line 589
    const-string v5, "Months"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_9f

    .line 591
    .end local v4    # "value":Ljava/lang/String;
    :cond_b6
    const-string v5, "KeepMediaForever"

    const v6, 0x7f0702b5

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_9f

    .line 597
    .end local v0    # "keepMedia":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_c0
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 598
    .local v2, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->databaseInfoRow:I
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v5

    if-ne p2, v5, :cond_e8

    .line 599
    const-string v5, "LocalDatabaseInfo"

    const v6, 0x7f0702f0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0200d7

    const-string v7, "windowBackgroundGrayShadow"

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 601
    :cond_e8
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheInfoRow:I
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v5

    if-ne p2, v5, :cond_102

    .line 602
    const-string v5, ""

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "windowBackgroundGrayShadow"

    invoke-static {v5, v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 604
    :cond_102
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->keepMediaInfoRow:I
    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity;->access$2200(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v5

    if-ne p2, v5, :cond_f

    .line 605
    const-string v5, "KeepMediaInfo"

    const v6, 0x7f0702b6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "windowBackgroundGrayShadow"

    invoke-static {v5, v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 571
    nop

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 556
    packed-switch p2, :pswitch_data_22

    .line 563
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 566
    .local v0, "view":Landroid/view/View;
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 558
    .end local v0    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 559
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a

    .line 556
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
