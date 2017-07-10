.class Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;
.super Ljava/lang/Object;
.source "DeleteContactActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 14
    .param p1, "var1"    # Landroid/text/Editable;

    .prologue
    .line 268
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v9

    if-nez v9, :cond_dc

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "var3":Z
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 273
    .local v1, "var2":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$200(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_148

    .line 274
    const-string v5, ""

    .line 279
    .local v5, "var6":Ljava/lang/String;
    :try_start_2d
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$200(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->beforeChangeIndex:I
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$300(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)I

    move-result v10

    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_40} :catch_dd

    move-result-object v3

    .line 285
    .local v3, "var4":Ljava/lang/String;
    move-object v5, v3

    .line 288
    .end local v3    # "var4":Ljava/lang/String;
    :goto_42
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_e5

    .line 289
    const/4 v6, 0x1

    .line 315
    .end local v5    # "var6":Ljava/lang/String;
    :goto_49
    if-eqz v6, :cond_dc

    .line 316
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "<"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .restart local v5    # "var6":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_14b

    .line 318
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v10, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z
    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$402(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 319
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v10, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z
    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$502(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 320
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    if-eqz v9, :cond_b9

    .line 321
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v10

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$900(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v9

    check-cast v9, Landroid/widget/ListAdapter;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$900(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Adapters/SearchAdapter;->notifyDataSetChanged()V

    .line 323
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_a5

    .line 324
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 327
    :cond_a5
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 328
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 331
    :cond_b9
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_d3

    .line 332
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, "NoResult"

    const v11, 0x7f070368

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_d3
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$900(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 353
    .end local v1    # "var2":I
    .end local v2    # "var3":Z
    .end local v5    # "var6":Ljava/lang/String;
    :cond_dc
    :goto_dc
    return-void

    .line 280
    .restart local v1    # "var2":I
    .restart local v2    # "var3":Z
    .restart local v5    # "var6":Ljava/lang/String;
    :catch_dd
    move-exception v4

    .line 281
    .local v4, "var5":Ljava/lang/Exception;
    const-string v9, "tmessages"

    invoke-static {v9, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 291
    .end local v4    # "var5":Ljava/lang/Exception;
    :cond_e5
    move v6, v2

    .line 292
    .local v6, "var7":I
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$400(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 293
    move v6, v2

    .line 294
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$500(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 295
    const/4 v6, 0x1

    .line 299
    .end local v6    # "var7":I
    :cond_f8
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 301
    .local v0, "var10":Landroid/text/Editable;
    const/4 v8, 0x0

    .local v8, "var9":I
    :goto_103
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$600(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_13d

    .line 302
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$600(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/ChipSpan;

    .line 303
    .local v7, "var8":Lorg/telegram/ui/Components/ChipSpan;
    invoke-interface {v0, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_13a

    .line 304
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$600(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$700(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/HashMap;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/Components/ChipSpan;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_13a
    add-int/lit8 v8, v8, 0x1

    goto :goto_103

    .line 309
    .end local v7    # "var8":Lorg/telegram/ui/Components/ChipSpan;
    :cond_13d
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/LetterSectionsListView;->invalidateViews()V

    goto/16 :goto_49

    .line 312
    .end local v0    # "var10":Landroid/text/Editable;
    .end local v5    # "var6":Ljava/lang/String;
    .end local v8    # "var9":I
    :cond_148
    const/4 v6, 0x1

    .local v6, "var7":Z
    goto/16 :goto_49

    .line 337
    .end local v6    # "var7":Z
    .restart local v5    # "var6":Ljava/lang/String;
    :cond_14b
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$900(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v10

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 338
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v10, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z
    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$402(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 339
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    const/4 v10, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z
    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$502(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z

    .line 340
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v10

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v9

    check-cast v9, Landroid/widget/ListAdapter;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 342
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_18d

    .line 343
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 346
    :cond_18d
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 347
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 348
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, "NoContacts"

    const v11, 0x7f070356

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_dc
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "var1"    # Ljava/lang/CharSequence;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->beforeChangeIndex:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$302(Lorg/telegram/ui/Telehgram/DeleteContactActivity;I)I

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    # setter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$202(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 361
    :cond_21
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "var1"    # Ljava/lang/CharSequence;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .prologue
    .line 364
    return-void
.end method
