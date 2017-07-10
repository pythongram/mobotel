.class Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;
.super Ljava/lang/Object;
.source "DeleteContactActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/DeleteContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 20
    .param p1, "var1"    # Landroid/widget/AdapterView;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # J

    .prologue
    .line 406
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$400(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v11

    if-eqz v11, :cond_b9

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$500(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v11

    if-eqz v11, :cond_b9

    .line 407
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$900(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 418
    .local v1, "var10":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1e
    if-eqz v1, :cond_b8

    .line 419
    const/4 v8, 0x1

    .line 420
    .local v8, "var7":Z
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$700(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget v12, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ec

    .line 421
    const/4 v8, 0x0

    .line 424
    :try_start_34
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$700(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget v12, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/ChipSpan;

    .line 425
    .local v9, "var8":Lorg/telegram/ui/Components/ChipSpan;
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$700(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget v12, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 427
    .local v2, "var11":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 428
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$600(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 429
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$002(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 430
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 432
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$002(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_9a} :catch_e5

    .line 455
    .end local v2    # "var11":Landroid/text/SpannableStringBuilder;
    .end local v9    # "var8":Lorg/telegram/ui/Components/ChipSpan;
    :goto_9a
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$400(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v11

    if-nez v11, :cond_177

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$500(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v11

    if-nez v11, :cond_177

    .line 456
    move-object/from16 v0, p2

    instance-of v11, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v11, :cond_b8

    .line 457
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    .end local p2    # "var2":Landroid/view/View;
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 488
    .end local v1    # "var10":Lorg/telegram/tgnet/TLRPC$User;
    .end local v8    # "var7":Z
    :cond_b8
    :goto_b8
    return-void

    .line 409
    .restart local p2    # "var2":Landroid/view/View;
    :cond_b9
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getSectionForPosition(I)I

    move-result v7

    .line 410
    .local v7, "var6":I
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getPositionInSectionForPosition(I)I

    move-result p3

    .line 411
    if-ltz p3, :cond_b8

    if-ltz v7, :cond_b8

    .line 415
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v7, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .restart local v1    # "var10":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_1e

    .line 433
    .end local v7    # "var6":I
    .restart local v8    # "var7":Z
    :catch_e5
    move-exception v10

    .line 434
    .local v10, "var9":Ljava/lang/Exception;
    const-string v11, "tmessages"

    invoke-static {v11, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a

    .line 437
    .end local v10    # "var9":Ljava/lang/Exception;
    :cond_ec
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->maxCount:I
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1200(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)I

    move-result v11

    if-eqz v11, :cond_106

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$700(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    iget-object v12, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->maxCount:I
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1200(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)I

    move-result v12

    if-eq v11, v12, :cond_b8

    .line 441
    :cond_106
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->chatType:I
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1300(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)I

    move-result v11

    if-nez v11, :cond_15f

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$700(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v12, v12, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_15f

    .line 442
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    .local v5, "var14":Landroid/app/AlertDialog$Builder;
    const-string v11, "AppName"

    const v12, 0x7f070092

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 444
    const-string v11, "SoftUserLimitAlert"

    const v12, 0x7f070517

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 445
    const-string v11, "OK"

    const v12, 0x7f0703d4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    check-cast v11, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 446
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_b8

    .line 450
    .end local v5    # "var14":Landroid/app/AlertDialog$Builder;
    :cond_15f
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$002(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 451
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # invokes: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->createAndPutChipForUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    invoke-static {v11, v1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1400(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;

    move-result-object v11

    iget v12, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v12, v11, Lorg/telegram/ui/Components/ChipSpan;->uid:I

    .line 452
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$002(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    goto/16 :goto_9a

    .line 460
    :cond_177
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$002(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 461
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v11, ""

    invoke-direct {v3, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 462
    .local v3, "var12":Landroid/text/SpannableStringBuilder;
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$600(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 464
    .local v4, "var13":Ljava/util/Iterator;
    :goto_18e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1af

    .line 465
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/style/ImageSpan;

    .line 466
    .local v6, "var15":Landroid/text/style/ImageSpan;
    const-string v11, "<<"

    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 467
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v3, v6, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_18e

    .line 470
    .end local v6    # "var15":Landroid/text/style/ImageSpan;
    :cond_1af
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 472
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$002(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 473
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$900(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v12

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 474
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$402(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 475
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$502(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 476
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v12

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    check-cast v11, Landroid/widget/ListAdapter;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 477
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 478
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_20d

    .line 479
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 482
    :cond_20d
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 483
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 484
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/TextView;

    move-result-object v11

    const-string v12, "NoContacts"

    const v13, 0x7f070356

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8
.end method
