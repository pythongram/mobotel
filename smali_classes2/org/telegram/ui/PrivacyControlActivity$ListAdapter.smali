.class Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacyControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacyControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 433
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 434
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 571
    :cond_11
    :goto_11
    return v0

    .line 564
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_24

    .line 565
    :cond_22
    const/4 v0, 0x1

    goto :goto_11

    .line 566
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_34

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_36

    .line 567
    :cond_34
    const/4 v0, 0x2

    goto :goto_11

    .line 568
    :cond_36
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4e

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4e

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 569
    :cond_4e
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 438
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 439
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    :cond_2c
    const/4 v1, 0x1

    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v9, 0x7f0701f5

    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 473
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    packed-switch v8, :pswitch_data_258

    .line 558
    :cond_e
    :goto_e
    return-void

    .line 475
    :pswitch_f
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 476
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_74

    .line 478
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_54

    .line 479
    const-string v8, "Users"

    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "value":Ljava/lang/String;
    :goto_37
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-eqz v8, :cond_5d

    .line 484
    const-string v8, "AlwaysAllow"

    const v9, 0x7f070080

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v9

    if-eq v9, v12, :cond_5b

    :goto_50
    invoke-virtual {v4, v8, v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 481
    .end local v5    # "value":Ljava/lang/String;
    :cond_54
    const-string v8, "EmpryUsersPlaceholder"

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_37

    :cond_5b
    move v6, v7

    .line 484
    goto :goto_50

    .line 486
    :cond_5d
    const-string v8, "AlwaysShareWith"

    const v9, 0x7f070082

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v9

    if-eq v9, v12, :cond_72

    :goto_6e
    invoke-virtual {v4, v8, v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    :cond_72
    move v6, v7

    goto :goto_6e

    .line 488
    .end local v5    # "value":Ljava/lang/String;
    :cond_74
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p2, v6, :cond_e

    .line 490
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_ae

    .line 491
    const-string v6, "Users"

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 495
    .restart local v5    # "value":Ljava/lang/String;
    :goto_98
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-eqz v6, :cond_b5

    .line 496
    const-string v6, "NeverAllow"

    const v8, 0x7f07033c

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_e

    .line 493
    .end local v5    # "value":Ljava/lang/String;
    :cond_ae
    const-string v6, "EmpryUsersPlaceholder"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_98

    .line 498
    :cond_b5
    const-string v6, "NeverShareWith"

    const v8, 0x7f07033e

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_e

    .line 503
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v5    # "value":Ljava/lang/String;
    :pswitch_c3
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 504
    .local v2, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_115

    .line 505
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v11, :cond_f3

    .line 506
    const-string v6, "WhoCanCallMeInfo"

    const v7, 0x7f0705ad

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :goto_e3
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0200d6

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 507
    :cond_f3
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v6, :cond_108

    .line 508
    const-string v6, "WhoCanAddMeInfo"

    const v7, 0x7f0705a8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e3

    .line 510
    :cond_108
    const-string v6, "CustomHelp"

    const v7, 0x7f0701b0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e3

    .line 513
    :cond_115
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_e

    .line 514
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v11, :cond_141

    .line 515
    const-string v6, "CustomCallInfo"

    const v7, 0x7f0701af

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :goto_131
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0200d7

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 516
    :cond_141
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v6, :cond_156

    .line 517
    const-string v6, "CustomShareInfo"

    const v7, 0x7f0701b2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_131

    .line 519
    :cond_156
    const-string v6, "CustomShareSettingsHelp"

    const v7, 0x7f0701b3

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_131

    .line 525
    .end local v2    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_163
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 526
    .local v1, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_1a9

    .line 527
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v11, :cond_185

    .line 528
    const-string v6, "WhoCanCallMe"

    const v7, 0x7f0705ac

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 529
    :cond_185
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v6, :cond_19b

    .line 530
    const-string v6, "WhoCanAddMe"

    const v7, 0x7f0705a7

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 532
    :cond_19b
    const-string v6, "LastSeenTitle"

    const v7, 0x7f0702d6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 534
    :cond_1a9
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p2, v6, :cond_e

    .line 535
    const-string v6, "AddExceptions"

    const v7, 0x7f070069

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 539
    .end local v1    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_1bf
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/RadioCell;

    .line 540
    .local v3, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    const/4 v0, 0x0

    .line 541
    .local v0, "checkedType":I
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_1f7

    .line 542
    const-string v8, "LastSeenEverybody"

    const v9, 0x7f0702c4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-nez v8, :cond_1f5

    move v8, v6

    :goto_1de
    invoke-virtual {v3, v9, v8, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 543
    const/4 v0, 0x0

    .line 551
    :cond_1e2
    :goto_1e2
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne v8, v0, :cond_244

    .line 552
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$600(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v6

    invoke-virtual {v3, v7, v6}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto/16 :goto_e

    :cond_1f5
    move v8, v7

    .line 542
    goto :goto_1de

    .line 544
    :cond_1f7
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_223

    .line 545
    const-string v8, "LastSeenContacts"

    const v9, 0x7f0702bf

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne v8, v11, :cond_21f

    move v8, v6

    :goto_211
    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v9

    if-eq v9, v12, :cond_221

    move v9, v6

    :goto_21a
    invoke-virtual {v3, v10, v8, v9}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 546
    const/4 v0, 0x2

    goto :goto_1e2

    :cond_21f
    move v8, v7

    .line 545
    goto :goto_211

    :cond_221
    move v9, v7

    goto :goto_21a

    .line 547
    :cond_223
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_1e2

    .line 548
    const-string v8, "LastSeenNobody"

    const v9, 0x7f0702d3

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne v8, v6, :cond_242

    move v8, v6

    :goto_23d
    invoke-virtual {v3, v9, v8, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 549
    const/4 v0, 0x1

    goto :goto_1e2

    :cond_242
    move v8, v7

    .line 548
    goto :goto_23d

    .line 553
    :cond_244
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v0, :cond_e

    .line 554
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$600(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto/16 :goto_e

    .line 473
    nop

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c3
        :pswitch_163
        :pswitch_1bf
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 450
    packed-switch p2, :pswitch_data_44

    .line 464
    new-instance v0, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 465
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 468
    :goto_13
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 452
    .end local v0    # "view":Landroid/view/View;
    :pswitch_19
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 453
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 456
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2a
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 457
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 459
    .end local v0    # "view":Landroid/view/View;
    :pswitch_32
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 460
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 450
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method
