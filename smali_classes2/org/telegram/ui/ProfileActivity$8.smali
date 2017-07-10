.class Lorg/telegram/ui/ProfileActivity$8;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 607
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 30
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    if-nez v20, :cond_d

    .line 805
    :cond_c
    :goto_c
    return-void

    .line 613
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_9f

    .line 614
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 615
    .local v7, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    if-eqz v20, :cond_81

    .line 616
    const-string v22, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v20

    const-wide/16 v24, 0x0

    cmp-long v20, v20, v24

    if-eqz v20, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v20

    :goto_4a
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 620
    :goto_51
    new-instance v14, Lorg/telegram/ui/MediaActivity;

    invoke-direct {v14, v7}, Lorg/telegram/ui/MediaActivity;-><init>(Landroid/os/Bundle;)V

    .line 621
    .local v14, "fragment":Lorg/telegram/ui/MediaActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/telegram/ui/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_c

    .line 616
    .end local v14    # "fragment":Lorg/telegram/ui/MediaActivity;
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    goto :goto_4a

    .line 618
    :cond_81
    const-string v20, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_51

    .line 623
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_c9

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    new-instance v21, Lorg/telegram/ui/CommonGroupsActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lorg/telegram/ui/CommonGroupsActivity;-><init>(I)V

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 625
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_10c

    .line 626
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 627
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v20, "chat_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v22

    const/16 v21, 0x20

    shr-long v22, v22, v21

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    new-instance v21, Lorg/telegram/ui/IdenticonActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lorg/telegram/ui/IdenticonActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 629
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_143

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$1100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 631
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_365

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_303

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v10

    .line 642
    .local v10, "did":J
    :goto_16d
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v9, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "NotificationsTurnOn"

    const v22, 0x7f0703d2

    .line 643
    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    const/16 v20, 0x1

    const-string v21, "MuteFor"

    const v22, 0x7f070338

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Hours"

    const/16 v26, 0x1

    .line 644
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    const/16 v20, 0x2

    const-string v21, "MuteFor"

    const v22, 0x7f070338

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Days"

    const/16 v26, 0x2

    .line 645
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    const/16 v20, 0x3

    const-string v21, "NotificationsCustomize"

    const v22, 0x7f0703be

    .line 646
    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    const/16 v20, 0x4

    const-string v21, "NotificationsTurnOff"

    const v22, 0x7f0703d1

    .line 647
    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v9, v20

    .line 650
    .local v9, "descriptions":[Ljava/lang/String;
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v15, v0, [I

    fill-array-data v15, :array_758

    .line 658
    .local v15, "icons":[I
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 659
    .local v17, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 661
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_202
    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_332

    .line 662
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 663
    .local v18, "textView":Landroid/widget/TextView;
    const-string v20, "dialogTextBlack"

    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    const/16 v20, 0x1

    const/high16 v21, 0x41800000    # 16.0f

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 665
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 666
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    aget v21, v15, v6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 668
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v20, Landroid/graphics/PorterDuffColorFilter;

    const-string v21, "dialogIcon"

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v21

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v20 .. v22}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 669
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 670
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 671
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    const/high16 v20, 0x41c00000    # 24.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    const/16 v21, 0x0

    const/high16 v22, 0x41c00000    # 24.0f

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 673
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 674
    const/16 v20, 0x13

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 675
    const/high16 v20, 0x41d00000    # 26.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 676
    aget-object v20, v9, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    const/16 v20, -0x1

    const/16 v21, 0x30

    const/16 v22, 0x33

    invoke-static/range {v20 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    new-instance v20, Lorg/telegram/ui/ProfileActivity$8$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v11}, Lorg/telegram/ui/ProfileActivity$8$1;-><init>(Lorg/telegram/ui/ProfileActivity$8;J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_202

    .line 636
    .end local v6    # "a":I
    .end local v9    # "descriptions":[Ljava/lang/String;
    .end local v10    # "did":J
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "icons":[I
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v18    # "textView":Landroid/widget/TextView;
    :cond_303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    if-eqz v20, :cond_31e

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v10, v0

    .restart local v10    # "did":J
    goto/16 :goto_16d

    .line 639
    .end local v10    # "did":J
    :cond_31e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v10, v0

    .restart local v10    # "did":J
    goto/16 :goto_16d

    .line 732
    .restart local v6    # "a":I
    .restart local v9    # "descriptions":[Ljava/lang/String;
    .restart local v15    # "icons":[I
    .restart local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_332
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 733
    .local v8, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v20, "Notifications"

    const v21, 0x7f0703bb

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 734
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 736
    .end local v6    # "a":I
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v9    # "descriptions":[Ljava/lang/String;
    .end local v10    # "did":J
    .end local v15    # "icons":[I
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_3dc

    .line 737
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 738
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v20, "AreYouSureSecretChat"

    const v21, 0x7f0700af

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 739
    const-string v20, "AppName"

    const v21, 0x7f070092

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 740
    const-string v20, "OK"

    const v21, 0x7f0703d4

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lorg/telegram/ui/ProfileActivity$8$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$8$2;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 747
    const-string v20, "Cancel"

    const v21, 0x7f0700fe

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 749
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-le v0, v1, :cond_4b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersEndRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ge v0, v1, :cond_4b3

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_482

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v22

    sub-int v22, p2, v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v19, v0

    .line 756
    .local v19, "user_id":I
    :goto_458
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 759
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 760
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v20, "user_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    new-instance v21, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 754
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v19    # "user_id":I
    :cond_482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v21

    sub-int v21, p2, v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v19, v0

    .restart local v19    # "user_id":I
    goto :goto_458

    .line 762
    .end local v19    # "user_id":I
    :cond_4b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_4ce

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # invokes: Lorg/telegram/ui/ProfileActivity;->openAddMember()V
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_c

    .line 764
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelNameRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_609

    .line 766
    :try_start_4de
    new-instance v16, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v16, "intent":Landroid/content/Intent;
    const-string v20, "text/plain"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5b2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_5b2

    .line 769
    const-string v20, "android.intent.extra.TEXT"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\nhttps://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    :goto_58a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "BotShare"

    const v22, 0x7f0700e1

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v21

    const/16 v22, 0x1f4

    invoke-virtual/range {v20 .. v22}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5aa
    .catch Ljava/lang/Exception; {:try_start_4de .. :try_end_5aa} :catch_5ac

    goto/16 :goto_c

    .line 774
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_5ac
    move-exception v13

    .line 775
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 771
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_5b2
    :try_start_5b2
    const-string v20, "android.intent.extra.TEXT"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\nhttps://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_608
    .catch Ljava/lang/Exception; {:try_start_5b2 .. :try_end_608} :catch_5ac

    goto :goto_58a

    .line 777
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_624

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # invokes: Lorg/telegram/ui/ProfileActivity;->leaveChatPressed()V
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_c

    .line 779
    :cond_624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_654

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_654

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->managementRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_6d1

    .line 780
    :cond_654
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 781
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v20, "chat_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_699

    .line 783
    const-string v20, "type"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    :cond_687
    :goto_687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    new-instance v21, Lorg/telegram/ui/ChannelUsersActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChannelUsersActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 784
    :cond_699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->managementRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_6b5

    .line 785
    const-string v20, "type"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_687

    .line 786
    :cond_6b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_687

    .line 787
    const-string v20, "type"

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_687

    .line 790
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_6d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertRow:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v20

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_748

    .line 791
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 792
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v20, "ConvertGroupAlert"

    const v21, 0x7f070194

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 793
    const-string v20, "ConvertGroupAlertWarning"

    const v21, 0x7f070195

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 794
    const-string v20, "OK"

    const v21, 0x7f0703d4

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lorg/telegram/ui/ProfileActivity$8$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$8$3;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 800
    const-string v20, "Cancel"

    const v21, 0x7f0700fe

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 803
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_748
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    # invokes: Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;I)Z

    goto/16 :goto_c

    .line 650
    nop

    :array_758
    .array-data 4
        0x7f020200
        0x7f0201fc
        0x7f0201fd
        0x7f0201fe
        0x7f0201ff
    .end array-data
.end method
