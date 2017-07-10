.class Lorg/telegram/ui/GroupCreateActivity$9;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 568
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 571
    instance-of v5, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-nez v5, :cond_8

    .line 609
    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object v1, p1

    .line 574
    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 575
    .local v1, "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 576
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_7

    .line 580
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v5

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "exists":Z
    if-eqz v2, :cond_72

    .line 581
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v5

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 582
    .local v3, "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 600
    :goto_3e
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # invokes: Lorg/telegram/ui/GroupCreateActivity;->updateHint()V
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$1700(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 601
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searching:Z
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$1900(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$2000(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v5

    if-eqz v5, :cond_111

    .line 602
    :cond_53
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 606
    :goto_5c
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 607
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 584
    .end local v3    # "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    :cond_72
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->maxCount:I
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$2400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v5

    if-eqz v5, :cond_8c

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->maxCount:I
    invoke-static {v8}, Lorg/telegram/ui/GroupCreateActivity;->access$2400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v8

    if-eq v5, v8, :cond_7

    .line 587
    :cond_8c
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->chatType:I
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$2500(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v5

    if-nez v5, :cond_e0

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    if-ne v5, v8, :cond_e0

    .line 588
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v5, "AppName"

    const v6, 0x7f070092

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 590
    const-string v5, "SoftUserLimitAlert"

    const v6, 0x7f070517

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 591
    const-string v5, "OK"

    const v6, 0x7f0703d4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 592
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/GroupCreateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7

    .line 595
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_e0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searching:Z
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$1900(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v5

    if-nez v5, :cond_10f

    move v5, v6

    :goto_ed
    invoke-virtual {v8, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 596
    new-instance v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 597
    .restart local v3    # "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 598
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$9;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/GroupCreateSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3e

    .end local v3    # "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    :cond_10f
    move v5, v7

    .line 595
    goto :goto_ed

    .line 604
    .restart local v3    # "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    :cond_111
    if-nez v2, :cond_114

    move v7, v6

    :cond_114
    invoke-virtual {v1, v7, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto/16 :goto_5c
.end method
