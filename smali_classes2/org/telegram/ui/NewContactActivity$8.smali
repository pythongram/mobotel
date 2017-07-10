.class Lorg/telegram/ui/NewContactActivity$8;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NewContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/NewContactActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 13
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 389
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->ignoreOnTextChange:Z
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$900(Lorg/telegram/ui/NewContactActivity;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 450
    :goto_8
    return-void

    .line 392
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/NewContactActivity;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 393
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, "text":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_59

    .line 396
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "ChooseCountry"

    const v10, 0x7f070175

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 398
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/NewContactActivity;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    .line 449
    :cond_52
    :goto_52
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/NewContactActivity;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    goto :goto_8

    .line 401
    :cond_59
    const/4 v4, 0x0

    .line 402
    .local v4, "ok":Z
    const/4 v7, 0x0

    .line 403
    .local v7, "textToSet":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_f0

    .line 404
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/NewContactActivity;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 405
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_69
    const/4 v8, 0x1

    if-lt v0, v8, :cond_b1

    .line 406
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "sub":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codesMap:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1200(Lorg/telegram/ui/NewContactActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_18d

    .line 409
    const/4 v4, 0x1

    .line 410
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 411
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v8

    move-object v6, v5

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .end local v1    # "country":Ljava/lang/String;
    .end local v5    # "sub":Ljava/lang/String;
    :cond_b1
    if-nez v4, :cond_f0

    .line 416
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/NewContactActivity;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 418
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .end local v0    # "a":I
    :cond_f0
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codesMap:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1200(Lorg/telegram/ui/NewContactActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    .restart local v1    # "country":Ljava/lang/String;
    if-eqz v1, :cond_1b6

    .line 423
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->countriesArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1300(Lorg/telegram/ui/NewContactActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 424
    .local v3, "index":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_193

    .line 425
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/NewContactActivity;->ignoreSelection:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1402(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 426
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->countriesArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1300(Lorg/telegram/ui/NewContactActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneFormatMap:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1500(Lorg/telegram/ui/NewContactActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    .local v2, "hint":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    if-eqz v2, :cond_191

    const/16 v8, 0x58

    const/16 v10, 0x2013

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    :goto_142
    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 429
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/NewContactActivity;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    .line 440
    .end local v2    # "hint":Ljava/lang/String;
    .end local v3    # "index":I
    :goto_14b
    if-nez v4, :cond_164

    .line 441
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 443
    :cond_164
    if-eqz v7, :cond_52

    .line 444
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 445
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    goto/16 :goto_52

    .line 405
    .restart local v0    # "a":I
    .restart local v5    # "sub":Ljava/lang/String;
    :cond_18d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_69

    .line 428
    .end local v0    # "a":I
    .end local v5    # "sub":Ljava/lang/String;
    .restart local v2    # "hint":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_191
    const/4 v8, 0x0

    goto :goto_142

    .line 431
    .end local v2    # "hint":Ljava/lang/String;
    :cond_193
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "WrongCountry"

    const v10, 0x7f0705b2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 433
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x2

    # setter for: Lorg/telegram/ui/NewContactActivity;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    goto :goto_14b

    .line 436
    .end local v3    # "index":I
    :cond_1b6
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "WrongCountry"

    const v10, 0x7f0705b2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 438
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x2

    # setter for: Lorg/telegram/ui/NewContactActivity;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    goto/16 :goto_14b
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 380
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 385
    return-void
.end method
