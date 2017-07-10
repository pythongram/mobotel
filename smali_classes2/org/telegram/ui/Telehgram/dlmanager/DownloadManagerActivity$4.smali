.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 529
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 20
    .param p1, "id"    # I

    .prologue
    .line 532
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_56

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 534
    const/4 v9, 0x1

    .local v9, "a":I
    :goto_14
    if-ltz v9, :cond_33

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 534
    add-int/lit8 v9, v9, -0x1

    goto :goto_14

    .line 538
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I
    invoke-static {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$902(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)I

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    .line 697
    .end local v9    # "a":I
    :cond_4d
    :goto_4d
    return-void

    .line 542
    :cond_4e
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->finishFragment()V

    goto :goto_4d

    .line 544
    :cond_56
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_ac

    .line 545
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .local v11, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AreYouSureToContinue"

    const v2, 0x7f070654

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 547
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 548
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;)V

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 568
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_4d

    .line 570
    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_ac
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_103

    .line 571
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    .restart local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AreYouSureToContinue"

    const v2, 0x7f070654

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 573
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 574
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$2;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;)V

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 588
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4d

    .line 590
    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_103
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_116

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    invoke-direct {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4d

    .line 592
    :cond_116
    const/16 v1, 0xa

    move/from16 v0, p1

    if-ne v0, v1, :cond_1dc

    .line 593
    const-string v16, ""

    .line 594
    .local v16, "str":Ljava/lang/String;
    const/4 v15, 0x0

    .line 595
    .local v15, "previousUid":I
    const/4 v9, 0x1

    .restart local v9    # "a":I
    :goto_120
    if-ltz v9, :cond_197

    .line 596
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 597
    .local v12, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 598
    const/4 v10, 0x0

    .local v10, "b":I
    :goto_139
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_194

    .line 599
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 600
    .local v13, "messageId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 601
    .local v14, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_170

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 604
    :cond_170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    sget-boolean v4, Lorg/telegram/ui/Telehgram/Turbo;->copySender:Z

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;
    invoke-static {v2, v14, v15, v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 605
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 598
    add-int/lit8 v10, v10, 0x1

    goto :goto_139

    .line 595
    .end local v13    # "messageId":Ljava/lang/Integer;
    .end local v14    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_194
    add-int/lit8 v9, v9, -0x1

    goto :goto_120

    .line 608
    .end local v10    # "b":I
    .end local v12    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_197
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a0

    .line 609
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    .line 611
    :cond_1a0
    const/4 v9, 0x1

    :goto_1a1
    if-ltz v9, :cond_1c0

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 611
    add-int/lit8 v9, v9, -0x1

    goto :goto_1a1

    .line 615
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I
    invoke-static {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$902(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)I

    .line 616
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    goto/16 :goto_4d

    .line 618
    .end local v9    # "a":I
    .end local v15    # "previousUid":I
    .end local v16    # "str":Ljava/lang/String;
    :cond_1dc
    const/16 v1, 0xd

    move/from16 v0, p1

    if-ne v0, v1, :cond_23e

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 622
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    .restart local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AreYouSureToContinue"

    const v2, 0x7f070654

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 624
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 625
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;)V

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 648
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4d

    .line 650
    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_23e
    const/16 v1, 0xb

    move/from16 v0, p1

    if-ne v0, v1, :cond_2d2

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v3, "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v9, 0x1

    .restart local v9    # "a":I
    :goto_254
    if-ltz v9, :cond_292

    .line 658
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 659
    .restart local v12    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 660
    const/4 v10, 0x0

    .restart local v10    # "b":I
    :goto_26d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_28f

    .line 661
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 662
    .restart local v13    # "messageId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 663
    .restart local v14    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v10, v10, 0x1

    goto :goto_26d

    .line 657
    .end local v13    # "messageId":Ljava/lang/Integer;
    .end local v14    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_28f
    add-int/lit8 v9, v9, -0x1

    goto :goto_254

    .line 666
    .end local v10    # "b":I
    .end local v12    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    move-object/from16 v17, v0

    new-instance v1, Lorg/telegram/ui/Telehgram/ShareAlert2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 668
    const/4 v9, 0x1

    :goto_2ac
    if-ltz v9, :cond_2be

    .line 669
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 668
    add-int/lit8 v9, v9, -0x1

    goto :goto_2ac

    .line 671
    :cond_2be
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    goto/16 :goto_4d

    .line 673
    .end local v3    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v9    # "a":I
    :cond_2d2
    const/16 v1, 0xc

    move/from16 v0, p1

    if-ne v0, v1, :cond_4d

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 679
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .restart local v3    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v9, 0x1

    .restart local v9    # "a":I
    :goto_2e8
    if-ltz v9, :cond_326

    .line 681
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    .restart local v12    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 683
    const/4 v10, 0x0

    .restart local v10    # "b":I
    :goto_301
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_323

    .line 684
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 685
    .restart local v13    # "messageId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 686
    .restart local v14    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v10, v10, 0x1

    goto :goto_301

    .line 680
    .end local v13    # "messageId":Ljava/lang/Integer;
    .end local v14    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_323
    add-int/lit8 v9, v9, -0x1

    goto :goto_2e8

    .line 689
    .end local v10    # "b":I
    .end local v12    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    move-object/from16 v17, v0

    new-instance v1, Lorg/telegram/ui/Telehgram/ShareAlert2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 691
    const/4 v9, 0x1

    :goto_340
    if-ltz v9, :cond_352

    .line 692
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 691
    add-int/lit8 v9, v9, -0x1

    goto :goto_340

    .line 694
    :cond_352
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 695
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    goto/16 :goto_4d
.end method
