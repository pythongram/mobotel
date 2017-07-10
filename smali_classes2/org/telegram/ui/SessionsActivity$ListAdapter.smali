.class Lorg/telegram/ui/SessionsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SessionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SessionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 337
    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 338
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$600(Lorg/telegram/ui/SessionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    goto :goto_9
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 436
    :cond_9
    :goto_9
    return v0

    .line 427
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$1000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$1100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 428
    :cond_1a
    const/4 v0, 0x1

    goto :goto_9

    .line 429
    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$1200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$1300(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2e

    .line 430
    :cond_2c
    const/4 v0, 0x2

    goto :goto_9

    .line 431
    :cond_2e
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$1500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_38

    .line 432
    const/4 v0, 0x3

    goto :goto_9

    .line 433
    :cond_38
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$1400(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_50

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-lt p1, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 434
    :cond_50
    const/4 v0, 0x4

    goto :goto_9
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 342
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 343
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1c

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-lt v0, v1, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 379
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_12e

    .line 413
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/SessionCell;

    .line 414
    .local v3, "sessionCell":Lorg/telegram/ui/Cells/SessionCell;
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$1400(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_108

    .line 415
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$700(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_28

    move v6, v7

    :cond_28
    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V

    .line 421
    .end local v3    # "sessionCell":Lorg/telegram/ui/Cells/SessionCell;
    :cond_2b
    :goto_2b
    return-void

    .line 381
    :pswitch_2c
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 382
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_2b

    .line 383
    const-string v5, "windowBackgroundWhiteRedText2"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 384
    const-string v5, "TerminateAllSessions"

    const v7, 0x7f070534

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_2b

    .line 388
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_4e
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 389
    .local v2, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$1000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_75

    .line 390
    const-string v5, "ClearOtherSessionsHelp"

    const v6, 0x7f07017c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0200d6

    const-string v7, "windowBackgroundGrayShadow"

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 392
    :cond_75
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$1100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_2b

    .line 393
    const-string v5, "TerminateSessionInfo"

    const v6, 0x7f070535

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0200d7

    const-string v7, "windowBackgroundGrayShadow"

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 398
    .end local v2    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_98
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 399
    .local v0, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$1200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_b2

    .line 400
    const-string v5, "CurrentSession"

    const v6, 0x7f0701a9

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 401
    :cond_b2
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$1300(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_2b

    .line 402
    const-string v5, "OtherSessions"

    const v6, 0x7f0703e4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 406
    .end local v0    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_c8
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 407
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2b

    .line 408
    const/high16 v5, 0x435c0000    # 220.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    sub-int/2addr v5, v8

    const/high16 v8, 0x43000000    # 128.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v5, v8

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v5, v9, :cond_106

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_f3
    sub-int v5, v8, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 409
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2b

    :cond_106
    move v5, v6

    .line 408
    goto :goto_f3

    .line 417
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "sessionCell":Lorg/telegram/ui/Cells/SessionCell;
    :cond_108
    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I
    invoke-static {v8}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-object v8, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I
    invoke-static {v8}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq p2, v8, :cond_12b

    :goto_126
    invoke-virtual {v3, v5, v7}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V

    goto/16 :goto_2b

    :cond_12b
    move v7, v6

    goto :goto_126

    .line 379
    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_4e
        :pswitch_98
        :pswitch_c8
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 354
    packed-switch p2, :pswitch_data_4a

    .line 370
    new-instance v0, Lorg/telegram/ui/Cells/SessionCell;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SessionCell;-><init>(Landroid/content/Context;)V

    .line 371
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 374
    :goto_13
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 356
    .end local v0    # "view":Landroid/view/View;
    :pswitch_19
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 357
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 360
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2a
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 363
    .end local v0    # "view":Landroid/view/View;
    :pswitch_32
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 364
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 367
    .end local v0    # "view":Landroid/view/View;
    :pswitch_43
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->emptyLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 368
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 354
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2a
        :pswitch_32
        :pswitch_43
    .end packed-switch
.end method
